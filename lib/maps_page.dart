import 'package:flutter/material.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({super.key});

  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  final _transformCtrl = TransformationController();

  static const String assetPath = 'assets/images/map.jpg';

  @override
  void dispose() {
    _transformCtrl.dispose();
    super.dispose();
  }

  void _resetZoom() {
    setState(() {
      _transformCtrl.value = Matrix4.identity();
    });
  }

  void _zoomIn() {
    final currentScale = _transformCtrl.value.getMaxScaleOnAxis();
    if (currentScale < 6.0) {
      final newScale = (currentScale * 1.5).clamp(0.5, 6.0);
      _transformCtrl.value = Matrix4.identity()..scale(newScale);
    }
  }

  void _zoomOut() {
    final currentScale = _transformCtrl.value.getMaxScaleOnAxis();
    if (currentScale > 0.5) {
      final newScale = (currentScale / 1.5).clamp(0.5, 6.0);
      _transformCtrl.value = Matrix4.identity()..scale(newScale);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header section
          Container(
            width: double.infinity,
            color: Colors.white,
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
            child: const Text(
              'Maps',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
          ),

          // Map section
          Expanded(
            child: Container(
              color: Colors.grey[100],
              child: Stack(
                children: [
                  // Interactive map image
                  InteractiveViewer(
                    transformationController: _transformCtrl,
                    minScale: 0.5,
                    maxScale: 6.0,
                    boundaryMargin: const EdgeInsets.all(80),
                    child: Center(
                      child: Container(
                        margin: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 10,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            assetPath,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Zoom controls - bottom right
                  Positioned(
                    right: 16,
                    bottom: 16,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: _zoomIn,
                            tooltip: 'Zoom In',
                            color: const Color(0xFF1565C0),
                          ),
                          Container(
                            height: 1,
                            width: 40,
                            color: Colors.grey[300],
                          ),
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: _zoomOut,
                            tooltip: 'Zoom Out',
                            color: const Color(0xFF1565C0),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Reset button - bottom center
                  Positioned(
                    bottom: 16,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Material(
                        elevation: 4,
                        borderRadius: BorderRadius.circular(24),
                        child: InkWell(
                          onTap: _resetZoom,
                          borderRadius: BorderRadius.circular(24),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.my_location,
                                  size: 18,
                                  color: Colors.grey[700],
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  'Reset View',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}