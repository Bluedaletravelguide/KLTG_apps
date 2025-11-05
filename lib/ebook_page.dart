// ignore_for_file: camel_case_types

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:http/http.dart' as http;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:kltheguide/main.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class ApiData {
  final String title;
  final String content;
  final String image;

  ApiData({
    required this.title,
    required this.content,
    required this.image,
  });

  factory ApiData.fromJson(Map<String, dynamic> json) {
    return ApiData(
      title: json['title'] ?? '',
      content: json['content'] ?? '',
      image: json['image'] ?? '',
    );
  }
}

Future<List<ApiData>> fetchData(bodyparse) async {
  final response = await http.post(
    Uri.parse('https://www.kltheguide.com.my/admin/functions.php'),
    body: {bodyparse: bodyparse},
  );

  if (response.statusCode == 200) {
    final List<dynamic> jsonData = jsonDecode(response.body);
    return jsonData.map((json) => ApiData.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load data');
  }
}

Future<List<ApiData>> fetchData2(bodyparse, category) async {
  final response = await http.post(
    Uri.parse('https://www.kltheguide.com.my/admin/functions.php'),
    body: {bodyparse: bodyparse, 'category': category},
  );

  if (response.statusCode == 200) {
    final List<dynamic> jsonData = jsonDecode(response.body);
    return jsonData.map((json) => ApiData.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load data');
  }
}

class CardListWidget extends StatelessWidget {
  final List<ApiData> data;

  const CardListWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: data.length,
      itemBuilder: (context, index) {
        final item = data[index];
        print(item.image);
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: GestureDetector(
            onTap: () {
              if (item.content != '') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PdfViewerPage(
                      pdfUrl: item.content,
                      pdfTitle: item.title,
                    ),
                  ),
                );
              } else {
                final snackBar = SnackBar(
                  content: Row(
                    children: [
                      const Icon(Icons.picture_as_pdf_outlined,
                          color: Colors.white),
                      const SizedBox(width: 12),
                      const Text('PDF not available'),
                    ],
                  ),
                  backgroundColor: Colors.red[700],
                  behavior: SnackBarBehavior.floating,
                  duration: const Duration(seconds: 3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  margin: const EdgeInsets.all(16),
                  action: SnackBarAction(
                    label: 'Close',
                    textColor: Colors.white,
                    onPressed: () {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    },
                  ),
                );

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 20,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        child: CachedNetworkImage(
                          imageUrl: item.image,
                          fit: BoxFit.cover,
                          height: 220,
                          width: double.infinity,
                          placeholder: (context, url) => Container(
                            height: 220,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.grey[200]!,
                                  Colors.grey[100]!,
                                ],
                              ),
                            ),
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
                            color: Colors.grey[200],
                            child: const Icon(
                              Icons.broken_image_outlined,
                              size: 48,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      if (item.content != '')
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
                                  Icons.picture_as_pdf,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                const SizedBox(width: 4),
                                const Text(
                                  'PDF',
                                  style: TextStyle(
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
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            item.title,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 71, 133),
                              height: 1.3,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 0, 71, 133)
                                .withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Color.fromARGB(255, 0, 71, 133),
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
}

class Ebook extends StatelessWidget {
  final List<Map<String, dynamic>> dataList = [
    {
      "name": "KL The Guide",
      "image": "https://www.kltheguide.com.my/assets/img/ebook/kltg/KLTG44.jpg"
    },
    {
      "name": "Klang Valley 4 Locals",
      "image": "https://www.kltheguide.com.my/assets/img/ebook/kv4l/35.jpg"
    },
    {
      "name": "Melaka The Guide",
      "image": "https://www.kltheguide.com.my/assets/img/ebook/mktg/4.jpg"
    },
    {
      "name": "Taiping The Guide",
      "image": "https://www.kltheguide.com.my/assets/img/ebook/tptg/1.jpg"
    },
    {
      "name": "Uzbekistan The Guide",
      "image": "https://www.kltheguide.com.my/assets/img/ebook/uztg/3.jpg"
    },
    {
      "name": "Keningau The Guide",
      "image": "https://www.kltheguide.com.my/assets/img/ebook/kntg/1.jpg"
    },
    {
      "name": "Tawau The Guide",
      "image": "https://www.kltheguide.com.my/assets/img/ebook/twtg/1.jpg"
    },
    {
      "name": "Tambunan The Guide",
      "image": "https://www.kltheguide.com.my/assets/img/ebook/tbtg/1.jpg"
    },
    {
      "name": "Hulu Selangor The Guide",
      "image": "https://www.kltheguide.com.my/assets/img/ebook/hstg/1.jpg"
    },
    {
      "name": "Perak The Guide",
      "image": "https://www.kltheguide.com.my/assets/img/ebook/prtg/1.jpg"
    },
    {
      "name": "Seremban The Guide",
      "image": "https://www.kltheguide.com.my/assets/img/ebook/sbtg/1.jpg"
    },
    {
      "name": "Kuala Selangor The Guide",
      "image": "https://www.kltheguide.com.my/assets/img/ebook/kstg/1.jpg"
    },
    {
      "name": "Kuala Langat The Guide",
      "image": "https://www.kltheguide.com.my/assets/img/ebook/klgt/1.jpg"
    },
    {
      "name": "Kazakhstan The Guide",
      "image": "https://www.kltheguide.com.my/assets/img/ebook/kztg/1.jpg"
    },
  ];

  Ebook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.65,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          final item = dataList[index];
          return CardItem(
            name: item["name"],
            image: item["image"],
            index: index,
          );
        },
      ),
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
      onTap: () {
        Navigator.pushNamed(context, '/ebook-$index', arguments: {
          'index': {index}
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 15,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            fit: StackFit.expand,
            children: [
              CachedNetworkImage(
                imageUrl: image,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.grey[300]!,
                        Colors.grey[200]!,
                      ],
                    ),
                  ),
                  child: Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        const Color.fromARGB(255, 0, 71, 133),
                      ),
                    ),
                  ),
                ),
                errorWidget: (context, url, error) => Container(
                  color: Colors.grey[300],
                  child: const Icon(
                    Icons.book_outlined,
                    size: 48,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.7),
                    ],
                    stops: const [0.5, 1.0],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          height: 1.2,
                          shadows: [
                            Shadow(
                              color: Colors.black45,
                              offset: Offset(0, 1),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.25),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.5),
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.auto_stories,
                              color: Colors.white,
                              size: 14,
                            ),
                            const SizedBox(width: 6),
                            const Text(
                              'Read Now',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
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
    );
  }
}

class DetailPage extends StatelessWidget {
  final String name;
  final String image;
  final int index;

  const DetailPage({
    super.key,
    required this.name,
    required this.image,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
      ),
      body: Center(
        child: Text('Detail for $index'),
      ),
    );
  }
}

class Ebook_view extends StatefulWidget {
  final String category;
  final String name;
  const Ebook_view({super.key, required this.category, required this.name});

  @override
  State<Ebook_view> createState() => _Ebook_viewState();
}

class _Ebook_viewState extends State<Ebook_view> {
  late Future<List<ApiData>> _data;

  @override
  void initState() {
    super.initState();
    _data = fetchData2('appEbook', widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: Text(widget.name, style: const TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 0, 71, 133),
        elevation: 0,
        actions: const <Widget>[
          AppBarMore(),
        ],
      ),
      body: FutureBuilder<List<ApiData>>(
        future: _data,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      const Color.fromARGB(255, 0, 71, 133),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Loading ebooks...',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error_outline,
                    size: 64,
                    color: Colors.red[300],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Error: ${snapshot.error}',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          } else {
            return CardListWidget(data: snapshot.data ?? []);
          }
        },
      ),
    );
  }
}

class PdfViewerPage extends StatefulWidget {
  final String pdfUrl;
  final String pdfTitle;
  const PdfViewerPage({
    super.key,
    required this.pdfUrl,
    required this.pdfTitle,
  });

  @override
  _PdfViewerPageState createState() => _PdfViewerPageState();
}

class _PdfViewerPageState extends State<PdfViewerPage> {
  String? filePath;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title:
            Text(widget.pdfTitle, style: const TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 0, 71, 133),
        elevation: 0,
        actions: const <Widget>[
          AppBarMore(),
        ],
      ),
      body: const PDF(
        swipeHorizontal: true,
      ).cachedFromUrl(
        widget.pdfUrl,
        placeholder: (double progress) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                value: progress / 100,
                valueColor: AlwaysStoppedAnimation<Color>(
                  const Color.fromARGB(255, 0, 71, 133),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                '${progress.toStringAsFixed(0)}%',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 71, 133),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Loading PDF...',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        errorWidget: (dynamic error) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.error_outline,
                size: 64,
                color: Colors.red[300],
              ),
              const SizedBox(height: 16),
              Text(
                'Error loading PDF',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  error.toString(),
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyAdBanner extends StatefulWidget {
  final dynamic index;

  const MyAdBanner({super.key, this.index});

  @override
  _MyAdBannerState createState() => _MyAdBannerState();
}

class _MyAdBannerState extends State<MyAdBanner> {
  late BannerAd _bannerAd;
  bool isAdLoaded = false;

  @override
  void initState() {
    super.initState();

    MobileAds.instance.initialize();

    _bannerAd = BannerAd(
      adUnitId: 'ca-app-pub-7002644831588730/4427349537',
      size: AdSize.fullBanner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            isAdLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, error) {},
      ),
    );

    _bannerAd.load();
  }

  @override
  void dispose() {
    _bannerAd.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      content: SizedBox(
        height: _bannerAd.size.height.toDouble(),
        width: _bannerAd.size.width.toDouble(),
        child: AdWidget(
          ad: _bannerAd,
        ),
      ),
      actions: [
        if (isAdLoaded)
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 0, 71, 133),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            ),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/ebook-${widget.index}',
                  arguments: {
                    'index': {widget.index}
                  });
            },
            child: const Text(
              'Continue',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
      ],
    );
  }
}
