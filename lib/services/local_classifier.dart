import 'dart:math' as math;
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:image/image.dart' as img;
import 'package:tflite_flutter/tflite_flutter.dart';

class LocalClassifierResult {
  final String label;
  final double confidence; // 0..1
  LocalClassifierResult(this.label, this.confidence);
}

class LocalLandmarkClassifier {
  final String modelAssetPath;
  final String labelsAssetPath;

  Interpreter? _interpreter;
  late final List<String> _labels;
  late final List<int> _inputShape;
  late final List<int> _outputShape;
  bool _initialized = false;

  LocalLandmarkClassifier({
    this.modelAssetPath = 'assets/models/kl_landmarks.tflite',
    this.labelsAssetPath = 'assets/models/labels.txt',
  });

  Future<void> load() async {
    if (_initialized) return;

    _interpreter = await Interpreter.fromAsset(modelAssetPath,
        options: InterpreterOptions()..threads = 2);

    _labels = await _loadLabels(labelsAssetPath);

    _inputShape = _interpreter!.getInputTensor(0).shape; // [1, H, W, C]
    _outputShape = _interpreter!.getOutputTensor(0).shape; // [1, N]

    _initialized = true;
  }

  bool get isReady => _initialized;

  Future<void> close() async {
    _interpreter?.close();
    _interpreter = null;
    _initialized = false;
  }

  Future<List<String>> _loadLabels(String asset) async {
    final data = await rootBundle.loadString(asset);
    return data
        .split('\n')
        .map((s) => s.trim())
        .where((s) => s.isNotEmpty)
        .toList();
  }

  /// Provide a JPEG/PNG byte list, we'll decode & preprocess to model input.
  Future<LocalClassifierResult?> classify(Uint8List imageBytes) async {
    if (!_initialized) return null;

    final inputH = _inputShape[1];
    final inputW = _inputShape[2];

    final decoded = img.decodeImage(imageBytes);
    if (decoded == null) return null;

    // Center-crop to square then resize
    final minSide = math.min(decoded.width, decoded.height);
    final cropX = (decoded.width - minSide) ~/ 2;
    final cropY = (decoded.height - minSide) ~/ 2;
    final square = img.copyCrop(decoded,
        x: cropX, y: cropY, width: minSide, height: minSide);
    final resized = img.copyResize(square,
        width: inputW,
        height: inputH,
        interpolation: img.Interpolation.average);

    // Build float32 input [1, H, W, 3], normalized 0..1
    final input = List.generate(
        inputH,
        (y) => List.generate(inputW, (x) {
              final p = resized.getPixel(x, y);
              final r = p.r / 255.0;
              final g = p.g / 255.0;
              final b = p.b / 255.0;
              return [r, g, b];
            }));
    final inputTensor = [input];

    // Output [1, N]
    final outputLen = _outputShape[1];
    final output = List.generate(1, (_) => List.filled(outputLen, 0.0));

    _interpreter!.run(inputTensor, output);

    // Softmax might not be necessary if your model already outputs probabilities,
    // but applying a safe softmax here won't hurt.
    final scores = _softmax(List<double>.from(output[0]));
    var bestIdx = 0;
    var bestScore = -1.0;
    for (var i = 0; i < scores.length; i++) {
      if (scores[i] > bestScore) {
        bestScore = scores[i];
        bestIdx = i;
      }
    }

    final label = bestIdx < _labels.length ? _labels[bestIdx] : 'Unknown';
    return LocalClassifierResult(label, bestScore);
  }

  List<double> _softmax(List<double> logits) {
    final maxLogit = logits.reduce(math.max);
    final exps = logits.map((v) => math.exp(v - maxLogit)).toList();
    final sum = exps.fold<double>(0.0, (a, b) => a + b);
    return exps.map((e) => e / (sum == 0 ? 1.0 : sum)).toList();
  }
}

extension _ReshapeExt on List {
  List reshape(List<int> dims) {
    if (dims.length != 2) return this;
    final outer = dims[0], inner = dims[1];
    final flat = List.from(this);
    final out = <List>[];
    for (var i = 0; i < outer; i++) {
      out.add(flat.sublist(i * inner, (i + 1) * inner));
    }
    return out;
  }
}
