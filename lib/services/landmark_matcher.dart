// lib/services/landmark_matcher.dart
import '../data/landmarks.dart';

class MatchedLandmark {
  final Landmark entry;
  final String detectedLabel;
  final double confidence;
  const MatchedLandmark({
    required this.entry,
    required this.detectedLabel,
    required this.confidence,
  });
}

class LandmarkMatcher {
  const LandmarkMatcher();

  MatchedLandmark? match(String? detectedLabel, {double confidence = 0.0}) {
    final dn = detectedLabel?.toLowerCase().trim();
    if (dn == null || dn.isEmpty) return null;

    for (final e in landmarks) {
      final names = <String>{
        e.name.toLowerCase(),
        ...e.aliases.map((a) => a.toLowerCase())
      };
      for (final a in names) {
        if (a == dn || a.contains(dn) || dn.contains(a)) {
          return MatchedLandmark(
            entry: e,
            detectedLabel: detectedLabel!,
            confidence: confidence,
          );
        }
      }
    }
    return null;
  }
}
