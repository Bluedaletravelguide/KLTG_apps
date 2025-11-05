import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kltheguide/main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'generated/l10n.dart';

// ============ GLANCE PAGE ============
class GlancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          S.of(context).klAtAGlance,
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Hero Image with Overlay
              Stack(
                children: [
                  CachedNetworkImage(
                    imageUrl:
                        'https://www.kltheguide.com.my/assets/img/highlights/KLATGLANCE-01-2.jpg',
                    fit: BoxFit.cover,
                    height: 250,
                    width: double.infinity,
                    placeholder: (context, url) => Container(
                      height: 250,
                      color: Colors.grey.shade200,
                      child: Center(
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            const Color.fromARGB(255, 0, 71, 133),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.5),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    right: 20,
                    child: Text(
                      S.of(context).klAtAGlance,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1,
                        shadows: [
                          Shadow(
                            color: Colors.black54,
                            offset: Offset(0, 2),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              // Content Section
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            S.of(context).klDescription1,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.6,
                              color: Colors.grey.shade800,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            S.of(context).klDescription2,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.6,
                              color: Colors.grey.shade800,
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
      ),
    );
  }
}

// ============ GET AROUND PAGE ============
class GetAround extends StatefulWidget {
  const GetAround({super.key});

  @override
  State<GetAround> createState() => _GetAroundState();
}

class _GetAroundState extends State<GetAround> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          S.of(context).gettingAroundKL,
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
      body: MyList(context: context),
    );
  }
}

class MyList extends StatelessWidget {
  final BuildContext context;

  MyList({required this.context});

  @override
  Widget build(BuildContext context) {
    final List<ItemData> items = [
      ItemData(
        S.of(this.context).lrtTitle,
        'https://www.kltheguide.com.my/assets/img/highlights/getaround/1.-lrt.png',
        S.of(this.context).lrtDescription,
      ),
      ItemData(
        S.of(this.context).mrtTitle,
        'https://www.kltheguide.com.my/assets/img/highlights/getaround/2.-mrt.png',
        S.of(this.context).mrtDescription,
      ),
      ItemData(
        S.of(this.context).ktmKomuterTitle,
        'https://www.kltheguide.com.my/assets/img/highlights/getaround/3.-ktm-komuter.png',
        S.of(this.context).ktmKomuterDescription,
      ),
      ItemData(
        S.of(this.context).klMonorailTitle,
        'https://www.kltheguide.com.my/assets/img/highlights/getaround/4.-kl-monorail.png',
        S.of(this.context).klMonorailDescription,
      ),
      ItemData(
        S.of(this.context).rapidKLBusTitle,
        'https://www.kltheguide.com.my/assets/img/highlights/getaround/5.-rapid-kl-bus.png',
        S.of(this.context).rapidKLBusDescription,
      ),
    ];

    return Container(
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
      child: ListView.builder(
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
                    color: Colors.black.withOpacity(0.08),
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
                      // Image with badge
                      Stack(
                        children: [
                          CachedNetworkImage(
                            imageUrl: items[index].imageUrl,
                            fit: BoxFit.cover,
                            height: 200,
                            width: double.infinity,
                            placeholder: (context, url) => Container(
                              height: 200,
                              color: Colors.grey.shade200,
                              child: Center(
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    const Color.fromARGB(255, 0, 71, 133),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 16,
                            left: 16,
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
                                    Icons.directions_transit_rounded,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    'Option ${index + 1}',
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

                      // Content
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              items[index].text,
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade900,
                                letterSpacing: 0.5,
                              ),
                            ),
                            const SizedBox(height: 12.0),
                            Text(
                              items[index].content,
                              style: TextStyle(
                                fontSize: 16.0,
                                height: 1.5,
                                color: Colors.grey.shade700,
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
      ),
    );
  }
}

class ItemData {
  final String text;
  final String imageUrl;
  final String content;

  ItemData(this.text, this.imageUrl, this.content);
}

// ============ TRAVEL TIPS PAGE ============
class TravelTips extends StatefulWidget {
  const TravelTips({super.key});

  @override
  State<TravelTips> createState() => _TravelTipsState();
}

class _TravelTipsState extends State<TravelTips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          S.of(context).travelTips,
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
      body: MyList2(),
    );
  }
}

class MyList2 extends StatelessWidget {
  final List<ItemData2> items = [
    ItemData2(
      'Weather',
      'https://www.kltheguide.com.my/assets/img/highlights/traveltips/weather.png',
      '',
      'https://www.ventusky.com/',
      Icons.wb_sunny_rounded,
      Colors.orange,
    ),
    ItemData2(
      'Time Zone',
      'https://www.kltheguide.com.my/assets/img/highlights/traveltips/timezone.png',
      '',
      'https://www.timeanddate.com/',
      Icons.access_time_rounded,
      Colors.blue,
    ),
    ItemData2(
      'Currency',
      'https://www.kltheguide.com.my/assets/img/highlights/traveltips/currency-code.png',
      '',
      'https://www.xe.com/',
      Icons.payments_rounded,
      Colors.green,
    ),
    ItemData2(
      'Visa and Passport',
      'https://www.kltheguide.com.my/assets/img/highlights/traveltips/visa-and-passports.png',
      '',
      'https://www.imi.gov.my/',
      Icons.card_travel_rounded,
      Colors.purple,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => _launchURL(items[index].goto),
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: items[index].color.withOpacity(0.2),
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
                          // Image Section
                          Stack(
                            children: [
                              CachedNetworkImage(
                                imageUrl: items[index].imageUrl,
                                fit: BoxFit.cover,
                                height: 200,
                                width: double.infinity,
                                placeholder: (context, url) => Container(
                                  height: 200,
                                  color: Colors.grey.shade200,
                                  child: Center(
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        items[index].color,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 16,
                                left: 16,
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: items[index].color,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        blurRadius: 8,
                                        offset: const Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    items[index].icon,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // Content
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _getLocalizedTitle(index, context),
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade900,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                                const SizedBox(height: 12.0),
                                Text(
                                  _getLocalizedContent(index, context),
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    height: 1.5,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.open_in_new_rounded,
                                      color: items[index].color,
                                      size: 18,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      'Learn More',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: items[index].color,
                                      ),
                                    ),
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
              ),
            ),
          );
        },
      ),
    );
  }

  String _getLocalizedTitle(int index, BuildContext context) {
    switch (index) {
      case 0:
        return S.of(context).weatherTitle;
      case 1:
        return S.of(context).timeZoneTitle;
      case 2:
        return S.of(context).currencyTitle;
      case 3:
        return S.of(context).visaAndPassportTitle;
      default:
        return '';
    }
  }

  String _getLocalizedContent(int index, BuildContext context) {
    switch (index) {
      case 0:
        return S.of(context).weatherDescription;
      case 1:
        return S.of(context).timeZoneDescription;
      case 2:
        return S.of(context).currencyDescription;
      case 3:
        return S.of(context).visaAndPassportDescription;
      default:
        return '';
    }
  }
}

class ItemData2 {
  final String text;
  final String imageUrl;
  final String content;
  final String goto;
  final IconData icon;
  final Color color;

  ItemData2(
      this.text, this.imageUrl, this.content, this.goto, this.icon, this.color);
}

// ============ SHARED WIDGETS ============
class ApiData {
  final String title;
  final String content;
  final String image;
  final String location;

  ApiData({
    required this.location,
    required this.title,
    required this.content,
    required this.image,
  });

  factory ApiData.fromJson(Map<String, dynamic> json) {
    return ApiData(
      title: json['title'] ?? '',
      content: json['content'] ?? '',
      image: json['image'] ?? '',
      location: json['location'] ?? '',
    );
  }
}

class CardListWidget extends StatelessWidget {
  final List<ApiData> data;

  const CardListWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: data.length,
      itemBuilder: (context, index) {
        final item = data[index];

        return Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: GestureDetector(
            onTap: () {
              if (item.location != '') {
                _launchURL(item.location);
              }
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
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
                      CachedNetworkImage(
                        imageUrl: item.image,
                        fit: BoxFit.cover,
                        height: 200,
                        width: double.infinity,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.title,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade900,
                              ),
                            ),
                            const SizedBox(height: 12.0),
                            Text(
                              item.content.replaceAll('\\n', '\n'),
                              style: TextStyle(
                                fontSize: 16,
                                height: 1.5,
                                color: Colors.grey.shade700,
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
          ),
        );
      },
    );
  }
}

class CardItem extends StatelessWidget {
  final String name;
  final String image;
  final int index;

  const CardItem({
    super.key,
    required this.name,
    required this.image,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        elevation: 3,
        margin: const EdgeInsets.all(10),
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.black.withOpacity(0.5),
                child: Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
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

void _launchURL(url) async {
  var url2 = Uri.parse(url);
  if (await canLaunchUrl(url2)) {
    await launchUrl(url2, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}
