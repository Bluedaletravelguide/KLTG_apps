import 'package:flutter/material.dart';

class LandmarkOverlay extends StatelessWidget {
  const LandmarkOverlay({super.key});

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
