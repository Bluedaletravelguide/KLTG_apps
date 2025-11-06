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

class ARGuidePage extends StatefulWidget {
  const ARGuidePage({super.key});
  @override
  State<ARGuidePage> createState() => _ARGuidePageState();
}

class _ARGuidePageState extends State<ARGuidePage> with WidgetsBindingObserver {
  CameraController? _cam;
  bool _camReady = false;

  Position? _pos;
  double _heading = 0; // degrees 0..360 (0 = North)
  double _fov = 60; // horizontal FOV assumption (deg), adjust to device

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
    final camStatus = await Geolocator.checkPermission();
    // location permission
    if (camStatus == LocationPermission.denied) {
      await Geolocator.requestPermission();
    }
    // camera handled by plugin when initializing; on Android 13+, add in manifest if needed
  }

  Future<void> _initLocation() async {
    final en = await Geolocator.isLocationServiceEnabled();
    if (!en) return;
    var perm = await Geolocator.checkPermission();
    if (perm == LocationPermission.denied)
      perm = await Geolocator.requestPermission();
    if (perm == LocationPermission.deniedForever ||
        perm == LocationPermission.denied) return;

    _pos = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
    Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.best, distanceFilter: 2),
    ).listen((p) => setState(() => _pos = p));
  }

  Future<void> _initHeading() async {
    FlutterCompass.events?.listen((event) {
      final h = event.heading;
      if (h == null) return;
      setState(() => _heading = (h + 360) % 360);
    });
  }

  Future<void> _initCamera() async {
    try {
      final cams = await availableCameras();
      final back = cams.firstWhere(
          (c) => c.lensDirection == CameraLensDirection.back,
          orElse: () => cams.first);
      final ctrl =
          CameraController(back, ResolutionPreset.high, enableAudio: false);
      await ctrl.initialize();
      setState(() {
        _cam = ctrl;
        _camReady = true;
      });
      // Rough FOV estimate (varies by phone; you can calibrate later)
      _fov = 60;
    } catch (_) {
      setState(() {
        _camReady = false;
      });
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
                            onTap: () => _showSheet(h.lm),
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
                                    ? 'Lat ${_pos!.latitude.toStringAsFixed(5)}, Lng ${_pos!.longitude.toStringAsFixed(5)}'
                                    : 'Loc…'),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }

  void _showSheet(Landmark lm) {
    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      builder: (_) => Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(lm.name,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
            const SizedBox(height: 8),
            Text(lm.blurb),
            const SizedBox(height: 12),
            Row(
              children: [
                FilledButton.icon(
                  onPressed: () => _openInMaps(lm),
                  icon: const Icon(Icons.map),
                  label: const Text('Open in Maps'),
                ),
                const SizedBox(width: 8),
                OutlinedButton.icon(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close),
                  label: const Text('Close'),
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

class _ARHit {
  final Landmark lm;
  final double distanceM;
  final double screenX;
  _ARHit({required this.lm, required this.distanceM, required this.screenX});
}

class _LandmarkChip extends StatelessWidget {
  final String name;
  final double distanceM;
  final VoidCallback onTap;
  const _LandmarkChip(
      {super.key,
      required this.name,
      required this.distanceM,
      required this.onTap});

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
              const Icon(Icons.place_outlined),
              const SizedBox(width: 8),
              Expanded(
                  child: Text(name,
                      style: const TextStyle(fontWeight: FontWeight.w600))),
              Text(dist, style: const TextStyle(color: Colors.black54)),
            ],
          ),
        ),
      ),
    );
  }
}

class _HudBadge extends StatelessWidget {
  final String text;
  const _HudBadge({required this.text, super.key});
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          color: Colors.black54, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        child: Text(text, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
