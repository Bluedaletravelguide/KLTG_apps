import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import '../services/local_classifier.dart';
import '../services/landmark_matcher.dart';
import '../widgets/landmark_overlay.dart';

class CameraScannerPage extends StatefulWidget {
  const CameraScannerPage({super.key, required this.classifier});
  final LocalLandmarkClassifier classifier;

  @override
  State<CameraScannerPage> createState() => _CameraScannerPageState();
}

class _CameraScannerPageState extends State<CameraScannerPage> with WidgetsBindingObserver {
  CameraController? _controller;
  List<CameraDescription>? _cameras;

  Timer? _timer;
  bool _isProcessing = false;

  final _matcher = LandmarkMatcher();
  MatchedLandmark? _current;

  static const _scanInterval = Duration(seconds: 3);
  static const double _minConfidenceToShow = 0.55;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _init();
  }

  Future<void> _init() async {
    await widget.classifier.load();
    await _initCamera();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _timer?.cancel();
    _controller?.dispose();
    widget.classifier.close();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final c = _controller;
    if (c == null || !c.value.isInitialized) return;
    if (state == AppLifecycleState.inactive) {
      c.dispose();
    } else if (state == AppLifecycleState.resumed) {
      _initCamera();
    }
  }

  Future<void> _initCamera() async {
    try {
      _cameras = await availableCameras();
      final back = _cameras!.firstWhere(
            (x) => x.lensDirection == CameraLensDirection.back,
        orElse: () => _cameras!.first,
      );

      _controller = CameraController(
        back,
        ResolutionPreset.medium,
        enableAudio: false,
        imageFormatGroup: Platform.isAndroid ? ImageFormatGroup.jpeg : ImageFormatGroup.bgra8888,
      );
      await _controller!.initialize();
      if (!mounted) return;

      setState(() {});
      _startLoop();
    } catch (e) {
      debugPrint('Camera init error: $e');
    }
  }

  void _startLoop() {
    _timer?.cancel();
    _timer = Timer.periodic(_scanInterval, (_) => _scanOnce());
  }

  Future<void> _scanOnce() async {
    final c = _controller;
    if (c == null || !c.value.isInitialized) return;
    if (_isProcessing) return;

    _isProcessing = true;
    try {
      final file = await c.takePicture();
      final bytes = await File(file.path).readAsBytes();
      await _process(bytes);
    } catch (e) {
      debugPrint('Scan error: $e');
    } finally {
      _isProcessing = false;
    }
  }

  Future<void> _process(Uint8List bytes) async {
    if (!widget.classifier.isReady) return;
    final res = await widget.classifier.classify(bytes);
    if (res == null) {
      if (mounted) setState(() => _current = null);
      return;
    }

    if (res.confidence < _minConfidenceToShow) {
      if (mounted) setState(() => _current = null);
      return;
    }

    final match = _matcher.match(res.label, res.confidence);
    if (mounted) setState(() => _current = match);
  }

  @override
  Widget build(BuildContext context) {
    final c = _controller;
    return Scaffold(
      backgroundColor: Colors.black,
      body: c == null || !c.value.isInitialized
          ? const Center(child: CircularProgressIndicator())
          : Stack(
        fit: StackFit.expand,
        children: [
          CameraPreview(c),
          const _TopShade(),
          LandmarkOverlay(match: _current),
        ],
      ),
    );
  }
}

class _TopShade extends StatelessWidget {
  const _TopShade();
  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            colors: [Colors.black54, Colors.transparent],
          ),
        ),
      ),
    );
  }
}
