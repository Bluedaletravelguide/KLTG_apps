// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:kltheguide/main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'generated/l10n.dart';

class ApiData {
  final String title;
  final String content;
  final String content2;
  final String image;
  final String location;
  final String locationurl;
  final String hours;
  final String phone;
  final String website;

  ApiData({
    required this.location,
    required this.locationurl,
    required this.hours,
    required this.phone,
    required this.title,
    required this.content,
    required this.content2,
    required this.image,
    required this.website,
  });
}

class CardListWidget extends StatelessWidget {
  final List<ApiData> data;

  const CardListWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[50],
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        itemCount: data.length,
        itemBuilder: (context, index) {
          final item = data[index];
          if (item.location != '') {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailPage(
                              title: item.title,
                              image: item.image,
                              content: item.content,
                              content2: item.content2,
                              location: item.location,
                              locationurl: item.locationurl,
                              hours: item.hours.replaceAll('/', '\n'),
                              phone: item.phone.replaceAll('/', '\n'),
                              website: item.website,
                            )));
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 16),
                child: Card(
                  elevation: 2,
                  shadowColor: Colors.black26,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(16),
                        ),
                        child: CachedNetworkImage(
                          imageUrl: item.image,
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
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.title,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            if (item.content != '')
                              const SizedBox(height: 12.0),
                            if (item.content != '')
                              Text(
                                item.content.replaceAll('\\n', '\n'),
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.black87,
                                  height: 1.4,
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
          } else {
            return Container(
              margin: const EdgeInsets.only(bottom: 16),
              child: Card(
                elevation: 2,
                shadowColor: Colors.black26,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(16),
                      ),
                      child: CachedNetworkImage(
                        imageUrl: item.image,
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
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.title,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 12.0),
                          Text(
                            item.content.replaceAll('\\n', '\n'),
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.black87,
                              height: 1.4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

class ExploreKL_PWOR2 extends StatefulWidget {
  const ExploreKL_PWOR2({super.key});

  @override
  _ExploreKL_PWOR2State createState() => _ExploreKL_PWOR2State();
}

class _ExploreKL_PWOR2State extends State<ExploreKL_PWOR2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
                  Tab(text: S.of(context).muslim),
                  Tab(text: S.of(context).buddhistTao),
                  Tab(text: S.of(context).hindu),
                  Tab(text: S.of(context).others),
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
            S.of(context).placesOfWorship,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 71, 133),
          actions: const <Widget>[AppBarMore()],
        ),
        body: Container(
          color: Colors.grey[50],
          child: TabBarView(
            children: [
              MyList2(
                items: [
                  ItemData2(
                    S.of(context).masjidNegara,
                    'https://www.kltheguide.com.my/assets/img/explorekl/pwor/masjidnegara.jpg',
                    S.of(context).masjidNegaraLocation,
                    S.of(context).masjidNegaraHours,
                    'http://masjidnegara.gov.my/mn/',
                    '',
                  ),
                  ItemData2(
                    S.of(context).masjidJamek,
                    'https://www.kltheguide.com.my/assets/img/explorekl/pwor/masjidjamek.jpg',
                    S.of(context).masjidJamekLocation,
                    S.of(context).masjidJamekHours,
                    'http://www.facebook.com/jamekmosque2',
                    '',
                  ),
                  ItemData2(
                    S.of(context).federalTerritoryMosque,
                    'https://www.kltheguide.com.my/assets/img/explorekl/pwor/Masjid_Wilayah_Persekutuan.jpg',
                    S.of(context).federalTerritoryMosqueLocation,
                    '',
                    '',
                    '+603 6201 8791',
                  ),
                  ItemData2(
                    S.of(context).masjidAlBukhari,
                    'https://www.kltheguide.com.my/assets/img/explorekl/pwor/Masjid%20Al%20Bukhari.jpg',
                    S.of(context).masjidAlBukhariLocation,
                    '',
                    '',
                    '+603-9221 0554',
                  ),
                  ItemData2(
                    S.of(context).masjidAbdullahHukum,
                    'https://www.kltheguide.com.my/assets/img/explorekl/pwor/Masjid_Jamek_Abdullah_Hukum.jpg',
                    S.of(context).masjidAbdullahHukumLocation,
                    '',
                    '',
                    '+603-2201 8492',
                  ),
                  ItemData2(
                    S.of(context).masjidAsySyakirin,
                    'https://www.kltheguide.com.my/assets/img/explorekl/pwor/As_Syakirin_Mosque,_Kuala_Lumpur.jpg',
                    S.of(context).masjidAsySyakirinLocation,
                    '',
                    '',
                    '+603-2380 1293',
                  ),
                  ItemData2(
                    S.of(context).masjidAlFirdaus,
                    'https://www.kltheguide.com.my/assets/img/explorekl/pwor/alfirdaus.jpg',
                    S.of(context).masjidAlFirdausLocation,
                    '',
                    '',
                    '+6011-2847 0032',
                  ),
                  ItemData2(
                    S.of(context).masjidJamiulEhsan,
                    'https://www.kltheguide.com.my/assets/img/explorekl/pwor/jamiulehsan.jpg',
                    S.of(context).masjidJamiulEhsanLocation,
                    '',
                    '',
                    '',
                  ),
                ],
              ),
              MyList2(
                items: [
                  ItemData2(
                    S.of(context).theanHouTemple,
                    'https://www.kltheguide.com.my/assets/img/explorekl/pwor/theanhou.jpg',
                    S.of(context).theanHouTempleLocation,
                    S.of(context).theanHouTempleHours,
                    'https://www.hainannet.com.my',
                    '+603-2274 7088',
                  ),
                  ItemData2(
                    S.of(context).guanDiTemple,
                    'https://www.kltheguide.com.my/assets/img/explorekl/pwor/guandi.jpg',
                    S.of(context).guanDiTempleLocation,
                    S.of(context).guanDiTempleHours,
                    'http://kwongsiew.org/',
                    '+603-2072 6669',
                  ),
                  ItemData2(
                    S.of(context).buddhistMahaViharaTemple,
                    'https://www.kltheguide.com.my/assets/img/explorekl/pwor/mahavihara.png',
                    S.of(context).buddhistMahaViharaTempleLocation,
                    S.of(context).buddhistMahaViharaTempleHours,
                    'https://buddhistmahavihara.org/',
                    '+603-2274 1141',
                  ),
                  ItemData2(
                    S.of(context).sinSzeSiYaTemple,
                    'https://www.kltheguide.com.my/assets/img/explorekl/pwor/szeyatemple.png',
                    S.of(context).sinSzeSiYaTempleLocation,
                    S.of(context).sinSzeSiYaTempleHours,
                    '',
                    '+603-2078 9052',
                  ),
                ],
              ),
              MyList2(
                items: [
                  ItemData2(
                    S.of(context).sriMahamariammanTemple,
                    'https://www.kltheguide.com.my/assets/img/explorekl/pwor/SriMahamariammanTemple.jpg',
                    S.of(context).sriMahamariammanTempleLocation,
                    S.of(context).sriMahamariammanTempleHours,
                    '',
                    '+603-2078 5323',
                  ),
                  ItemData2(
                    S.of(context).batuCavesTemple,
                    'https://www.kltheguide.com.my/assets/img/explorekl/pwor/batucaves.jpg',
                    S.of(context).batuCavesTempleLocation,
                    '',
                    '',
                    '+603-6189 6284',
                  ),
                  ItemData2(
                    S.of(context).sriKandaswamyTemple,
                    'https://www.kltheguide.com.my/assets/img/explorekl/pwor/Sri%20Kandaswamy%20Temple.jpg',
                    S.of(context).sriKandaswamyTempleLocation,
                    '',
                    'http://www.srikandaswamykovil.org/',
                    '+603-2274 2987',
                  ),
                ],
              ),
              MyList2(
                items: [
                  ItemData2(
                    S.of(context).stMarysAnglicanCathedral,
                    'https://www.kltheguide.com.my/assets/img/explorekl/pwor/stmary.png',
                    S.of(context).stMarysAnglicanCathedralLocation,
                    '',
                    'http://www.stmaryscathedral.org.my/',
                    '+603-2692 8672',
                  ),
                  ItemData2(
                    S.of(context).wesleyMethodistChurch,
                    'https://www.kltheguide.com.my/assets/img/explorekl/pwor/2.jpg',
                    S.of(context).wesleyMethodistChurchLocation,
                    S.of(context).wesleyMethodistChurchHours,
                    'https://linktr.ee/wmckl',
                    '+603-2072 0338',
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
  final List<ItemData2> items;

  MyList2({required this.items});

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                  child: Image.network(
                    items[index].imageUrl,
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.infinity,
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: 200,
                      color: Colors.grey[300],
                      child: const Icon(Icons.error, size: 50),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        items[index].text,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 12.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 18,
                            color: const Color.fromARGB(255, 0, 71, 133),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Location: ${items[index].location}',
                              style: const TextStyle(
                                fontSize: 15.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                      if (items[index].hours.isNotEmpty) ...[
                        const SizedBox(height: 10.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.access_time,
                              size: 18,
                              color: const Color.fromARGB(255, 0, 71, 133),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                'Operating Hours: ${items[index].hours}',
                                style: const TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                      if (items[index].contact.isNotEmpty) ...[
                        const SizedBox(height: 10.0),
                        InkWell(
                          onTap: () =>
                              _launchURL('tel:${items[index].contact}'),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.phone,
                                size: 18,
                                color: const Color.fromARGB(255, 0, 71, 133),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  'Contact: ${items[index].contact}',
                                  style: const TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                      if (items[index].website.isNotEmpty) ...[
                        const SizedBox(height: 10.0),
                        InkWell(
                          onTap: () => _launchURL(items[index].website),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.language,
                                size: 18,
                                color: const Color.fromARGB(255, 0, 71, 133),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  'Website: ${items[index].website}',
                                  style: const TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
}

class ItemData2 {
  final String text;
  final String imageUrl;
  final String location;
  final String hours;
  final String website;
  final String contact;

  ItemData2(this.text, this.imageUrl, this.location, this.hours, this.website,
      this.contact);
}

class ExploreKL_WTE2 extends StatefulWidget {
  const ExploreKL_WTE2({super.key});

  @override
  _ExploreKL_WTE2State createState() => _ExploreKL_WTE2State();
}

class _ExploreKL_WTE2State extends State<ExploreKL_WTE2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
                indicatorColor: Colors.white,
                indicatorWeight: 3,
                tabs: [
                  Tab(text: S.of(context).streetFood),
                  Tab(text: S.of(context).cafes),
                  Tab(text: S.of(context).restaurants),
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
            S.of(context).whatToEat,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 71, 133),
          actions: const <Widget>[AppBarMore()],
        ),
        body: Container(
          color: Colors.grey[50],
          child: TabBarView(
            children: [
              MyList5(
                items: [
                  ItemData5(
                    'Jalan Alor',
                    'https://www.kltheguide.com.my/assets/img/explorekl/wte/sf/jalanalor.jpg',
                    'Bukit Bintang, Kuala Lumpur, Federal Territory of Kuala Lumpur',
                    '',
                    '',
                  ),
                  ItemData5(
                    'Taman Connaught Night Market',
                    'https://www.kltheguide.com.my/assets/img/explorekl/wte/sf/tamanconnaught.png',
                    '130, 108, Jalan Cerdas, Taman Connaught, 56000 Kuala Lumpur, Federal Territory of Kuala Lumpur',
                    '6.00 pm - 1.00 am (Wed)',
                    '',
                  ),
                  ItemData5(
                    'Petaling Street',
                    'https://www.kltheguide.com.my/assets/img/explorekl/wte/sf/petalingstreet.jpg',
                    'Jalan Petaling, City Centre, 50000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur',
                    'Open 24 Hours (Daily)',
                    '',
                  ),
                ],
              ),
              MyList5(
                items: [
                  ItemData5(
                    'Wildflowers KL',
                    'https://www.kltheguide.com.my/assets/img/explorekl/wte/c/wildflowerskl.webp',
                    'Jalan Petaling, 50000 Kuala Lumpur',
                    '12.00 pm - 12.00 am (Fri-Sat) 12.00 pm - 10.00 pm (Sun) 5.00 pm - 10.00 pm (Tues,Wed,Thurs) Monday (Closed)',
                    '',
                  ),
                  ItemData5(
                    'Lisette\'s Café & Bakery',
                    'https://www.kltheguide.com.my/assets/img/explorekl/wte/c/lisette.webp',
                    'No. 8, Jalan Kemuja, Bangsar, 59000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur',
                    '8.00 am - 10.00 pm (Daily)',
                    '',
                  ),
                  ItemData5(
                    'Merchant\'s Lane',
                    'https://www.kltheguide.com.my/assets/img/explorekl/wte/c/merchantlane.webp',
                    '8.00 am - 10.00 pm (Daily)',
                    '150, Jalan Petaling, City Centre, 50000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur',
                    '',
                  ),
                ],
              ),
              MyList5(
                items: [
                  ItemData5(
                    'Bijan Bar & Restaurant',
                    'https://www.kltheguide.com.my/assets/img/explorekl/wte/r/bijan.webp',
                    'No 3, Jalan Ceylon, Bukit Ceylon, 50200 Kuala Lumpur',
                    '12.00 PM - 11.00 PM (Daily)',
                    '+603-2031 3575',
                  ),
                  ItemData5(
                    'Songket Restaurant',
                    'https://www.kltheguide.com.my/assets/img/explorekl/wte/r/songket.webp',
                    '31G, Plaza Crystavilla, 1, Jalan 22a/70a, Desa Sri Hartamas, 50480 Kuala Lumpur',
                    '12.00 PM - 10.00 PM (Daily)',
                    '+6010-958 9598',
                  ),
                  ItemData5(
                    'Manja Old Malaya',
                    'https://www.kltheguide.com.my/assets/img/explorekl/wte/r/manja.webp',
                    '6, Lorong Raja Chulan, Kuala Lumpur, 50250 Kuala Lumpur',
                    '12.00 PM - 12.00 AM (Daily)',
                    '+6012-373 7063',
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

class MyList5 extends StatelessWidget {
  final List<ItemData5> items;

  MyList5({required this.items});

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                  child: Image.network(
                    items[index].imageUrl,
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.infinity,
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: 200,
                      color: Colors.grey[300],
                      child: const Icon(Icons.error, size: 50),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        items[index].text,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 12.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 18,
                            color: const Color.fromARGB(255, 0, 71, 133),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              '${S.of(context).location}: ${items[index].location}',
                              style: const TextStyle(
                                fontSize: 15.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                      if (items[index].hours.isNotEmpty) ...[
                        const SizedBox(height: 10.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.access_time,
                              size: 18,
                              color: const Color.fromARGB(255, 0, 71, 133),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                '${S.of(context).operatingHours}: ${items[index].hours}',
                                style: const TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                      if (items[index].contact.isNotEmpty) ...[
                        const SizedBox(height: 10.0),
                        InkWell(
                          onTap: () =>
                              _launchURL('tel:${items[index].contact}'),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.phone,
                                size: 18,
                                color: const Color.fromARGB(255, 0, 71, 133),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  '${S.of(context).contact}: ${items[index].contact}',
                                  style: const TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
}

class ItemData5 {
  final String text;
  final String imageUrl;
  final String location;
  final String hours;
  final String contact;

  ItemData5(this.text, this.imageUrl, this.location, this.hours, this.contact);
}

class ExploreKL_NL2 extends StatefulWidget {
  const ExploreKL_NL2({super.key});

  @override
  _ExploreKL_NL2State createState() => _ExploreKL_NL2State();
}

class _ExploreKL_NL2State extends State<ExploreKL_NL2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
                indicatorColor: Colors.white,
                indicatorWeight: 3,
                tabs: [
                  Tab(text: S.of(context).nightLife),
                  Tab(text: S.of(context).bars),
                  Tab(text: S.of(context).nightMarket),
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
            S.of(context).nightLife,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 71, 133),
          actions: const <Widget>[AppBarMore()],
        ),
        body: Container(
          color: Colors.grey[50],
          child: TabBarView(
            children: [
              MyList3(
                items: [
                  ItemData3(
                    S.of(context).changkatBukitBintang,
                    'https://www.kltheguide.com.my/assets/img/explorekl/nl/Changkat.jpg',
                    S.of(context).changkatBukitBintangDescription,
                    '',
                    '',
                    '',
                  ),
                  ItemData3(
                    S.of(context).bangsar,
                    'https://www.kltheguide.com.my/assets/img/explorekl/nl/bangsar.png',
                    S.of(context).bangsarDescription,
                    '',
                    '',
                    '',
                  ),
                  ItemData3(
                    S.of(context).ampang,
                    'https://www.kltheguide.com.my/assets/img/explorekl/nl/1024px-JalanAmpangNight.jpg',
                    S.of(context).ampangDescription,
                    '',
                    '',
                    '',
                  ),
                  ItemData3(
                    S.of(context).petalingStreet,
                    'https://www.kltheguide.com.my/assets/img/explorekl/nl/1024px-Petaling_Street,_Kuala_Lumpur.jpg',
                    S.of(context).petalingStreetDescription,
                    '',
                    '',
                    '',
                  ),
                ],
              ),
              MyList3(
                items: [
                  ItemData3(
                    S.of(context).marinisOn57,
                    'https://lh3.googleusercontent.com/p/AF1QipOw-nEwlxUnjIX50EgmfBVdO24HGkvKGgW0XsCv=s680-w680-h510',
                    '',
                    S.of(context).marinisOn57Location,
                    '5.00 pm - 3.00 am (Daily)',
                    '',
                  ),
                  ItemData3(
                    S.of(context).heliLoungeBar,
                    'https://www.kltheguide.com.my/assets/img/explorekl/nl/Heli%20Lounge%20Bar%20(30).png',
                    '',
                    S.of(context).heliLoungeBarLocation,
                    '5.00 pm - 12.00 am (Sun-Wed)',
                    '03-2110 1219',
                  ),
                  ItemData3(
                    S.of(context).zetaBar,
                    'https://www.kltheguide.com.my/assets/img/explorekl/nl/zeta%20bar%20(30).png',
                    '',
                    S.of(context).zetaBarLocation,
                    '10 am - 10 pm (Daily)',
                    '6017-877 9912',
                  ),
                ],
              ),
              MyList3(
                items: [
                  ItemData3(
                    S.of(context).connaughtNightMarket,
                    'https://www.kltheguide.com.my/assets/img/explorekl/nl/11.jpg',
                    S.of(context).connaughtNightMarketDescription,
                    S.of(context).connaughtNightMarketLocation,
                    '',
                    '6.00 pm - 1.00 am (Wednesday)',
                  ),
                  ItemData3(
                    S.of(context).petalingStreet,
                    'https://www.kltheguide.com.my/assets/img/explorekl/nl/12.jpg',
                    '',
                    S.of(context).petalingStreetLocation,
                    '8.00 am - 8.00 pm (Monday - Sunday)',
                    '',
                  ),
                  ItemData3(
                    S.of(context).kasturiWalk,
                    'https://www.kltheguide.com.my/assets/img/explorekl/nl/13.jpg',
                    '',
                    S.of(context).kasturiWalkLocation,
                    S.of(context).kasturiWalkHours,
                    '',
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

class MyList3 extends StatelessWidget {
  final List<ItemData3> items;

  MyList3({required this.items});

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                  child: Image.network(
                    items[index].imageUrl,
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.infinity,
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: 200,
                      color: Colors.grey[300],
                      child: const Icon(Icons.error, size: 50),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        items[index].text,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      if (items[index].description.isNotEmpty) ...[
                        const SizedBox(height: 12.0),
                        Text(
                          '${S.of(context).description}: ${items[index].description}',
                          style: const TextStyle(
                            fontSize: 15.0,
                            color: Colors.black87,
                            height: 1.4,
                          ),
                        ),
                      ],
                      if (items[index].location.isNotEmpty) ...[
                        const SizedBox(height: 12.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 18,
                              color: const Color.fromARGB(255, 0, 71, 133),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                '${S.of(context).location}: ${items[index].location}',
                                style: const TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                      if (items[index].hours.isNotEmpty) ...[
                        const SizedBox(height: 10.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.access_time,
                              size: 18,
                              color: const Color.fromARGB(255, 0, 71, 133),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                '${S.of(context).operatingHours}: ${items[index].hours}',
                                style: const TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                      if (items[index].contact.isNotEmpty) ...[
                        const SizedBox(height: 10.0),
                        InkWell(
                          onTap: () =>
                              _launchURL('tel:${items[index].contact}'),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.phone,
                                size: 18,
                                color: const Color.fromARGB(255, 0, 71, 133),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  '${S.of(context).contact}: ${items[index].contact}',
                                  style: const TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
}

class ItemData3 {
  final String text;
  final String imageUrl;
  final String description;
  final String location;
  final String hours;
  final String contact;

  ItemData3(this.text, this.imageUrl, this.description, this.location,
      this.hours, this.contact);
}

class ExploreKL_SS2 extends StatefulWidget {
  const ExploreKL_SS2({super.key});

  @override
  _ExploreKL_SS2State createState() => _ExploreKL_SS2State();
}

class _ExploreKL_SS2State extends State<ExploreKL_SS2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
                indicatorColor: Colors.white,
                indicatorWeight: 3,
                tabs: [
                  Tab(text: S.of(context).mustVisit),
                  Tab(text: S.of(context).museums),
                  Tab(text: S.of(context).klArtScene),
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
            S.of(context).sightseeing,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 71, 133),
          actions: const <Widget>[AppBarMore()],
        ),
        body: Container(
          color: Colors.grey[50],
          child: TabBarView(
            children: [
              MyList4(
                items: [
                  ItemData4(
                    S.of(context).klcc,
                    'https://www.kltheguide.com.my/assets/img/explorekl/ss/kong-kuala-2937763_1280.jpg',
                    S.of(context).klccLocation,
                    S.of(context).klccHours,
                    '+603 2382 2828',
                  ),
                  ItemData4(
                    S.of(context).istanaNegara,
                    'https://www.kltheguide.com.my/assets/img/explorekl/ss/1024px-ISTANA_NEGARA_MALAYSIA.jpg',
                    S.of(context).istanaNegaraLocation,
                    S.of(context).istanaNegaraHours,
                    '',
                  ),
                  ItemData4(
                    S.of(context).tunkuAbdulRahmanMemorial,
                    'https://www.kltheguide.com.my/assets/img/explorekl/ss/tarmemo.webp',
                    S.of(context).tunkuAbdulRahmanMemorialLocation,
                    S.of(context).tunkuAbdulRahmanMemorialHours,
                    '+603-2694 7277',
                  ),
                  ItemData4(
                    S.of(context).klTower,
                    'https://www.kltheguide.com.my/assets/img/explorekl/ss/kuala-lumpur-2720830_1280.jpg',
                    S.of(context).klTowerLocation,
                    S.of(context).klTowerHours,
                    '+603 2693 7905',
                  ),
                ],
              ),
              MyList4(
                items: [
                  ItemData4(
                    S.of(context).ethnologyMuseum,
                    'https://www.kltheguide.com.my/assets/img/explorekl/ss/1.jpg',
                    S.of(context).ethnologyMuseumLocation,
                    S.of(context).ethnologyMuseumHours,
                    '+603-2267 1000',
                  ),
                  ItemData4(
                    S.of(context).textilesMuseum,
                    'https://www.kltheguide.com.my/assets/img/explorekl/ss/2.webp',
                    S.of(context).textilesMuseumLocation,
                    S.of(context).textilesMuseumHours,
                    '',
                  ),
                  ItemData4(
                    S.of(context).museumOfAsianArts,
                    'https://www.kltheguide.com.my/assets/img/explorekl/ss/3.webp',
                    S.of(context).museumOfAsianArtsLocation,
                    S.of(context).museumOfAsianArtsHours,
                    '+603-796 7380',
                  ),
                ],
              ),
              MyList4(
                items: [
                  ItemData4(
                    S.of(context).urbanMuseum,
                    'https://www.kltheguide.com.my/assets/img/explorekl/ss/urmu.jpg',
                    S.of(context).urbanMuseumLocation,
                    S.of(context).urbanMuseumHours,
                    '+603-2110 3004',
                  ),
                  ItemData4(
                    S.of(context).nationalArtGallery,
                    'https://www.kltheguide.com.my/assets/img/explorekl/ss/1art.jpg',
                    S.of(context).nationalArtGalleryLocation,
                    S.of(context).nationalArtGalleryHours,
                    '+603-4026 7000',
                  ),
                  ItemData4(
                    S.of(context).ourArtProjects,
                    'https://www.kltheguide.com.my/assets/img/explorekl/ss/2.jpg',
                    S.of(context).ourArtProjectsLocation,
                    S.of(context).ourArtProjectsHours,
                    '+6016-660 2585',
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

class ItemData4 {
  final String text;
  final String imageUrl;
  final String location;
  final String hours;
  final String contact;

  ItemData4(this.text, this.imageUrl, this.location, this.hours, this.contact);
}

class MyList4 extends StatelessWidget {
  final List<ItemData4> items;

  MyList4({required this.items});

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                  child: Image.network(
                    items[index].imageUrl,
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.infinity,
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: 200,
                      color: Colors.grey[300],
                      child: const Icon(Icons.error, size: 50),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        items[index].text,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 12.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 18,
                            color: const Color.fromARGB(255, 0, 71, 133),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              '${S.of(context).location}: ${items[index].location}',
                              style: const TextStyle(
                                fontSize: 15.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.access_time,
                            size: 18,
                            color: const Color.fromARGB(255, 0, 71, 133),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              '${S.of(context).operatingHours}: ${items[index].hours}',
                              style: const TextStyle(
                                fontSize: 15.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                      if (items[index].contact.isNotEmpty) ...[
                        const SizedBox(height: 10.0),
                        InkWell(
                          onTap: () =>
                              _launchURL('tel:${items[index].contact}'),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.phone,
                                size: 18,
                                color: const Color.fromARGB(255, 0, 71, 133),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  '${S.of(context).contact}: ${items[index].contact}',
                                  style: const TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
}

class ExploreKL_KL4K2 extends StatefulWidget {
  const ExploreKL_KL4K2({super.key});

  @override
  _ExploreKL_KL4K2State createState() => _ExploreKL_KL4K2State();
}

class _ExploreKL_KL4K2State extends State<ExploreKL_KL4K2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          S.of(context).kl4kids,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 71, 133),
        elevation: 2,
        actions: const <Widget>[AppBarMore()],
      ),
      body: MyList6(
        items: [
          ItemData6(
            S.of(context).aeonFantasy,
            'https://www.kltheguide.com.my/assets/img/explorekl/kl4k/TM.jpg',
            S.of(context).aeonFantasyLocation,
            S.of(context).aeonFantasyHours,
            '+603-41497666',
          ),
          ItemData6(
            S.of(context).klUpsideDownHouse,
            'https://www.kltheguide.com.my/assets/img/explorekl/kl4k/klupsidedown.webp',
            S.of(context).klUpsideDownHouseLocation,
            S.of(context).klUpsideDownHouseHours,
            '+603-50319458',
          ),
          ItemData6(
            S.of(context).klTowerMiniZoo,
            'https://www.kltheguide.com.my/assets/img/explorekl/kl4k/kltowerminizoo.webp',
            S.of(context).klTowerMiniZooLocation,
            S.of(context).klTowerMiniZooHours,
            '+603-20223943',
          ),
          ItemData6(
            S.of(context).petrosainsKlcc,
            'https://www.kltheguide.com.my/assets/img/explorekl/kl4k/Petrosains%20KLCC%20by%20Emran%20Kassim.jpg',
            S.of(context).petrosainsKlccLocation,
            S.of(context).petrosainsKlccHours,
            '+603-2331 8181',
          ),
        ],
      ),
    );
  }
}

class ItemData6 {
  final String text;
  final String imageUrl;
  final String location;
  final String hours;
  final String contact;

  ItemData6(this.text, this.imageUrl, this.location, this.hours, this.contact);
}

class MyList6 extends StatelessWidget {
  final List<ItemData6> items;

  MyList6({required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[50],
      child: ListView.builder(
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                    child: Image.network(
                      items[index].imageUrl,
                      fit: BoxFit.cover,
                      height: 200,
                      width: double.infinity,
                      errorBuilder: (context, error, stackTrace) => Container(
                        height: 200,
                        color: Colors.grey[300],
                        child: const Icon(Icons.error, size: 50),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          items[index].text,
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 12.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 18,
                              color: const Color.fromARGB(255, 0, 71, 133),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                '${S.of(context).location}: ${items[index].location}',
                                style: const TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.access_time,
                              size: 18,
                              color: const Color.fromARGB(255, 0, 71, 133),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                '${S.of(context).operatingHours}: ${items[index].hours}',
                                style: const TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        InkWell(
                          onTap: () =>
                              _launchURL('tel:${items[index].contact}'),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.phone,
                                size: 18,
                                color: const Color.fromARGB(255, 0, 71, 133),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  '${S.of(context).contact}: ${items[index].contact}',
                                  style: const TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class ExploreKL extends StatelessWidget {
  ExploreKL({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> dataList = [
      {
        "name": S.of(context).whatToDo,
        "image": "https://www.kltheguide.com.my/assets/img/explorekl/wtd.webp"
      },
      {
        "name": S.of(context).historicalSites,
        "image": "https://www.kltheguide.com.my/assets/img/explorekl/hs.webp"
      },
      {
        "name": S.of(context).placesOfWorship,
        "image": "https://www.kltheguide.com.my/assets/img/explorekl/pwor.webp"
      },
      {
        "name": S.of(context).whatToEat,
        "image": "https://www.kltheguide.com.my/assets/img/explorekl/wte.webp"
      },
      {
        "name": S.of(context).nightLife,
        "image": "https://www.kltheguide.com.my/assets/img/explorekl/nl.webp"
      },
      {
        "name": S.of(context).kl4Kids,
        "image":
            "https://www.kltheguide.com.my/assets/img/explorekl/kl4kids.webp"
      },
      {
        "name": S.of(context).sightseeing,
        "image": "https://www.kltheguide.com.my/assets/img/explorekl/ss.webp"
      },
      {
        "name": S.of(context).parks,
        "image": "https://www.kltheguide.com.my/assets/img/explorekl/parks.jpg"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          S.of(context).exploreKL,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 71, 133),
        elevation: 2,
        actions: const <Widget>[AppBarMore()],
      ),
      body: Container(
        color: Colors.grey[50],
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          itemCount: dataList.length,
          itemBuilder: (context, index) {
            final item = dataList[index];
            return CardItem(
                name: item["name"], image: item["image"], index: index);
          },
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String name;
  final String image;
  final int index;

  const CardItem({
    Key? key,
    required this.name,
    required this.image,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/explorekl-$index',
              arguments: {'index': index});
        },
        borderRadius: BorderRadius.circular(16),
        child: Card(
          elevation: 3,
          shadowColor: Colors.black26,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: CachedNetworkImage(
                imageUrl: image,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  color: Colors.grey[300],
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
                errorWidget: (context, url, error) => Container(
                  color: Colors.grey[300],
                  child: const Center(
                    child: Icon(Icons.error, color: Colors.red, size: 40),
                  ),
                ),
                memCacheWidth: 200,
                memCacheHeight: 200,
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.8),
                          Colors.black.withOpacity(0.3),
                          Colors.transparent,
                        ],
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                offset: Offset(0, 1),
                                blurRadius: 3.0,
                                color: Colors.black45,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String title;
  final String content;
  final String content2;
  final String image;
  final String location;
  final String locationurl;
  final String hours;
  final String phone;
  final String website;

  const DetailPage({
    super.key,
    required this.location,
    required this.locationurl,
    required this.hours,
    required this.phone,
    required this.title,
    required this.content,
    required this.content2,
    required this.image,
    required this.website,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          S.of(context).details,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 71, 133),
        elevation: 2,
        actions: const <Widget>[AppBarMore()],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: image,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 250,
              placeholder: (context, url) => Container(
                height: 250,
                color: Colors.grey[300],
                child: const Center(child: CircularProgressIndicator()),
              ),
              errorWidget: (context, url, error) => Container(
                height: 250,
                color: Colors.grey[300],
                child: const Icon(Icons.error, size: 50),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  if (content != '') const SizedBox(height: 16.0),
                  if (content != '')
                    Text(
                      content,
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black87,
                        height: 1.5,
                      ),
                    ),
                  if (content2 != '') const SizedBox(height: 12.0),
                  if (content2 != '')
                    Text(
                      content2,
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black87,
                        height: 1.5,
                      ),
                    ),
                  if (location != '' ||
                      phone != '' ||
                      hours != '' ||
                      website != '')
                    const SizedBox(height: 20.0),
                  if (location != '')
                    _buildInfoCard(
                      icon: Icons.location_on,
                      label: S.of(context).location,
                      value: location,
                      onTap: () => _launchURL(locationurl),
                      isClickable: true,
                    ),
                  if (phone != '')
                    _buildInfoCard(
                      icon: Icons.phone,
                      label: S.of(context).website,
                      value: website,
                      onTap: () => _launchURL('tel:$phone'),
                      isClickable: true,
                    ),
                  if (hours != '')
                    _buildInfoCard(
                      icon: Icons.access_time,
                      label: 'Hours',
                      value: hours,
                      onTap: null,
                      isClickable: false,
                    ),
                  if (website != '')
                    _buildInfoCard(
                      icon: Icons.language,
                      label: 'Website',
                      value: website,
                      onTap: () => _launchURL(website),
                      isClickable: true,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard({
    required IconData icon,
    required String label,
    required String value,
    required VoidCallback? onTap,
    required bool isClickable,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey[200]!),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 71, 133).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  icon,
                  color: const Color.fromARGB(255, 0, 71, 133),
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
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      value,
                      style: TextStyle(
                        fontSize: 15,
                        color: isClickable ? Colors.blue : Colors.black87,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
              if (isClickable)
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.grey[400],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExploreKL_WTD extends StatelessWidget {
  ExploreKL_WTD({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ApiData> data = [
      ApiData(
        title: S.of(context).sampleLocalFlavour,
        content: S.of(context).nasiLemakDescription,
        content2: "Additional content here.",
        image: "https://www.kltheguide.com.my/assets/img/explorekl/wtd/1.jpg",
        location: "Kuala Lumpur",
        locationurl: "https://maps.google.com",
        hours: "10:00 AM - 6:00 PM",
        phone: "+60123456789",
        website: "https://www.kltheguide.com.my",
      ),
      ApiData(
        title: S.of(context).baskInHistory,
        content: S.of(context).nationalMuseumDescription,
        content2: "Additional content here.",
        image:
            "https://www.kltheguide.com.my/assets/img/explorekl/wtd/national_museum.jpg",
        location: "Kuala Lumpur",
        locationurl: "https://maps.google.com",
        hours: "9:00 AM - 5:00 PM",
        phone: "+60123456789",
        website: "https://www.kltheguide.com.my",
      ),
      ApiData(
        title: S.of(context).walkThroughForest,
        content: S.of(context).forestEcoParkDescription,
        content2: "Additional content here.",
        image:
            "https://www.kltheguide.com.my/assets/img/explorekl/wtd/ecopark.jpg",
        location: "Kuala Lumpur",
        locationurl: "https://maps.google.com",
        hours: "9:00 AM - 5:00 PM",
        phone: "+60123456789",
        website: "https://www.kltheguide.com.my",
      ),
      ApiData(
        title: S.of(context).shopUntilDrop,
        content: S.of(context).petalingStreetDescription,
        content2: "Additional content here.",
        image: "https://www.kltheguide.com.my/assets/img/explorekl/wtd/5.jpg",
        location: "Kuala Lumpur",
        locationurl: "https://maps.google.com",
        hours: "9:00 AM - 5:00 PM",
        phone: "+60123456789",
        website: "https://www.kltheguide.com.my",
      ),
      ApiData(
        title: S.of(context).spendNightOut,
        content: S.of(context).nightOutDescription,
        content2: "Additional content here.",
        image: "https://www.kltheguide.com.my/assets/img/explorekl/wtd/5.jpg",
        location: "Kuala Lumpur",
        locationurl: "https://maps.google.com",
        hours: "9:00 AM - 5:00 PM",
        phone: "+60123456789",
        website: "https://www.kltheguide.com.my",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          S.of(context).whatToDo,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 71, 133),
        elevation: 2,
        actions: const <Widget>[AppBarMore()],
      ),
      body: CardListWidget(data: data),
    );
  }
}

void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class ExploreKL_HS2 extends StatefulWidget {
  const ExploreKL_HS2({super.key});

  @override
  State<ExploreKL_HS2> createState() => _ExploreKL_HS2();
}

class _ExploreKL_HS2 extends State<ExploreKL_HS2> {
  @override
  Widget build(BuildContext context) {
    final List<ItemData> items = [
      ItemData(
        'Dataran Merdeka',
        'https://www.kltheguide.com.my/assets/img/explorekl/hs/dataranmerdeka.jpg',
        S.of(context).dataranMerdekaDescription,
        'https://maps.app.goo.gl/vg3cpcCcU7fKxUyP6',
        S.of(context).open24Hours,
      ),
      ItemData(
        'Kuala Lumpur Railway Station',
        'https://www.kltheguide.com.my/assets/img/explorekl/hs/klrailway.jpg',
        S.of(context).klRailwayStationDescription,
        'https://maps.app.goo.gl/Lx7yUafbKhtVdrSaA',
        '',
      ),
      ItemData(
        'Royal Museum',
        'https://www.kltheguide.com.my/assets/img/explorekl/hs/royalmuseum.jpg',
        S.of(context).royalMuseumDescription,
        'https://maps.app.goo.gl/ekTJAETdYFiny7H76',
        S.of(context).hours900to500Daily,
      ),
      ItemData(
        'Sultan Abdul Samad Building',
        'https://www.kltheguide.com.my/assets/img/explorekl/hs/sultanabdul.jpg',
        S.of(context).sultanAbdulSamadDescription,
        'https://maps.app.goo.gl/GvLPJChfzV2MZNNW8',
        S.of(context).open24Hours,
      ),
      ItemData(
        'Tugu Negara (National Monument)',
        'https://www.kltheguide.com.my/assets/img/explorekl/hs/tugunegara.jpg',
        S.of(context).tuguNegaraDescription,
        'https://maps.app.goo.gl/6jUEy5QNpFNZGX757',
        S.of(context).hours700to600Daily,
      ),
      ItemData(
        'Victoria Fountain',
        'https://www.kltheguide.com.my/assets/img/explorekl/hs/6.jpg',
        S.of(context).victoriaFountainDescription,
        'https://maps.app.goo.gl/ggVg278Y3u8PPk9T9',
        S.of(context).open24Hours,
      ),
      ItemData(
        'Ilham Baru Tower',
        'https://www.kltheguide.com.my/assets/img/explorekl/hs/7.jpg',
        S.of(context).ilhamBaruTowerDescription,
        'https://maps.app.goo.gl/Es321m1BSMKw4EySA',
        S.of(context).hours900to500Daily,
      ),
      ItemData(
        'Bangunan Sulaiman',
        'https://www.kltheguide.com.my/assets/img/explorekl/hs/8.jpg',
        S.of(context).bangunanSulaimanDescription,
        'https://maps.app.goo.gl/6rMxD21WzpbDVFGGA',
        S.of(context).hours830to530Weekdays,
      ),
      ItemData(
        'Central Market @ Pasar Seni',
        'https://www.kltheguide.com.my/assets/img/explorekl/hs/centralmarket.jpg',
        S.of(context).centralMarketDescription,
        'https://maps.app.goo.gl/Yi3k1ZgY6dVgbkb19',
        S.of(context).hours1000to600Daily,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          S.of(context).historicalSites,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 71, 133),
        elevation: 2,
        actions: const <Widget>[AppBarMore()],
      ),
      body: MyList(items: items),
    );
  }
}

class MyList extends StatelessWidget {
  final List<ItemData> items;

  const MyList({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[50],
      child: ListView.builder(
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                    child: Image.network(
                      items[index].imageUrl,
                      fit: BoxFit.cover,
                      height: 200,
                      width: double.infinity,
                      errorBuilder: (context, error, stackTrace) => Container(
                        height: 200,
                        color: Colors.grey[300],
                        child: const Icon(Icons.error, size: 50),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          items[index].text,
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 12.0),
                        Text(
                          items[index].content,
                          style: const TextStyle(
                            fontSize: 15.0,
                            color: Colors.black87,
                            height: 1.4,
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        InkWell(
                          onTap: () {
                            _launchURL(items[index].location);
                          },
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.grey[50],
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.grey[200]!),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 20,
                                  color: const Color.fromARGB(255, 0, 71, 133),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    '${S.of(context).location}: ${items[index].location}',
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 14,
                                  color: Colors.grey[400],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class ItemData {
  final String text;
  final String imageUrl;
  final String content;
  final String location;
  final String hours;

  ItemData(this.text, this.imageUrl, this.content, this.location, this.hours);
}

class ExploreKL_P2 extends StatefulWidget {
  const ExploreKL_P2({super.key});

  @override
  _ExploreKL_P2State createState() => _ExploreKL_P2State();
}

class _ExploreKL_P2State extends State<ExploreKL_P2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          S.of(context).parks,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 71, 133),
        elevation: 2,
        actions: const <Widget>[AppBarMore()],
      ),
      body: MyList7(
        items: [
          ItemData7(
            S.of(context).tamanEkoRimba,
            'https://www.kltheguide.com.my/assets/img/explorekl/p/1024px-KL_Forest_Eco-Park_Canopy_Walk_9.jpg',
            S.of(context).tamanEkoRimbaLocation,
            '7.00 am - 6.00 pm',
            '+603- 2020 1606',
          ),
          ItemData7(
            S.of(context).aseanSculptureGarden,
            'https://www.kltheguide.com.my/assets/img/explorekl/p/asean-sculture-park.webp',
            S.of(context).aseanSculptureGardenLocation,
            '7:00 AM - 10:00 PM',
            '+6016-333 7328',
          ),
          ItemData7(
            S.of(context).klccPark,
            'https://www.kltheguide.com.my/assets/img/explorekl/p/1024px-Kuala_Lumpur._KLCC_Park._2019-12-09_22-22-42.jpg',
            S.of(context).klccParkLocation,
            '7.00 am - 10.00 pm ( Daily )',
            '',
          ),
        ],
      ),
    );
  }
}

class ItemData7 {
  final String text;
  final String imageUrl;
  final String location;
  final String hours;
  final String contact;

  ItemData7(this.text, this.imageUrl, this.location, this.hours, this.contact);
}

class MyList7 extends StatelessWidget {
  final List<ItemData7> items;

  MyList7({required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[50],
      child: ListView.builder(
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                    child: Image.network(
                      items[index].imageUrl,
                      fit: BoxFit.cover,
                      height: 200,
                      width: double.infinity,
                      errorBuilder: (context, error, stackTrace) => Container(
                        height: 200,
                        color: Colors.grey[300],
                        child: const Icon(Icons.error, size: 50),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          items[index].text,
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 12.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 18,
                              color: const Color.fromARGB(255, 0, 71, 133),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                '${S.of(context).location}: ${items[index].location}',
                                style: const TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.access_time,
                              size: 18,
                              color: const Color.fromARGB(255, 0, 71, 133),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                '${S.of(context).operatingHours}: ${items[index].hours}',
                                style: const TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                        if (items[index].contact.isNotEmpty) ...[
                          const SizedBox(height: 10.0),
                          InkWell(
                            onTap: () =>
                                _launchURL('tel:${items[index].contact}'),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.phone,
                                  size: 18,
                                  color: const Color.fromARGB(255, 0, 71, 133),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    '${S.of(context).contact}: ${items[index].contact}',
                                    style: const TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
