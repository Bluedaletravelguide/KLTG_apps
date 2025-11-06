import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:kltheguide/main.dart';
import 'generated/l10n.dart';
import 'camera_scanner_page.dart';
import 'travel_buddy_page.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  final List<String> imagesHighlights = [
    'https://www.kltheguide.com.my/assets/img/highlights/KLATGLANCE-01-2.jpg',
    'https://www.kltheguide.com.my/assets/img/highlights/GETTING-AROUND-KL.jpg',
    'https://www.kltheguide.com.my/assets/img/highlights/TRAVEL-TIPS-01.jpg',
  ];

  final List<String> imagesRmd = [
    'https://www.kltheguide.com.my/assets/img/recommendation/where-to-shop-in-kl.png',
    'https://www.kltheguide.com.my/assets/img/recommendation/9.nightout.png',
    'https://www.kltheguide.com.my/assets/img/recommendation/places-to-stay-in-kl.jpg',
    'https://www.kltheguide.com.my/assets/img/recommendation/Spa.jpg',
    'https://www.kltheguide.com.my/assets/img/recommendation/11.medical-tourism.png',
    'https://www.kltheguide.com.my/assets/img/recommendation/2.malaysian-festival.png',
  ];

  @override
  Widget build(BuildContext context) {
    final List<String> titlesHighlights = [
      S.of(context).klAtAGlance,
      S.of(context).gettingAroundKL,
      S.of(context).travelTips,
    ];

    final List<String> titlesRmd = [
      S.of(context).exploreKL,
      S.of(context).shopLikeLocals,
      S.of(context).placesToStay,
      S.of(context).spaTime,
      S.of(context).medicalTourism,
      S.of(context).beyondKL,
    ];

    return Scaffold(
      body: Stack(
        children: [
          Container(
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
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // Social Media Icons Section
                  Container(
                    margin:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildSocialButton(
                          icon: Icons.facebook_sharp,
                          color: const Color(0xFF1877F2),
                          onTap: () =>
                              _launchURL('https://www.facebook.com/kltheguide/'),
                        ),
                        _buildSocialButton(
                          icon: MyFlutterApp.instagram_1,
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFF58529),
                              Color(0xFFDD2A7B),
                              Color(0xFF8134AF)
                            ],
                          ),
                          onTap: () =>
                              _launchURL('https://www.instagram.com/kltheguide/'),
                        ),

                        // 📸 CAMERA BUTTON IN THE MIDDLE
                        _buildSocialButton(
                          icon: Icons.camera_alt_rounded,
                          color: const Color(0xFF004785),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const CameraScannerPage()),
                            );
                          },
                        ),

                        _buildSocialButton(
                          icon: MyFlutterApp.whatsapp,
                          color: const Color(0xFF25D366),
                          onTap: () => _launchURL(
                              'https://api.whatsapp.com/send?phone=60122200622'),
                        ),
                        _buildSocialButton(
                          icon: Icons.tiktok,
                          color: Colors.black,
                          onTap: () =>
                              _launchURL('https://www.tiktok.com/@kltheguide'),
                        ),
                        _buildSocialButton(
                          icon: Icons.public,
                          color: const Color.fromARGB(255, 0, 71, 133),
                          onTap: () => _launchURL('https://www.kltheguide.com.my/'),
                        ),
                      ],
                    ),
                  ),

                  // KL Highlights Section
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 16, 24, 12),
                    child: Row(
                      children: [
                        Container(
                          width: 4,
                          height: 24,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 0, 71, 133),
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          S.of(context).klHighlights,
                          style: const TextStyle(
                            color: Colors.black87,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ImageCarousel(images: imagesHighlights, titles: titlesHighlights),

                  // Recommendations Section
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 24, 24, 12),
                    child: Row(
                      children: [
                        Container(
                          width: 4,
                          height: 24,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 0, 71, 133),
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          S.of(context).recommendations,
                          style: const TextStyle(
                            color: Colors.black87,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ImageCarousel2(images: imagesRmd, titles: titlesRmd),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),

          // Floating Chat Button
          Positioned(
            right: 18,
            bottom: kBottomNavigationBarHeight + 10,
            child: FloatingActionButton.small(
              heroTag: 'chat-fab',
              elevation: 6,
              backgroundColor: const Color(0xFF004785),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const TravelBuddyPage()),
                );
              },
              child: const Icon(Icons.forum_outlined, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialButton({
    required IconData icon,
    Color? color,
    Gradient? gradient,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        splashColor: (color ?? Colors.grey).withOpacity(0.3),
        highlightColor: (color ?? Colors.grey).withOpacity(0.1),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: gradient != null
              ? ShaderMask(
            shaderCallback: (bounds) => gradient.createShader(bounds),
            child: Icon(icon, size: 32, color: Colors.white),
          )
              : Icon(icon, size: 32, color: color),
        ),
      ),
    );
  }
}

class ImageCarousel extends StatefulWidget {
  final List<String> images;
  final List<String> titles;

  const ImageCarousel({
    super.key,
    required this.images,
    required this.titles,
  });

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarouselSlider.builder(
          itemCount: widget.images.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/highlights-$index',
                        arguments: {'index': index, 'titles': widget.titles});
                  },
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: CachedNetworkImage(
                          imageUrl: widget.images[index],
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 320,
                          placeholder: (context, url) => Container(
                            height: 320,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Color.fromARGB(255, 0, 71, 133),
                                ),
                              ),
                            ),
                          ),
                          errorWidget: (context, url, error) => Container(
                            height: 320,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Icon(Icons.error, size: 50),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 16,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black.withOpacity(0.7),
                              ],
                            ),
                          ),
                          child: Text(
                            widget.titles[index],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5,
                              shadows: [
                                Shadow(
                                  color: Colors.black45,
                                  blurRadius: 8,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          options: CarouselOptions(
            height: 320,
            viewportFraction: 0.85,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 4),
            autoPlayAnimationDuration: const Duration(milliseconds: 1000),
            autoPlayCurve: Curves.easeInOutCubic,
            enlargeCenterPage: true,
            enlargeFactor: 0.25,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.images.asMap().entries.map((entry) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: _currentIndex == entry.key ? 24.0 : 8.0,
              height: 8.0,
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: _currentIndex == entry.key
                    ? const Color.fromARGB(255, 0, 71, 133)
                    : Colors.grey[300],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

class ImageCarousel2 extends StatefulWidget {
  final List<String> images;
  final List<String> titles;

  const ImageCarousel2({
    super.key,
    required this.images,
    required this.titles,
  });

  @override
  State<ImageCarousel2> createState() => _ImageCarouselState2();
}

class _ImageCarouselState2 extends State<ImageCarousel2> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarouselSlider.builder(
          itemCount: widget.images.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/rmd-$index',
                        arguments: {'index': index, 'titles': widget.titles});
                  },
                  borderRadius: BorderRadius.circular(16),
                  child: Stack(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: CachedNetworkImage(
                          imageUrl: widget.images[index],
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 200,
                          placeholder: (context, url) => Container(
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: const Center(
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Color.fromARGB(255, 0, 71, 133),
                                ),
                              ),
                            ),
                          ),
                          errorWidget: (context, url, error) => Container(
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: const Icon(Icons.error, size: 40),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 12,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black.withOpacity(0.7),
                              ],
                            ),
                          ),
                          child: Text(
                            widget.titles[index],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5,
                              shadows: [
                                Shadow(
                                  color: Colors.black45,
                                  blurRadius: 8,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          options: CarouselOptions(
            height: 200,
            viewportFraction: 0.85,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 4),
            autoPlayAnimationDuration: const Duration(milliseconds: 1000),
            autoPlayCurve: Curves.easeInOutCubic,
            enlargeCenterPage: true,
            enlargeFactor: 0.2,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.images.asMap().entries.map((entry) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: _currentIndex == entry.key ? 24.0 : 8.0,
              height: 8.0,
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: _currentIndex == entry.key
                    ? const Color.fromARGB(255, 0, 71, 133)
                    : Colors.grey[300],
              ),
            );
          }).toList(),
        ),
      ],
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