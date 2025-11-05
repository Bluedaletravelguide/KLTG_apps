import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:kltheguide/main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'generated/l10n.dart';

class MedicalT extends StatefulWidget {
  const MedicalT({super.key});

  @override
  _MedicalTState createState() => _MedicalTState();
}

class _MedicalTState extends State<MedicalT> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 71, 133),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 3,
                tabs: [
                  Tab(
                    child: Row(
                      children: [
                        const Icon(Icons.local_hospital, size: 18),
                        const SizedBox(width: 6),
                        Text(S.of(context).healthcare),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: [
                        const Icon(Icons.medical_services, size: 18),
                        const SizedBox(width: 6),
                        Text(S.of(context).dental),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: [
                        const Icon(Icons.face, size: 18),
                        const SizedBox(width: 6),
                        Text(S.of(context).dermatologist),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: [
                        const Icon(Icons.visibility, size: 18),
                        const SizedBox(width: 6),
                        Text(S.of(context).ophthalmologist),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: [
                        const Icon(Icons.healing, size: 18),
                        const SizedBox(width: 6),
                        Text(S.of(context).plasticSurgery),
                      ],
                    ),
                  ),
                ],
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white70,
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          title: Text(
            S.of(context).medicalTourism,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 71, 133),
          actions: const <Widget>[AppBarMore()],
        ),
        body: Container(
          color: Colors.grey[100],
          child: TabBarView(
            children: [
              MyList2(
                items: [
                  ItemData(
                    title: S.of(context).gleneagles,
                    imageUrl:
                        'https://www.kltheguide.com.my/assets/img/medical_tourism/hc/Gleneagles.png',
                    location: S.of(context).gleneaglesLocation,
                    hours: S.of(context).gleneaglesHours,
                    maps: 'https://maps.app.goo.gl/soSkhAnzWpbsxZRR6',
                    category: 'Healthcare',
                  ),
                  ItemData(
                    title: S.of(context).kpjTawakkal,
                    imageUrl:
                        'https://www.kltheguide.com.my/assets/img/medical_tourism/hc/KPJ%20Tawakkal.png',
                    location: S.of(context).kpjTawakkalLocation,
                    hours: S.of(context).kpjTawakkalHours,
                    maps: 'https://maps.app.goo.gl/ZRfNu4rfUe2bPmNh9',
                    category: 'Healthcare',
                  ),
                ],
              ),
              MyList2(
                items: [
                  ItemData(
                    title: S.of(context).klinikPergigianBangsar,
                    imageUrl:
                        'https://www.kltheguide.com.my/assets/img/medical_tourism/dtl/bangsardental2.png',
                    location: S.of(context).klinikPergigianBangsarLocation,
                    hours: S.of(context).klinikPergigianBangsarHours,
                    maps: 'https://maps.app.goo.gl/cNtYG1N2VLUnYZdA8',
                    category: 'Dental',
                  ),
                  ItemData(
                    title: S.of(context).dentalPro,
                    imageUrl:
                        'https://www.kltheguide.com.my/assets/img/medical_tourism/dtl/dentalpro.png',
                    location: S.of(context).dentalProLocation,
                    hours: S.of(context).dentalProHours,
                    maps: 'https://maps.app.goo.gl/bz4df7x6QXS43g9e9',
                    category: 'Dental',
                  ),
                ],
              ),
              MyList2(
                items: [
                  ItemData(
                    title: S.of(context).drJaneClinic,
                    imageUrl:
                        'https://www.kltheguide.com.my/assets/img/medical_tourism/der/DrJaneClinic.jpg',
                    location: S.of(context).drJaneClinicLocation,
                    hours: S.of(context).drJaneClinicHours,
                    maps: 'https://maps.app.goo.gl/7UzWTKXMhCq1ZNtaA',
                    category: 'Dermatology',
                  ),
                  ItemData(
                    title: S.of(context).dermlaze,
                    imageUrl:
                        'https://www.kltheguide.com.my/assets/img/medical_tourism/der/Dermlaze.jpeg',
                    location: S.of(context).dermlazeLocation,
                    hours: S.of(context).dermlazeHours,
                    maps: 'https://maps.app.goo.gl/12UwhMvjy6ywzxfr7',
                    category: 'Dermatology',
                  ),
                ],
              ),
              MyList2(
                items: [
                  ItemData(
                    title: S.of(context).isec,
                    imageUrl:
                        'https://www.kltheguide.com.my/assets/img/medical_tourism/oph/isec.JPG',
                    location: S.of(context).isecLocation,
                    hours: S.of(context).isecHours,
                    maps: 'https://maps.app.goo.gl/f4pXArGmPdcnK6Uy9',
                    category: 'Ophthalmology',
                  ),
                  ItemData(
                    title: S.of(context).vistaEyeSpecialist,
                    imageUrl:
                        'https://www.kltheguide.com.my/assets/img/medical_tourism/oph/vista.jpg',
                    location: S.of(context).vistaEyeSpecialistLocation,
                    hours: S.of(context).vistaEyeSpecialistHours,
                    maps: 'https://maps.app.goo.gl/wRsZkXypZHUBzJ1AA',
                    category: 'Ophthalmology',
                  ),
                ],
              ),
              MyList2(
                items: [
                  ItemData(
                    title: S.of(context).somaPlasticSurgery,
                    imageUrl:
                        'https://www.kltheguide.com.my/assets/img/medical_tourism/ps/soma_plastic_surgery.jpeg',
                    location: S.of(context).somaPlasticSurgeryLocation,
                    hours: S.of(context).somaPlasticSurgeryHours,
                    maps: 'https://maps.app.goo.gl/kNBG3FZLBCQXXEhi6',
                    category: 'Plastic Surgery',
                  ),
                ],
              ),
            ],
          ),
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
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(bottom: 16),
          child: Card(
            elevation: 2,
            shadowColor: Colors.black26,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () => _showDetailsBottomSheet(context, items[index]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image with gradient overlay
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(16),
                        ),
                        child: CachedNetworkImage(
                          imageUrl: items[index].imageUrl,
                          fit: BoxFit.cover,
                          height: 200,
                          width: double.infinity,
                          placeholder: (context, url) => Container(
                            height: 200,
                            color: Colors.grey[300],
                            child: const Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                          errorWidget: (context, url, error) => Container(
                            height: 200,
                            color: Colors.grey[300],
                            child: const Icon(Icons.error, size: 50),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.7),
                                Colors.transparent,
                              ],
                            ),
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            items[index].title,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Content
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Location
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 20,
                              color: Color.fromARGB(255, 0, 71, 133),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                items[index].location,
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.black87,
                                  height: 1.4,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        // Hours
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.access_time,
                              size: 20,
                              color: Color.fromARGB(255, 0, 71, 133),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                items[index].hours,
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.black87,
                                  height: 1.4,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        // Action Button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton.icon(
                            onPressed: () => _launchURL(items[index].maps),
                            icon: const Icon(Icons.map, size: 20),
                            label: Text(S.of(context).maps),
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 0, 71, 133),
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              elevation: 0,
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
        );
      },
    );
  }

  void _showDetailsBottomSheet(BuildContext context, ItemData item) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              item.title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.location_on,
                  color: Color.fromARGB(255, 0, 71, 133)),
              title: Text(item.location),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.access_time,
                  color: Color.fromARGB(255, 0, 71, 133)),
              title: Text(item.hours),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                  _launchURL(item.maps);
                },
                icon: const Icon(Icons.directions),
                label: const Text('Get Directions'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 71, 133),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _launchURL(String url) async {
  var uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}

class ItemData {
  final String title;
  final String imageUrl;
  final String location;
  final String hours;
  final String maps;
  final String category;

  ItemData({
    required this.title,
    required this.imageUrl,
    required this.location,
    required this.hours,
    required this.maps,
    required this.category,
  });
}
