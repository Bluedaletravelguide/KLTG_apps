// ignore_for_file: constant_identifier_names
import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:kltheguide/blog_page.dart';
import 'package:kltheguide/contact_us.dart';
import 'package:kltheguide/ebook_page.dart';
import 'package:kltheguide/explorekl.dart';
import 'package:kltheguide/shop.dart';
import 'package:kltheguide/spa.dart';
import 'package:kltheguide/stay.dart';
import 'package:kltheguide/beyondkl.dart';
import 'package:kltheguide/medicaltourism.dart';
import 'package:kltheguide/highlights.dart';
import 'package:kltheguide/home_page.dart';
import 'package:kltheguide/about_us.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:kltheguide/voucher.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';
import 'package:in_app_update/in_app_update.dart';
import 'package:kltheguide/maps_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  CachedNetworkImage.logLevel = CacheManagerLogLevel.debug;

  await FlutterDownloader.initialize(debug: true, ignoreSsl: true);

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.changeLocale(newLocale);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;

  void changeLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KL The Guide',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 0, 71, 133)),
        useMaterial3: true,
        // Enhanced navigation bar theme
        navigationBarTheme: NavigationBarThemeData(
          elevation: 8,
          backgroundColor: Colors.white,
          indicatorColor:
              const Color.fromARGB(255, 0, 71, 133).withOpacity(0.15),
          labelTextStyle: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 0, 71, 133),
              );
            }
            return const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
            );
          }),
        ),
      ),
      locale: _locale,
      supportedLocales: S.delegate.supportedLocales,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: const MyHomePage(title: 'Home'),
      routes: {
        '/highlights-0': (context) => GlancePage(),
        '/highlights-1': (context) => GetAround(),
        '/highlights-2': (context) => const TravelTips(),
        '/rmd-0': (context) => ExploreKL(),
        '/explorekl-0': (context) => ExploreKL_WTD(),
        '/explorekl-1': (context) => const ExploreKL_HS2(),
        '/explorekl-2': (context) => const ExploreKL_PWOR2(),
        '/explorekl-3': (context) => const ExploreKL_WTE2(),
        '/explorekl-4': (context) => const ExploreKL_NL2(),
        '/explorekl-5': (context) => const ExploreKL_KL4K2(),
        '/explorekl-6': (context) => const ExploreKL_SS2(),
        '/explorekl-7': (context) => const ExploreKL_P2(),
        '/rmd-1': (context) => const Shop(),
        '/rmd-2': (context) => const Stay(),
        '/rmd-3': (context) => const Spa(),
        '/rmd-4': (context) => const MedicalT(),
        '/rmd-5': (context) => BeyondKL(),
        '/beyondkl-0': (context) => BeyondKL_I(),
        '/beyondkl-1': (context) => BeyondKL_HS(),
        '/beyondkl-2': (context) => BeyondKL_W(),
        '/beyondkl-3': (context) => BeyondKL_H(),
        '/beyondkl-4': (context) => BeyondKL_ES(),
        '/ebook-0': (context) =>
            const Ebook_view(category: 'kltg', name: 'KL The Guide'),
        '/ebook-1': (context) =>
            const Ebook_view(category: 'kv4l', name: 'Klang Valley 4 Locals'),
        '/ebook-2': (context) =>
            const Ebook_view(category: 'mktg', name: 'Melaka The Guide'),
        '/ebook-3': (context) =>
            const Ebook_view(category: 'tptg', name: 'Taiping The Guide'),
        '/ebook-4': (context) =>
            const Ebook_view(category: 'uztg', name: 'Uzbekistan The Guide'),
        '/ebook-5': (context) =>
            const Ebook_view(category: 'kntg', name: 'Keningau The Guide'),
        '/ebook-6': (context) =>
            const Ebook_view(category: 'twtg', name: 'Tawau The Guide'),
        '/ebook-7': (context) =>
            const Ebook_view(category: 'tbtg', name: 'Tambunan The Guide'),
        '/ebook-8': (context) =>
            const Ebook_view(category: 'hstg', name: 'Hulu Selangor The Guide'),
        '/ebook-9': (context) =>
            const Ebook_view(category: 'prtg', name: 'Perak The Guide'),
        '/ebook-10': (context) =>
            const Ebook_view(category: 'sbtg', name: 'Seremban The Guide'),
        '/ebook-11': (context) => const Ebook_view(
            category: 'kstg', name: 'Kuala Selangor The Guide'),
        '/ebook-12': (context) =>
            const Ebook_view(category: 'klgt', name: 'Kuala Langat The Guide'),
        '/ebook-13': (context) =>
            const Ebook_view(category: 'kztg', name: 'Kazakhstan The Guide'),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {
  int currentPageIndex = 0;

  void _selectLanguage(String language) {
    setState(() {
      Locale newLocale;
      Map<String, Locale> localeMap = {
        'ms': Locale('ms', 'MY'),
        'zh': Locale('zh', 'CN'),
        'ta': Locale('ta', 'IN'),
        'hi': Locale('hi', 'IN'),
        'th': Locale('th', 'TH'),
        'fil': Locale('fil', 'FIL'),
        'id': Locale('id', 'ID'),
        'es': Locale('es', 'ES'),
        'pt': Locale('pt', 'BR'),
        'fr': Locale('fr', 'FR'),
        'ru': Locale('ru', 'RU'),
        'en': Locale('en', 'US'),
      };
      newLocale = localeMap[language] ?? Locale('en', 'US');
      MyApp.setLocale(context, newLocale);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.check_circle, color: Colors.white),
            const SizedBox(width: 12),
            Text({
              'ms': 'Bahasa Malaysia',
              'zh': '中文',
              'ta': 'தமிழ்',
              'hi': 'हिंदी',
              'th': 'ไทย.',
              'es': 'Español',
              'fil': 'Filipino',
              'id': 'Bahasa Indonesia',
              'pt': 'Português',
              'fr': 'français',
              'ru': 'русский',
              'en': 'English',
            }[language]!),
          ],
        ),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: const Color.fromARGB(255, 0, 71, 133),
      ),
    );

    Navigator.pop(context);
  }

  final String desiredVersion = '1.5.0';

  late BannerAd _bannerAd;
  DateTime? currentBackPressTime;
  bool isDialogShown = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    _bannerAd = BannerAd(
      adUnitId: 'ca-app-pub-7002644831588730/4427349537',
      size: AdSize.mediumRectangle,
      request: const AdRequest(),
      listener: const BannerAdListener(),
    );

    _bannerAd.load();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkVersionAndShowDialog();
      if (!isDialogShown) {
        fetchDataFromApi();
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showVoucherPopup();
    });
  }

  void _showVoucherPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 71, 133).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.local_offer,
                  color: Color.fromARGB(255, 0, 71, 133),
                ),
              ),
              const SizedBox(width: 12),
              const Expanded(
                child: Text(
                  'New Vouchers Available!',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          content: const Text(
            'New vouchers have been added. Check them out!',
            style: TextStyle(fontSize: 15),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Cancel',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                _navigateToVoucherScreen();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 71, 133),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
              child: const Text('View'),
            ),
          ],
        );
      },
    );
  }

  void _navigateToVoucherScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const VoucherScreen()),
    );
  }

  Future<void> _checkVersionAndShowDialog() async {
    try {
      AppUpdateInfo updateInfo = await InAppUpdate.checkForUpdate();
      if (updateInfo.updateAvailability == UpdateAvailability.updateAvailable) {
        if (updateInfo.immediateUpdateAllowed) {
          InAppUpdate.performImmediateUpdate();
        } else if (updateInfo.flexibleUpdateAllowed) {
          InAppUpdate.startFlexibleUpdate().then((_) {
            InAppUpdate.completeFlexibleUpdate();
          });
        }
      }
    } catch (e) {
      print("Error checking for updates: $e");
    }

    final packageInfo = await PackageInfo.fromPlatform();
    final currentVersion = packageInfo.version;
    final currentBuildNumber = packageInfo.buildNumber;

    final desiredVersionAndBuild = await _fetchDesiredVersionAndBuild();
    final String desiredVersion = desiredVersionAndBuild['version']!;
    final String desiredBuildNumber = desiredVersionAndBuild['buildNumber']!;

    if (_isUpdateRequired(currentVersion, desiredVersion, currentBuildNumber,
        desiredBuildNumber)) {
      _showUpdateDialog(context);
    }
  }

  Future<Map<String, String>> _fetchDesiredVersionAndBuild() async {
    final response = await http.post(
      Uri.parse('https://www.kltheguide.com.my/admin/functions.php'),
      body: {'appAdsSettings': 'appAdsSettings'},
    );

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      print(jsonData);

      return {
        'version': jsonData['desiredVersion'],
        'buildNumber': jsonData['desiredBuildNumber'],
      };
    } else {
      throw Exception('Failed to fetch desired version and build number');
    }
  }

  bool _isUpdateRequired(String currentVersion, String desiredVersion,
      String currentBuildNumber, String desiredBuildNumber) {
    List<int> currentVersionParts =
        currentVersion.split('.').map(int.parse).toList();
    List<int> desiredVersionParts =
        desiredVersion.split('.').map(int.parse).toList();

    for (int i = 0; i < currentVersionParts.length; i++) {
      if (currentVersionParts[i] < desiredVersionParts[i]) {
        return true;
      } else if (currentVersionParts[i] > desiredVersionParts[i]) {
        return false;
      }
    }

    return int.parse(currentBuildNumber) < int.parse(desiredBuildNumber);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      currentBackPressTime = null;
    }
  }

  void _showUpdateDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 71, 133).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.system_update,
                  color: Color.fromARGB(255, 0, 71, 133),
                ),
              ),
              const SizedBox(width: 12),
              const Expanded(
                child: Text(
                  'Update Required',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          content: const Text(
            'A new version of the app is available. Please update to enjoy new features of the app.',
            style: TextStyle(fontSize: 15),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Update Later',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                _launchURL(
                    'https://play.google.com/store/apps/details?id=my.com.kltheguide&hl=en&gl=US');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 71, 133),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
              child: const Text('Update Now'),
            ),
          ],
        );
      },
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: const Text('Welcome'),
          content: const Text('This is an example AlertDialog on app launch.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  Future<bool> _onWillPop() async {
    final now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Row(
            children: [
              Icon(Icons.info_outline, color: Colors.white),
              SizedBox(width: 12),
              Text('Press back again to exit'),
            ],
          ),
          duration: Duration(seconds: 2),
          behavior: SnackBarBehavior.floating,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      );
      return false;
    }
    return true;
  }

  Future<List<ImageData>> fetchImageUrls() async {
    try {
      final response = await http.post(
        Uri.parse('https://www.kltheguide.com.my/admin/functions.php'),
        body: {'appAdsURL': 'appAdsURL'},
      );

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        final List<ImageData> imageUrls = jsonData.map((item) {
          return ImageData(
            imageUrl: item['imageURL'] as String,
            actionUrl: item['URL'] as String,
          );
        }).toList();

        return imageUrls;
      } else {
        throw Exception('Failed to load image URLs from the API');
      }
    } catch (e) {
      print('Error fetching image URLs: $e');
      return [];
    }
  }

  Future<void> fetchDataFromApi() async {
    try {
      final response = await http.post(
        Uri.parse('https://www.kltheguide.com.my/admin/functions.php'),
        body: {'appAdsSettings': 'appAdsSettings'},
      );

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        var admobrandomswitch = jsonData['admobrandomswitch'];
        print(isDialogShown);
        int? switch2 = int.parse(admobrandomswitch);

        int delayInSeconds = 30;

        final Random random = Random();

        if (switch2 == 1) {
          if (random.nextInt(5) == 1) {
            if (isDialogShown) {
              _showWelcomeDialog(delayInSeconds);
            } else {
              _showWelcomeDialog(0);
              isDialogShown = true;
            }
          } else {
            final List<ImageData> imageDatas = await fetchImageUrls();
            if (imageDatas.isNotEmpty) {
              final randomImageData =
                  imageDatas[random.nextInt(imageDatas.length)];
              if (isDialogShown) {
                _showRandomPopup(delayInSeconds, randomImageData);
              } else {
                _showRandomPopup(0, randomImageData);
                isDialogShown = true;
              }
            }
          }
        } else {
          final List<ImageData> imageDatas = await fetchImageUrls();
          if (imageDatas.isNotEmpty) {
            final randomImageData =
                imageDatas[random.nextInt(imageDatas.length)];
            if (isDialogShown) {
              _showRandomPopup(delayInSeconds, randomImageData);
            } else {
              _showRandomPopup(0, randomImageData);
              isDialogShown = true;
            }
          }
        }
      } else {
        throw Exception('Failed to load data from the API');
      }
    } catch (e) {
      print('Error fetching data from API: $e');
    }
  }

  void _showRandomPopup(int delayInSeconds, ImageData imageData) async {
    Future.delayed(Duration(seconds: delayInSeconds), () async {
      if (imageData != 'null') {
        final randomImageUrl = imageData.imageUrl;

        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (BuildContext context) {
            return FutureBuilder<void>(
              future: Future.delayed(Duration(seconds: 0), () {}),
              builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  return WillPopScope(
                    onWillPop: () async {
                      return false;
                    },
                    child: AlertDialog(
                      shadowColor: Colors.transparent,
                      buttonPadding: EdgeInsets.zero,
                      contentPadding: EdgeInsets.zero,
                      actionsPadding: EdgeInsets.zero,
                      insetPadding: EdgeInsets.zero,
                      actionsAlignment: MainAxisAlignment.center,
                      backgroundColor: Colors.transparent,
                      content: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: GestureDetector(
                          child: Image.network(randomImageUrl),
                          onTap: () {
                            if (imageData.actionUrl.isNotEmpty) {
                              print(Uri.decodeFull(imageData.actionUrl));
                              _launchURL(Uri.decodeFull(imageData.actionUrl));
                            }
                          },
                        ),
                      ),
                      actions: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 8,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              fetchDataFromApi();
                            },
                            icon: const Icon(
                              Icons.close,
                              size: 24,
                              color: Color.fromARGB(255, 0, 71, 133),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
              },
            );
          },
        );
      }
    });
  }

  void _showWelcomeDialog(int delaySec) {
    Future.delayed(Duration(seconds: delaySec), () {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return WillPopScope(
            onWillPop: () async {
              return false;
            },
            child: AlertDialog(
              buttonPadding: EdgeInsets.zero,
              contentPadding: EdgeInsets.zero,
              actionsPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.zero,
              actionsAlignment: MainAxisAlignment.center,
              backgroundColor: Colors.transparent,
              content: Container(
                height: 250,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: AdWidget(
                    ad: _bannerAd,
                  ),
                ),
              ),
              actions: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 8,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      fetchDataFromApi();
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 24,
                      color: Color.fromARGB(255, 0, 71, 133),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "KL THE GUIDE",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 71, 133),
          iconTheme: const IconThemeData(color: Colors.white),
          elevation: 2,
          actions: const <Widget>[
            AppBarMore(),
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 0, 71, 133),
                      Color.fromARGB(255, 0, 95, 177),
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Icon(
                      Icons.language,
                      size: 48,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      S.of(context).pickALanguage,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Choose your preferred language',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  children: [
                    _buildLanguageTile('Bahasa Malaysia', '🇲🇾', 'ms'),
                    _buildLanguageTile('English', '🇬🇧', 'en'),
                    _buildLanguageTile('Mandarin', '🇨🇳', 'zh'),
                    _buildLanguageTile('Tamil', '🇮🇳', 'ta'),
                    _buildLanguageTile('Hindi', '🇮🇳', 'hi'),
                    _buildLanguageTile('Thai', '🇹🇭', 'th'),
                    _buildLanguageTile('Tagalog', '🇵🇭', 'fil'),
                    _buildLanguageTile('Bahasa Indonesia', '🇮🇩', 'id'),
                    _buildLanguageTile('Spanish', '🇪🇸', 'es'),
                    _buildLanguageTile('Portuguese', '🇵🇹', 'pt'),
                    _buildLanguageTile('French', '🇫🇷', 'fr'),
                    _buildLanguageTile('Russian', '🇷🇺', 'ru'),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child: NavigationBar(
            onDestinationSelected: (int index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            selectedIndex: currentPageIndex,
            destinations: <Widget>[
              NavigationDestination(
                selectedIcon:
                    Icon(Icons.home, color: Color.fromARGB(255, 0, 71, 133)),
                icon: Icon(Icons.home_outlined),
                label: S.of(context).home,
              ),
              NavigationDestination(
                selectedIcon:
                    Icon(Icons.article, color: Color.fromARGB(255, 0, 71, 133)),
                icon: Icon(Icons.article_outlined),
                label: S.of(context).blog,
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.map, color: Color.fromARGB(255, 0, 71, 133)),
                icon: Icon(Icons.map_outlined),
                // If you want i18n later, add a `maps` key to your ARB files; for now, literal is fine:
                label: 'Maps',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.menu_book,
                    color: Color.fromARGB(255, 0, 71, 133)),
                icon: Icon(Icons.menu_book_outlined),
                label: S.of(context).ebook,
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.discount,
                    color: Color.fromARGB(255, 0, 71, 133)),
                icon: Icon(Icons.discount_outlined),
                label: S.of(context).Contest,
              ),
            ],
          ),
        ),
        body: [
          HomeScreen(),
          const BlogListScreen(),
          const MapsPage(),
          Ebook(),
          VoucherScreen(),
        ][currentPageIndex],
      ),
    );
  }

  Widget _buildLanguageTile(String title, String flag, String code) {
    return ListTile(
      leading: Text(
        flag,
        style: const TextStyle(fontSize: 24),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 16,
        color: Colors.grey,
      ),
      onTap: () => _selectLanguage(code),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
    );
  }
}

class AppBarMore extends StatelessWidget {
  const AppBarMore({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: const Icon(Icons.more_vert),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 8,
      offset: const Offset(0, 50),
      onSelected: (value) {
        if (value == S.of(context).contactUs) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ContactUsPage(),
          ));
        } else if (value == S.of(context).aboutUs) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => AboutUsPage(),
          ));
        }
      },
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<String>>[
          PopupMenuItem<String>(
            value: S.of(context).aboutUs,
            child: Row(
              children: [
                Icon(
                  Icons.info_outline,
                  color: Color.fromARGB(255, 0, 71, 133),
                  size: 20,
                ),
                const SizedBox(width: 12),
                Text(
                  S.of(context).aboutUs,
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          PopupMenuItem<String>(
            value: S.of(context).contactUs,
            child: Row(
              children: [
                Icon(
                  Icons.contact_support_outlined,
                  color: Color.fromARGB(255, 0, 71, 133),
                  size: 20,
                ),
                const SizedBox(width: 12),
                Text(
                  S.of(context).contactUs,
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ];
      },
    );
  }
}

class MyFlutterApp {
  MyFlutterApp._();

  static const _kFontFam = 'MyFlutterApp';
  static const String? _kFontPkg = null;

  static const IconData instagram_1 =
      IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);

  static const IconData whatsapp =
      IconData(0xf232, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}

void _launchURL(url) async {
  var url2 = Uri.parse(url);
  if (await canLaunchUrl(url2)) {
    await launchUrl(url2, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}

class ImageData {
  final String imageUrl;
  final String actionUrl;

  ImageData({
    required this.imageUrl,
    required this.actionUrl,
  });
}
