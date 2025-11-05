import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:kltheguide/main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'generated/l10n.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          S.of(context).placesToShop,
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
              title: S.of(context).avenueKShop,
              imageUrl:
                  'https://www.kltheguide.com.my/assets/img/place_to_shop/avenuek.jpg',
              location: S.of(context).avenueKShopLocation,
              hours: S.of(context).avenueKShopHours,
              website: S.of(context).avenueKShopWebsite,
            ),
            ItemData(
              title: S.of(context).sanctuaryMall,
              imageUrl:
                  'https://www.kltheguide.com.my/assets/img/place_to_shop/sanctuary.jpg',
              location: S.of(context).sanctuaryMallLocation,
              hours: S.of(context).sanctuaryMallHours,
              website: S.of(context).sanctuaryMallWebsite,
            ),
            ItemData(
              title: S.of(context).lincKL,
              imageUrl:
                  'https://www.kltheguide.com.my/assets/img/place_to_shop/linc.jpeg',
              location: S.of(context).lincKLLocation,
              hours: S.of(context).lincKLHours,
              website: S.of(context).lincKLWebsite,
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
                  color: Colors.black.withOpacity(0.1),
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
                                  const Color.fromARGB(255, 0, 71, 133),
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
                        // Shop badge
                        Positioned(
                          top: 16,
                          right: 16,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 0, 71, 133),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 8,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  Icons.shopping_bag_rounded,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  'Shop ${index + 1}',
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
                            iconColor: Colors.red,
                            label: S.of(context).location,
                            value: items[index].location,
                          ),
                          const SizedBox(height: 12.0),

                          // Operating Hours
                          _buildInfoRow(
                            icon: Icons.access_time_rounded,
                            iconColor: Colors.blue,
                            label: S.of(context).operatingHours,
                            value: items[index].hours,
                          ),
                          const SizedBox(height: 16.0),

                          // Website Button
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () => _launchURL(items[index].website),
                              borderRadius: BorderRadius.circular(12),
                              child: Container(
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 14,
                                  horizontal: 16,
                                ),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      const Color.fromARGB(255, 0, 71, 133),
                                      const Color.fromARGB(255, 0, 100, 180),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          const Color.fromARGB(255, 0, 71, 133)
                                              .withOpacity(0.3),
                                      blurRadius: 8,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.language_rounded,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      S.of(context).website,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    const Icon(
                                      Icons.arrow_forward_rounded,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ),
                            ),
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
  final String website;

  ItemData({
    required this.title,
    required this.imageUrl,
    required this.location,
    required this.hours,
    required this.website,
  });
}
