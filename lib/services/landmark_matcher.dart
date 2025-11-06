import '../data/landmarks.dart';

class MatchedLandmark {
  final LandmarkEntry entry;
  final String detectedLabel;
  final double confidence;

  MatchedLandmark({
    required this.entry,
    required this.detectedLabel,
    required this.confidence,
  });
}

class LandmarkMatcher {
  // Simple robust matching:
  // 1) exact (case-insensitive),
  // 2) contains / alias map (add your synonyms here).
  final Map<String, List<String>> _aliases = {
    'Petronas Twin Towers': ['petronas', 'klcc', 'petronas towers'],
    'KL Tower': ['menara kl', 'menara kuala lumpur', 'kl menara'],
    'Merdeka 118': ['pnb118', 'merdeka tower', 'warisan merdeka', '118'],
  };

  MatchedLandmark? match(String detectedLabel, double confidence) {
    final dn = detectedLabel.trim().toLowerCase();

    // exact
    for (final e in kLocalLandmarks) {
      if (e.name.toLowerCase() == dn) {
        return MatchedLandmark(entry: e, detectedLabel: detectedLabel, confidence: confidence);
      }
    }

    // alias/contains
    for (final e in kLocalLandmarks) {
      final canonical = e.name;
      final aliases = _aliases[canonical] ?? const [];
      final all = [canonical, ...aliases].map((s) => s.toLowerCase());
      for (final a in all) {
        if (a == dn || a.contains(dn) || dn.contains(a)) {
          return MatchedLandmark(entry: e, detectedLabel: detectedLabel, confidence: confidence);
        }
      }
    }

    return null;
  }
}
