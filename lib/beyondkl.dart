import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:url_launcher/url_launcher.dart';

import 'generated/l10n.dart';

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
}

class CardListWidget extends StatelessWidget {
  final List<ApiData> data;

  const CardListWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: data.length,
        itemBuilder: (context, index) {
          final item = data[index];

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
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  if (item.location.isNotEmpty) {
                    _launchURL(item.location);
                  }
                },
                borderRadius: BorderRadius.circular(16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image with overlay gradient
                      Stack(
                        children: [
                          CachedNetworkImage(
                            imageUrl: item.image,
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
                          if (item.location.isNotEmpty)
                            Positioned(
                              top: 12,
                              right: 12,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 0, 71, 133),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      blurRadius: 8,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      'View Map',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
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
                            // Title with icon
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 0, 71, 133)
                                        .withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Icon(
                                    Icons.place,
                                    color: Color.fromARGB(255, 0, 71, 133),
                                    size: 20,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Text(
                                    item.title,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 0, 71, 133),
                                      letterSpacing: 0.3,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),

                            // Content/Description
                            if (item.content.isNotEmpty)
                              Container(
                                padding: const EdgeInsets.all(14),
                                decoration: BoxDecoration(
                                  color: Colors.grey[50],
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.grey[200]!,
                                    width: 1,
                                  ),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.info_outline,
                                      size: 20,
                                      color: Colors.grey[600],
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: Text(
                                        item.content.replaceAll('\\n', '\n'),
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey[700],
                                          height: 1.5,
                                          letterSpacing: 0.2,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                            // Location Button (if location exists)
                            if (item.location.isNotEmpty) ...[
                              const SizedBox(height: 16),
                              SizedBox(
                                width: double.infinity,
                                child: Material(
                                  color: const Color.fromARGB(255, 0, 71, 133),
                                  borderRadius: BorderRadius.circular(12),
                                  child: InkWell(
                                    onTap: () => _launchURL(item.location),
                                    borderRadius: BorderRadius.circular(12),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 14,
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
                                          SizedBox(width: 10),
                                          Text(
                                            'View on Map',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              letterSpacing: 0.5,
                                            ),
                                          ),
                                          SizedBox(width: 4),
                                          Icon(
                                            Icons.arrow_forward_rounded,
                                            color: Colors.white,
                                            size: 18,
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

class BeyondKL extends StatelessWidget {
  final List<Map<String, dynamic>> dataList = [
    {
      "name": S.current.islands,
      "image":
          "https://www.kltheguide.com.my/assets/img/beyondkl/ISLAND-01.jpg",
      "icon": Icons.beach_access,
    },
    {
      "name": S.current.hillStation,
      "image":
          "https://www.kltheguide.com.my/assets/img/beyondkl/HILL-STATION-01.jpg",
      "icon": Icons.landscape,
    },
    {
      "name": S.current.waterfall,
      "image":
          "https://www.kltheguide.com.my/assets/img/beyondkl/WATERFALL-01.jpg",
      "icon": Icons.water,
    },
    {
      "name": S.current.hiking,
      "image": "https://www.kltheguide.com.my/assets/img/beyondkl/HIKING.jpg",
      "icon": Icons.hiking,
    },
    {
      "name": S.current.extremeSports,
      "image":
          "https://www.kltheguide.com.my/assets/img/beyondkl/EXTREME-SPORT-2.webp",
      "icon": Icons.sports_motorsports,
    },
  ];

  BeyondKL({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 2,
        title: Text(
          S.of(context).beyondKL,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 71, 133),
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
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          itemCount: dataList.length,
          itemBuilder: (context, index) {
            final item = dataList[index];
            return CardItem(
              name: item["name"],
              image: item["image"],
              icon: item["icon"],
              index: index,
            );
          },
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String name;
  final String image;
  final IconData icon;
  final int index;

  const CardItem({
    super.key,
    required this.name,
    required this.image,
    required this.icon,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/beyondkl-$index',
                arguments: {'index': index});
          },
          borderRadius: BorderRadius.circular(20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                // Background Image
                Positioned.fill(
                  child: CachedNetworkImage(
                    imageUrl: image,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Container(
                      color: Colors.grey[300],
                      child: const Center(
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Color.fromARGB(255, 0, 71, 133),
                          ),
                        ),
                      ),
                    ),
                    errorWidget: (context, url, error) => Container(
                      color: Colors.grey[400],
                      child: const Icon(Icons.error, size: 50),
                    ),
                  ),
                ),

                // Gradient Overlay
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.7),
                        ],
                      ),
                    ),
                  ),
                ),

                // Content
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            icon,
                            color: const Color.fromARGB(255, 0, 71, 133),
                            size: 28,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                name,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.5,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black45,
                                      blurRadius: 8,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  Text(
                                    'Explore',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.9),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(width: 6),
                                  Icon(
                                    Icons.arrow_forward_rounded,
                                    color: Colors.white.withOpacity(0.9),
                                    size: 16,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String name;
  final String image;
  final String location;

  const DetailPage({
    super.key,
    required this.name,
    required this.image,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: const Color.fromARGB(255, 0, 71, 133),
      ),
      body: Center(
        child: Text(location),
      ),
    );
  }
}

class BeyondKL_I extends StatelessWidget {
  BeyondKL_I({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ApiData> dataList = [
      ApiData(
        title: S.of(context).pangkorIsland,
        content: S.of(context).pangkorIslandContent,
        image:
            "https://www.kltheguide.com.my/assets/img/beyondkl/i/pangkor.webp",
        location: "https://maps.app.goo.gl/rHbUNhRs3Tj1ywg69",
      ),
      ApiData(
        title: S.of(context).pulauRedang,
        content: S.of(context).pulauRedangContent,
        image: "https://www.kltheguide.com.my/assets/img/beyondkl/i/redang.jpg",
        location: "https://maps.app.goo.gl/3wB5KeBaBLT49yR58",
      ),
      ApiData(
        title: S.of(context).pulauLangkawi,
        content: S.of(context).pulauLangkawiContent,
        image: "https://www.kltheguide.com.my/assets/img/beyondkl/i/redang.jpg",
        location: "https://maps.app.goo.gl/Kmx69vmc9CWNp6LJ8",
      ),
      ApiData(
        title: S.of(context).sipadanIsland,
        content: S.of(context).sipadanIslandContent,
        image:
            "https://www.kltheguide.com.my/assets/img/beyondkl/i/sipadan.jpg",
        location: "https://maps.app.goo.gl/VbSXWmMNwAq7pk6D8",
      ),
      ApiData(
        title: S.of(context).mantananiIsland,
        content: S.of(context).mantananiIslandContent,
        image:
            "https://www.kltheguide.com.my/assets/img/beyondkl/i/mantanani1.jpg",
        location: "https://maps.app.goo.gl/HU8eQ5xBpqXfxvUv7",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 2,
        title: Text(
          S.of(context).islands,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 71, 133),
      ),
      body: CardListWidget(data: dataList),
    );
  }
}

class BeyondKL_HS extends StatelessWidget {
  BeyondKL_HS({super.key});

  List<ApiData> _buildDataList(BuildContext context) {
    return [
      ApiData(
        title: S.of(context).gentingHighlands,
        content: S.of(context).gentingHighlandsContent,
        image:
            "https://www.kltheguide.com.my/assets/img/beyondkl/hs/genting.jpg",
        location: "https://maps.app.goo.gl/UVBCR4wnuBBYP5Ka8",
      ),
      ApiData(
        title: S.of(context).bukitTinggi,
        content: S.of(context).bukitTinggiContent,
        image:
            "https://www.kltheguide.com.my/assets/img/beyondkl/hs/bukittinggi1.jpg",
        location: "https://maps.app.goo.gl/ooY7RjT7gxSo5eGo6",
      ),
      ApiData(
        title: S.of(context).fraserHill,
        content: S.of(context).fraserHillContent,
        image:
            "https://www.kltheguide.com.my/assets/img/beyondkl/hs/fraserhill.jpg",
        location: "https://maps.app.goo.gl/oUbq1qzrkK7wuV4H9",
      ),
      ApiData(
        title: S.of(context).cameronHighland,
        content: S.of(context).cameronHighlandContent,
        image:
            "https://www.kltheguide.com.my/assets/img/beyondkl/hs/cameron.jpg",
        location: "https://maps.app.goo.gl/CZQuL7oUem4ET6pV6",
      ),
      ApiData(
        title: S.of(context).maxwellHill,
        content: S.of(context).maxwellHillContent,
        image:
            "https://www.kltheguide.com.my/assets/img/beyondkl/hs/cameron.jpg",
        location: "https://maps.app.goo.gl/NHNwxBvPn4Qc23Zb6",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final dataList = _buildDataList(context);

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 2,
        title: Text(
          S.of(context).hillStation,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 71, 133),
      ),
      body: CardListWidget(data: dataList),
    );
  }
}

class BeyondKL_W extends StatelessWidget {
  BeyondKL_W({super.key});

  List<ApiData> _buildDataList(BuildContext context) {
    return [
      ApiData(
        title: S.of(context).sungaiPisangWaterfall,
        content: S.of(context).sungaiPisangContent,
        image:
            "https://www.kltheguide.com.my/assets/img/beyondkl/w/sungaipisang.jpg",
        location: "https://maps.app.goo.gl/Mx2BdsVN1WPNzBgA6",
      ),
      ApiData(
        title: S.of(context).jeramToi,
        content: S.of(context).jeramToiContent,
        image:
            "https://www.kltheguide.com.my/assets/img/beyondkl/w/jeramtoi.jpg",
        location: "https://maps.app.goo.gl/u4QKamLSrrF6RQqa6",
      ),
      ApiData(
        title: S.of(context).uluChepor,
        content: S.of(context).uluCheporContent,
        image:
            "https://www.kltheguide.com.my/assets/img/beyondkl/w/uluchepor.jpg",
        location: "https://maps.app.goo.gl/xyMVK89D9XoMgp188",
      ),
      ApiData(
        title: S.of(context).sungaiLembing,
        content: S.of(context).sungaiLembingContent,
        image:
            "https://www.kltheguide.com.my/assets/img/beyondkl/w/sungailembing.jpg",
        location: "https://maps.app.goo.gl/nuhAbMUbbA7ByYCCA",
      ),
      ApiData(
        title: S.of(context).sevenWellsWaterfall,
        content: S.of(context).sevenWellsContent,
        image:
            "https://www.kltheguide.com.my/assets/img/beyondkl/w/sevenwells1.jpg",
        location: "https://maps.app.goo.gl/eGkiZ5hRxmYQ8ips6",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final dataList = _buildDataList(context);

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 2,
        title: Text(
          S.of(context).waterfall,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 71, 133),
      ),
      body: CardListWidget(data: dataList),
    );
  }
}

class BeyondKL_H extends StatelessWidget {
  BeyondKL_H({super.key});

  List<ApiData> _buildDataList(BuildContext context) {
    return [
      ApiData(
        title: S.of(context).brogaHill,
        content: S.of(context).brogaHillContent,
        image:
            "https://www.kltheguide.com.my/assets/img/beyondkl/h/brogahill.jpg",
        location: "https://maps.app.goo.gl/tDdapXxffn8DEbtm6",
      ),
      ApiData(
        title: S.of(context).mountPulai,
        content: S.of(context).mountPulaiContent,
        image:
            "https://www.kltheguide.com.my/assets/img/beyondkl/h/mountpulai.jpg",
        location: "https://maps.app.goo.gl/evbpwftijzWyfmYKA",
      ),
      ApiData(
        title: S.of(context).panoramaHill,
        content: S.of(context).panoramaHillContent,
        image:
            "https://www.kltheguide.com.my/assets/img/beyondkl/h/panoramahill.jpg",
        location: "https://maps.app.goo.gl/fDAgtnbzyfwDiKar9",
      ),
      ApiData(
        title: S.of(context).mossyForest,
        content: S.of(context).mossyForestContent,
        image:
            "https://www.kltheguide.com.my/assets/img/beyondkl/h/mossyforest.jpg",
        location: "https://maps.app.goo.gl/YyURpsoqwtc9yv5Z8",
      ),
      ApiData(
        title: S.of(context).penangNationalPark,
        content: S.of(context).penangNationalParkContent,
        image:
            "https://www.kltheguide.com.my/assets/img/beyondkl/h/penangnational.jpg",
        location: "https://maps.app.goo.gl/UhZS5nanNDCRAgJHA",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final dataList = _buildDataList(context);

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 2,
        title: Text(
          S.of(context).hiking,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 71, 133),
      ),
      body: CardListWidget(data: dataList),
    );
  }
}

class BeyondKL_ES extends StatelessWidget {
  BeyondKL_ES({super.key});

  List<ApiData> _buildDataList(BuildContext context) {
    return [
      ApiData(
        title: S.of(context).kkbParaglidingPark,
        content: S.of(context).kkbParaglidingParkContent,
        image: "https://www.kltheguide.com.my/assets/img/beyondkl/es/1.webp",
        location: "https://maps.app.goo.gl/QXFGUuurwNCTMAT56",
      ),
      ApiData(
        title: S.of(context).whitewaterRafting,
        content: S.of(context).whitewaterRaftingContent,
        image: "https://www.kltheguide.com.my/assets/img/beyondkl/es/2.jpg",
        location: "https://maps.app.goo.gl/GLiYCoyCo5T4wjZ28",
      ),
      ApiData(
        title: S.of(context).jugraHill,
        content: S.of(context).jugraHillContent,
        image: "https://www.kltheguide.com.my/assets/img/beyondkl/es/3.webp",
        location: "https://maps.app.goo.gl/3TGSagXPnaYTre3f9",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final dataList = _buildDataList(context);

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 2,
        title: Text(
          S.of(context).extremeSports,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 71, 133),
      ),
      body: CardListWidget(data: dataList),
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
