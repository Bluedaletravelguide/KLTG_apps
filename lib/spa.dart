import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:kltheguide/main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'generated/l10n.dart';

class Spa extends StatefulWidget {
  const Spa({super.key});

  @override
  _SpaState createState() => _SpaState();
}

class _SpaState extends State<Spa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          S.of(context).spaTime,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 71, 133),
        elevation: 0,
        actions: const <Widget>[
          AppBarMore(),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color.fromARGB(255, 0, 71, 133).withOpacity(0.05),
              Colors.white,
            ],
          ),
        ),
        child: MyList2(
          items: [
            ItemData(
              title: S.of(context).manjakaki,
              imageUrl: 'https://www.kltheguide.com.my/assets/img/spa/8.jpg',
              location: S.of(context).manjakakiLocation,
              hours: S.of(context).manjakakiHours,
            ),
            ItemData(
              title: S.of(context).urbanRetreatSpaKL,
              imageUrl:
                  'https://www.kltheguide.com.my/assets/img/spa/Picture5-1.jpg',
              location: S.of(context).urbanRetreatSpaKLLocation,
              hours: S.of(context).urbanRetreatSpaKLHours,
            ),
            ItemData(
              title: S.of(context).ozmosisSpa,
              imageUrl: 'https://www.kltheguide.com.my/assets/img/spa/1.jpg',
              location: S.of(context).ozmosisSpaLocation,
              hours: S.of(context).ozmosisSpaHours,
            ),
          ],
        ),
      ),
    );
  }
}

class MyList2 extends StatelessWidget {
  final List<ItemData> items;

  MyList2({required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.purple.withOpacity(0.15),
                  blurRadius: 15,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Card(
                elevation: 0,
                margin: EdgeInsets.zero,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image Section with Overlay
                    Stack(
                      children: [
                        CachedNetworkImage(
                          imageUrl: items[index].imageUrl,
                          fit: BoxFit.cover,
                          height: 220,
                          width: double.infinity,
                          placeholder: (context, url) => Container(
                            height: 220,
                            color: Colors.grey.shade200,
                            child: Center(
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Colors.purple.shade400,
                                ),
                              ),
                            ),
                          ),
                          errorWidget: (context, url, error) => Container(
                            height: 220,
                            color: Colors.grey.shade300,
                            child: const Icon(Icons.error, color: Colors.red),
                          ),
                        ),
                        // Gradient overlay
                        Positioned.fill(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.transparent,
                                  Colors.black.withOpacity(0.3),
                                ],
                              ),
                            ),
                          ),
                        ),
                        // Spa badge
                        Positioned(
                          top: 16,
                          right: 16,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.purple.shade400,
                                  Colors.pink.shade300,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.purple.withOpacity(0.3),
                                  blurRadius: 8,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  Icons.spa_rounded,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  'Spa ${index + 1}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Rating badge (optional - can be customized)
                        Positioned(
                          top: 16,
                          left: 16,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.star_rounded,
                                  color: Colors.amber.shade600,
                                  size: 16,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  '4.8',
                                  style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Content Section
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Title
                          Text(
                            items[index].title,
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade900,
                              letterSpacing: 0.5,
                            ),
                          ),
                          const SizedBox(height: 16.0),

                          // Location
                          _buildInfoRow(
                            icon: Icons.location_on_rounded,
                            iconColor: Colors.red.shade400,
                            label: S.of(context).location,
                            value: items[index].location,
                          ),
                          const SizedBox(height: 12.0),

                          // Operating Hours
                          _buildInfoRow(
                            icon: Icons.access_time_rounded,
                            iconColor: Colors.purple.shade400,
                            label: S.of(context).operatingHours,
                            value: items[index].hours,
                          ),
                          const SizedBox(height: 16.0),

                          // Features/Tags
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: [
                              _buildFeatureTag('Relaxing', Colors.blue.shade100,
                                  Colors.blue.shade700),
                              _buildFeatureTag('Professional',
                                  Colors.green.shade100, Colors.green.shade700),
                              _buildFeatureTag(
                                  'Premium',
                                  Colors.orange.shade100,
                                  Colors.orange.shade700),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildInfoRow({
    required IconData icon,
    required Color iconColor,
    required String label,
    required String value,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: iconColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            color: iconColor,
            size: 20,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade600,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey.shade800,
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFeatureTag(String label, Color bgColor, Color textColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: textColor,
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    var uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class ItemData {
  final String title;
  final String imageUrl;
  final String location;
  final String hours;

  ItemData({
    required this.title,
    required this.imageUrl,
    required this.location,
    required this.hours,
  });
}
