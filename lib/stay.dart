import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:kltheguide/main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'generated/l10n.dart';

class Stay extends StatefulWidget {
  const Stay({super.key});

  @override
  _StayState createState() => _StayState();
}

class _StayState extends State<Stay> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        title: Text(
          S.of(context).placesToStay,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 71, 133),
        actions: const <Widget>[
          AppBarMore(),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Container(
            color: const Color.fromARGB(255, 0, 71, 133),
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              labelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              unselectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
              tabs: [
                Tab(text: S.of(context).topPlacesToStay),
                Tab(text: S.of(context).hotels),
                Tab(text: S.of(context).budgetHotels),
                Tab(text: S.of(context).backpackersLodge),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.grey[50]!,
              Colors.white,
            ],
          ),
        ),
        child: TabBarView(
          controller: _tabController,
          children: [
            MyList2(
              items: [
                ItemData(
                  title: S.of(context).bukitBintang,
                  imageUrl:
                      'https://www.kltheguide.com.my/assets/img/accommodation/top/1024px-Bukit_Bintang_intersection.jpg',
                  description: S.of(context).bukitBintangDescription,
                  address: '',
                  location: 'https://maps.app.goo.gl/k87vsCoKXVFHZyfW9',
                  contact: '',
                  website: '',
                ),
                ItemData(
                  title: S.of(context).klcc,
                  imageUrl:
                      'https://www.kltheguide.com.my/assets/img/accommodation/top/kong-kuala-2937763_1280.jpg',
                  description: S.of(context).klccDescription,
                  address: '',
                  location: 'https://maps.app.goo.gl/i3dLezxAhc9S8bS77',
                  contact: '',
                  website: '',
                ),
                ItemData(
                  title: S.of(context).bangsarSouth,
                  imageUrl:
                      'https://www.kltheguide.com.my/assets/img/accommodation/top/bangsarsouth-5321307_1280.jpg',
                  description: S.of(context).bangsarSouthDescription,
                  address: '',
                  location: 'https://maps.app.goo.gl/EKJTaVCAnJw1fF4V6',
                  contact: '',
                  website: '',
                ),
              ],
            ),
            MyList2(
              items: [
                ItemData(
                  title: S.of(context).mercureKL,
                  imageUrl:
                      'https://www.kltheguide.com.my/assets/img/accommodation/h/mercure.jpg',
                  description: '',
                  address:
                      'Jalan Kontraktor U1/14, Seksyen U1, 40150 Shah Alam, Selangor',
                  location: 'https://maps.app.goo.gl/9VFWM6zzMLhUBNXr9',
                  contact: S.of(context).mercureKLContact,
                  website: '',
                ),
                ItemData(
                  title: S.of(context).ritz_carlton,
                  imageUrl:
                      'https://www.kltheguide.com.my/assets/img/accommodation/h/ritz-carlton.jpg',
                  description: S.of(context).ritz_description,
                  address:
                      '168, Jln Imbi, Bukit Bintang, 55100 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur',
                  location: 'https://maps.app.goo.gl/BSxbdTf4GybJ5XeD7',
                  contact: S.of(context).ritz_contact,
                  website: S.of(context).ritz_website,
                ),
                ItemData(
                  title: S.of(context).ansa_hotel,
                  imageUrl:
                      'https://www.kltheguide.com.my/assets/img/accommodation/h/ansa.jpg',
                  description: S.of(context).ansa_description,
                  address:
                      '101, Jln Bukit Bintang, Bukit Bintang, 55100 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur',
                  location: 'https://maps.app.goo.gl/FmoJ8AogLGyPuiS88',
                  contact: S.of(context).ansa_contact,
                  website: S.of(context).ansa_website,
                ),
                ItemData(
                  title: S.of(context).royale_chulan,
                  imageUrl:
                      'https://www.kltheguide.com.my/assets/img/accommodation/h/1.jpg',
                  description: S.of(context).chulan_description,
                  address:
                      '5, Jalan Conlay, Kuala Lumpur, 50450 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur',
                  location: 'https://maps.app.goo.gl/oBNP96QsVrYcfDqn9',
                  contact: S.of(context).chulan_contact,
                  website: S.of(context).chulan_website,
                ),
              ],
            ),
            MyList2(
              items: [
                ItemData(
                  title: S.of(context).grandCampbellHotel,
                  imageUrl:
                      'https://www.kltheguide.com.my/assets/img/accommodation/bh/campbell.jpg',
                  description: '',
                  address:
                      'Ground Campbell Complex, 98, Jalan Dang Wangi, 50100 Kuala Lumpur',
                  location: 'https://maps.app.goo.gl/zYWR3Z1DHsGR2iga7',
                  contact: S.of(context).grandCampbellHotelContact,
                  website: '',
                ),
                ItemData(
                  title: S.of(context).miles_hotel,
                  imageUrl:
                      'https://www.kltheguide.com.my/assets/img/accommodation/bh/1000milesH.jpg',
                  description: S.of(context).hotel_description,
                  address:
                      '17 & 19, Jalan Tun H S Lee, City Centre, 50000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur',
                  location: 'https://maps.app.goo.gl/EekrrWWjGxhCysKN6',
                  contact: S.of(context).hotel_contact,
                  website: S.of(context).hotel_website,
                ),
                ItemData(
                  title: S.of(context).ymca_hostel,
                  imageUrl:
                      'https://www.kltheguide.com.my/assets/img/accommodation/bh/ymca.jpg',
                  description: S.of(context).ymca_description,
                  address:
                      '95, Jalan Padang Belia, Brickfields, 50470 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur',
                  location: 'https://maps.app.goo.gl/RjJZew8T2KFq2nuv9',
                  contact: S.of(context).ymca_contact,
                  website: S.of(context).ymca_website,
                ),
              ],
            ),
            MyList2(
              items: [
                ItemData(
                  title: S.of(context).leoBackpackers,
                  imageUrl:
                      'https://www.kltheguide.com.my/assets/img/accommodation/bks/leo.jpg',
                  description: '',
                  address:
                      'Jalan Hang Kasturi, City Centre, 50000 Kuala Lumpur',
                  location: 'https://maps.app.goo.gl/Rkgm5YZUP2hErhDC7',
                  contact: S.of(context).leoBackpackersContact,
                  website: '',
                ),
                ItemData(
                  title: S.of(context).pods_hostel,
                  imageUrl:
                      'https://www.kltheguide.com.my/assets/img/accommodation/bks/pod.jpg',
                  description: S.of(context).pods_description,
                  address:
                      'G-6, 30, Jalan Thambipillay, Brickfields, 50470 Kuala Lumpur',
                  location: 'https://maps.app.goo.gl/Ly9uK9Tarp1Y4oVx5',
                  contact: S.of(context).pods_contact,
                  website: S.of(context).pods_website,
                ),
                ItemData(
                  title: S.of(context).bunk_bilik,
                  imageUrl:
                      'https://www.kltheguide.com.my/assets/img/accommodation/bks/bunkbilik.jpg',
                  description: S.of(context).bunk_description,
                  address:
                      'No, 9, Jalan Radin Bagus, Bandar Baru Sri Petaling, 57000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur',
                  location: 'https://maps.app.goo.gl/kmiWh5oqbGV96Nst9',
                  contact: S.of(context).bunk_contact,
                  website: S.of(context).bunk_website,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyList2 extends StatelessWidget {
  final List<ItemData> items;

  const MyList2({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image Section
                Stack(
                  children: [
                    CachedNetworkImage(
                      imageUrl: items[index].imageUrl,
                      fit: BoxFit.cover,
                      height: 220,
                      width: double.infinity,
                      placeholder: (context, url) => Container(
                        height: 220,
                        color: Colors.grey[200],
                        child: const Center(
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Color.fromARGB(255, 0, 71, 133),
                            ),
                          ),
                        ),
                      ),
                      errorWidget: (context, url, error) => Container(
                        height: 220,
                        color: Colors.grey[300],
                        child: const Icon(Icons.error, size: 50),
                      ),
                    ),
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 16,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '${(index % 2 == 0) ? "4.5" : "4.8"}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
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
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      Text(
                        items[index].title,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 71, 133),
                          letterSpacing: 0.3,
                        ),
                      ),
                      const SizedBox(height: 12),

                      // Description
                      if (items[index].description.isNotEmpty) ...[
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.grey[50],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.info_outline,
                                size: 20,
                                color: Colors.grey[600],
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  items[index].description,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[700],
                                    height: 1.4,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                      ],

                      // Address
                      if (items[index].address.isNotEmpty) ...[
                        _buildInfoRow(
                          icon: Icons.location_on_outlined,
                          label: S.of(context).address,
                          value: items[index].address,
                        ),
                        const SizedBox(height: 10),
                      ],

                      // Contact
                      if (items[index].contact.isNotEmpty) ...[
                        _buildInfoRow(
                          icon: Icons.phone_outlined,
                          label: S.of(context).contact,
                          value: items[index].contact,
                        ),
                        const SizedBox(height: 16),
                      ],

                      // Action Buttons
                      Row(
                        children: [
                          if (items[index].location.isNotEmpty)
                            Expanded(
                              child: Material(
                                color: const Color.fromARGB(255, 0, 71, 133),
                                borderRadius: BorderRadius.circular(10),
                                child: InkWell(
                                  onTap: () =>
                                      _launchURL(items[index].location),
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                    ),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.map_outlined,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          'View Location',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (items[index].website.isNotEmpty) ...[
                            const SizedBox(width: 10),
                            Expanded(
                              child: Material(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                child: InkWell(
                                  onTap: () => _launchURL(items[index].website),
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 0, 71, 133),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.language_outlined,
                                          color:
                                              Color.fromARGB(255, 0, 71, 133),
                                          size: 20,
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          'Website',
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 0, 71, 133),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildInfoRow({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 20,
          color: const Color.fromARGB(255, 0, 71, 133),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[600],
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                  height: 1.3,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _launchURL(String url) async {
    final uri = Uri.parse(url);
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
  final String description;
  final String address;
  final String location;
  final String contact;
  final String website;

  ItemData({
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.address,
    required this.location,
    required this.contact,
    required this.website,
  });
}
