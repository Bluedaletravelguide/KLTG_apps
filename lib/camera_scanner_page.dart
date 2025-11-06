import 'dart:math' as math;
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:url_launcher/url_launcher.dart';
import 'data/landmarks.dart';

// ===== helpers: geo bearing/distance =====
double _degToRad(double d) => d * math.pi / 180.0;
double _radToDeg(double r) => r * 180.0 / math.pi;

double haversineMeters(double lat1, double lon1, double lat2, double lon2) {
  const R = 6371000.0;
  final dLat = _degToRad(lat2 - lat1);
  final dLon = _degToRad(lon2 - lon1);
  final a = math.sin(dLat / 2) * math.sin(dLat / 2) +
      math.cos(_degToRad(lat1)) *
          math.cos(_degToRad(lat2)) *
          math.sin(dLon / 2) *
          math.sin(dLon / 2);
  final c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));
  return R * c;
}

double initialBearing(double lat1, double lon1, double lat2, double lon2) {
  final phi1 = _degToRad(lat1);
  final phi2 = _degToRad(lat2);
  final lambda1 = _degToRad(lon1);
  final lambda2 = _degToRad(lon2);

  final y = math.sin(lambda2 - lambda1) * math.cos(phi2);
  final x = math.cos(phi1) * math.sin(phi2) -
      math.sin(phi1) * math.cos(phi2) * math.cos(lambda2 - lambda1);
  final theta = math.atan2(y, x);
  final brng = (_radToDeg(theta) + 360.0) % 360.0;
  return brng;
}

class CameraScannerPage extends StatefulWidget {
  const CameraScannerPage({super.key});
  @override
  State<CameraScannerPage> createState() => _CameraScannerPageState();
}

class _CameraScannerPageState extends State<CameraScannerPage>
    with WidgetsBindingObserver {
  CameraController? _cam;
  bool _camReady = false;

  Position? _pos;
  double _heading = 0; // degrees 0..360 (0 = North)
  double _fov = 60; // horizontal FOV assumption (deg), adjust to device

  bool _isBusy = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _init();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _cam?.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!mounted || _cam == null || !_cam!.value.isInitialized) return;
    if (state == AppLifecycleState.inactive) {
      _cam?.dispose();
    } else if (state == AppLifecycleState.resumed) {
      _initCamera();
    }
  }

  Future<void> _init() async {
    await _ensurePerms();
    await _initLocation();
    await _initHeading();
    await _initCamera();
  }

  Future<void> _ensurePerms() async {
    // location permission
    final locStatus = await Geolocator.checkPermission();
    if (locStatus == LocationPermission.denied) {
      await Geolocator.requestPermission();
    }
    // camera handled by plugin when initializing
  }

  Future<void> _initLocation() async {
    final en = await Geolocator.isLocationServiceEnabled();
    if (!en) return;
    var perm = await Geolocator.checkPermission();
    if (perm == LocationPermission.denied) {
      perm = await Geolocator.requestPermission();
    }
    if (perm == LocationPermission.deniedForever ||
        perm == LocationPermission.denied) return;

    _pos = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
    Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.best, distanceFilter: 2),
    ).listen((p) {
      if (mounted) {
        setState(() => _pos = p);
      }
    });
  }

  Future<void> _initHeading() async {
    FlutterCompass.events?.listen((event) {
      final h = event.heading;
      if (h == null) return;
      if (mounted) {
        setState(() => _heading = (h + 360) % 360);
      }
    });
  }

  Future<void> _initCamera() async {
    try {
      final cams = await availableCameras();
      if (cams.isEmpty) {
        if (mounted) {
          setState(() => _camReady = false);
        }
        return;
      }
      final back = cams.firstWhere(
          (c) => c.lensDirection == CameraLensDirection.back,
          orElse: () => cams.first);
      final ctrl =
          CameraController(back, ResolutionPreset.high, enableAudio: false);
      await ctrl.initialize();
      if (mounted) {
        setState(() {
          _cam = ctrl;
          _camReady = true;
        });
      }
      // Rough FOV estimate (varies by phone; you can calibrate later)
      _fov = 60;
    } catch (e) {
      if (mounted) {
        setState(() {
          _camReady = false;
        });
      }
    }
  }

  // Choose landmarks within distance & in front (heading cone)
  List<_ARHit> _visibleLandmarks(Size size) {
    if (_pos == null) return [];
    const maxDistM = 1500.0; // 1.5 km
    const halfCone = 15.0; // ±15° around center heading
    final w = size.width;

    List<_ARHit> hits = [];
    for (final lm in landmarks) {
      final d =
          haversineMeters(_pos!.latitude, _pos!.longitude, lm.lat, lm.lng);
      if (d > maxDistM) continue;

      final bearing =
          initialBearing(_pos!.latitude, _pos!.longitude, lm.lat, lm.lng);
      // angular difference (wrap-around safe)
      var diff = (bearing - _heading + 540) % 360 - 180;
      if (diff.abs() <= halfCone) {
        // map bearing diff to screen X (center = 0 => mid screen)
        final x = (diff / (_fov / 2)) * (w / 2) + (w / 2);
        hits.add(_ARHit(lm: lm, distanceM: d, screenX: x));
      }
    }
    // nearest first
    hits.sort((a, b) => a.distanceM.compareTo(b.distanceM));
    return hits;
  }

  void _openInMaps(Landmark lm) async {
    final url = Uri.parse(
        'https://www.google.com/maps/search/?api=1&query=${lm.lat},${lm.lng}');
    await launchUrl(url, mode: LaunchMode.externalApplication);
  }

  // GPS PROXIMITY DETECTION - Show ALL landmarks within 2km
  Future<void> _scanNearbyLandmark() async {
    if (!mounted || _pos == null) {
      _toast('Waiting for GPS location...');
      return;
    }

    setState(() => _isBusy = true);

    try {
      // Detection radius: 2 kilometers
      const detectionRadius = 2000.0;

      // Find all landmarks within radius
      List<_NearbyLandmark> nearbyLandmarks = [];

      for (final lm in landmarks) {
        final distance =
            haversineMeters(_pos!.latitude, _pos!.longitude, lm.lat, lm.lng);

        if (distance <= detectionRadius) {
          nearbyLandmarks
              .add(_NearbyLandmark(landmark: lm, distance: distance));
        }
      }

      if (nearbyLandmarks.isEmpty) {
        _toast(
            'No landmarks found within ${(detectionRadius / 1000).toStringAsFixed(1)}km');
      } else {
        // Sort by distance (nearest first)
        nearbyLandmarks.sort((a, b) => a.distance.compareTo(b.distance));

        // Show list of all nearby landmarks
        _showNearbyList(nearbyLandmarks);
      }
    } catch (e) {
      _toast('Error: $e');
    } finally {
      if (mounted) setState(() => _isBusy = false);
    }
  }

  void _toast(String msg) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _camReady && _cam != null
          ? LayoutBuilder(
              builder: (_, constraints) {
                final hits = _visibleLandmarks(
                    Size(constraints.maxWidth, constraints.maxHeight));
                return Stack(
                  fit: StackFit.expand,
                  children: [
                    CameraPreview(_cam!),

                    // Overlay labels
                    ...hits.map((h) => Positioned(
                          bottom: 120, // float above bottom a bit
                          left: (h.screenX - 120)
                              .clamp(8, constraints.maxWidth - 240),
                          width: 240,
                          child: _LandmarkChip(
                            name: h.lm.name,
                            distanceM: h.distanceM,
                            onTap: () =>
                                _showSheet(h.lm, distance: h.distanceM),
                          ),
                        )),
                    // HUD: heading + status
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _HudBadge(
                                text:
                                    'Heading ${_heading.toStringAsFixed(0)}°'),
                            _HudBadge(
                                text: _pos != null
                                    ? 'GPS: ${_pos!.latitude.toStringAsFixed(4)}, ${_pos!.longitude.toStringAsFixed(4)}'
                                    : 'GPS: Loading...'),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            )
          : const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 16),
                  Text('Initializing camera and GPS...'),
                ],
              ),
            ),
      floatingActionButton: _camReady && _cam != null
          ? FloatingActionButton.extended(
              onPressed: _isBusy ? null : _scanNearbyLandmark,
              icon: _isBusy
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white,
                      ),
                    )
                  : const Icon(Icons.radar),
              label: Text(_isBusy ? 'Scanning...' : 'Scan Nearby'),
            )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  // NEW: Show list of all nearby landmarks
  void _showNearbyList(List<_NearbyLandmark> nearbyLandmarks) {
    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.6,
        minChildSize: 0.4,
        maxChildSize: 0.9,
        expand: false,
        builder: (context, scrollController) => Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
              child: Row(
                children: [
                  const Icon(Icons.place, color: Colors.blue),
                  const SizedBox(width: 8),
                  Text(
                    'Nearby Landmarks (${nearbyLandmarks.length})',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            Expanded(
              child: ListView.builder(
                controller: scrollController,
                padding: const EdgeInsets.symmetric(vertical: 8),
                itemCount: nearbyLandmarks.length,
                itemBuilder: (context, index) {
                  final item = nearbyLandmarks[index];
                  return _NearbyLandmarkTile(
                    landmark: item.landmark,
                    distance: item.distance,
                    rank: index + 1,
                    onTap: () {
                      Navigator.pop(context);
                      _showSheet(item.landmark, distance: item.distance);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Detail sheet for single landmark
  void _showSheet(Landmark lm, {double? distance}) {
    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      builder: (context) => Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    lm.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                if (distance != null)
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      distance >= 1000
                          ? '${(distance / 1000).toStringAsFixed(1)} km'
                          : '${distance.toStringAsFixed(0)} m away',
                      style: TextStyle(
                        color: Colors.green.shade900,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              lm.blurb,
              style: const TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: FilledButton.icon(
                    onPressed: () => _openInMaps(lm),
                    icon: const Icon(Icons.map),
                    label: const Text('Open in Maps'),
                  ),
                ),
                const SizedBox(width: 8),
                OutlinedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Icon(Icons.close),
                ),
              ],
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

// ===== DATA MODELS =====

class _ARHit {
  final Landmark lm;
  final double distanceM;
  final double screenX;
  _ARHit({required this.lm, required this.distanceM, required this.screenX});
}

class _NearbyLandmark {
  final Landmark landmark;
  final double distance;
  _NearbyLandmark({required this.landmark, required this.distance});
}

// ===== UI COMPONENTS =====

class _NearbyLandmarkTile extends StatelessWidget {
  final Landmark landmark;
  final double distance;
  final int rank;
  final VoidCallback onTap;

  const _NearbyLandmarkTile({
    required this.landmark,
    required this.distance,
    required this.rank,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final distText = distance >= 1000
        ? '${(distance / 1000).toStringAsFixed(1)} km'
        : '${distance.toStringAsFixed(0)} m';

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      elevation: 1,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: rank <= 3 ? Colors.blue : Colors.grey.shade300,
          child: Text(
            '$rank',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: rank <= 3 ? Colors.white : Colors.black87,
            ),
          ),
        ),
        title: Text(
          landmark.name,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          landmark.blurb,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 13),
        ),
        trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          decoration: BoxDecoration(
            color: distance <= 500 ? Colors.green.shade50 : Colors.blue.shade50,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: distance <= 500
                  ? Colors.green.shade200
                  : Colors.blue.shade200,
            ),
          ),
          child: Text(
            distText,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 13,
              color: distance <= 500
                  ? Colors.green.shade900
                  : Colors.blue.shade900,
            ),
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}

class _LandmarkChip extends StatelessWidget {
  final String name;
  final double distanceM;
  final VoidCallback onTap;
  const _LandmarkChip({
    required this.name,
    required this.distanceM,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final dist = distanceM >= 1000
        ? '${(distanceM / 1000).toStringAsFixed(1)} km'
        : '${distanceM.toStringAsFixed(0)} m';
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(14),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Row(
            children: [
              const Icon(Icons.place_outlined, size: 20),
              const SizedBox(width: 8),
              Expanded(
                  child: Text(name,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 14))),
              Text(dist,
                  style: const TextStyle(color: Colors.black54, fontSize: 12)),
            ],
          ),
        ),
      ),
    );
  }
}

class _HudBadge extends StatelessWidget {
  final String text;
  const _HudBadge({required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black54, borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child:
          Text(text, style: const TextStyle(color: Colors.white, fontSize: 12)),
    );
  }
}
