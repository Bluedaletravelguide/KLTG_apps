// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `KL The Guide`
  String get appTitle {
    return Intl.message(
      'KL The Guide',
      name: 'appTitle',
      desc: 'The title of the application',
      args: [],
    );
  }

  /// `Pick a Language`
  String get pickALanguage {
    return Intl.message(
      'Pick a Language',
      name: 'pickALanguage',
      desc: 'Title for the language selection drawer',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: 'The home screen label',
      args: [],
    );
  }

  /// `Bookmarks`
  String get bookmarks {
    return Intl.message(
      'Bookmarks',
      name: 'bookmarks',
      desc: 'The label for the bookmarks section',
      args: [],
    );
  }

  /// `Blog`
  String get blog {
    return Intl.message(
      'Blog',
      name: 'blog',
      desc: 'The label for the blog section',
      args: [],
    );
  }

  /// `E-Book`
  String get ebook {
    return Intl.message(
      'E-Book',
      name: 'ebook',
      desc: 'The label for the e-book section',
      args: [],
    );
  }

  /// `About Us`
  String get aboutUs {
    return Intl.message(
      'About Us',
      name: 'aboutUs',
      desc: 'The label for the about us section',
      args: [],
    );
  }

  /// `Contact Us`
  String get contactUs {
    return Intl.message(
      'Contact Us',
      name: 'contactUs',
      desc: 'The label for the contact us section',
      args: [],
    );
  }

  /// `Update Required`
  String get updateRequired {
    return Intl.message(
      'Update Required',
      name: 'updateRequired',
      desc: 'Message shown when an app update is required',
      args: [],
    );
  }

  /// `A new version of the app is available. Please update to enjoy new features.`
  String get updateAvailable {
    return Intl.message(
      'A new version of the app is available. Please update to enjoy new features.',
      name: 'updateAvailable',
      desc: 'Message informing the user that an update is available',
      args: [],
    );
  }

  /// `Update Later`
  String get updateLater {
    return Intl.message(
      'Update Later',
      name: 'updateLater',
      desc: 'Label for button to postpone the app update',
      args: [],
    );
  }

  /// `Update Now`
  String get updateNow {
    return Intl.message(
      'Update Now',
      name: 'updateNow',
      desc: 'Label for button to update the app immediately',
      args: [],
    );
  }

  /// `Press back again to exit`
  String get pressBackAgainToExit {
    return Intl.message(
      'Press back again to exit',
      name: 'pressBackAgainToExit',
      desc: 'Message displayed when the user presses the back button to exit',
      args: [],
    );
  }

  /// `KL Highlights`
  String get klHighlights {
    return Intl.message(
      'KL Highlights',
      name: 'klHighlights',
      desc: 'Label for the section displaying KL highlights',
      args: [],
    );
  }

  /// `Recommendations`
  String get recommendations {
    return Intl.message(
      'Recommendations',
      name: 'recommendations',
      desc: 'Label for the recommendations section',
      args: [],
    );
  }

  /// `Explore KL`
  String get exploreKL {
    return Intl.message(
      'Explore KL',
      name: 'exploreKL',
      desc: 'Title for the Explore KL image',
      args: [],
    );
  }

  /// `Shop Like Locals`
  String get shopLikeLocals {
    return Intl.message(
      'Shop Like Locals',
      name: 'shopLikeLocals',
      desc: 'Title for the Shop Like Locals image',
      args: [],
    );
  }

  /// `Places To Stay`
  String get placesToStay {
    return Intl.message(
      'Places To Stay',
      name: 'placesToStay',
      desc: 'Title for the Places To Stay image',
      args: [],
    );
  }

  /// `Spa Time`
  String get spaTime {
    return Intl.message(
      'Spa Time',
      name: 'spaTime',
      desc: 'Title for the Spa Time image',
      args: [],
    );
  }

  /// `Medical Tourism`
  String get medicalTourism {
    return Intl.message(
      'Medical Tourism',
      name: 'medicalTourism',
      desc: 'Title for the Medical Tourism image',
      args: [],
    );
  }

  /// `Beyond KL`
  String get beyondKL {
    return Intl.message(
      'Beyond KL',
      name: 'beyondKL',
      desc: 'Title for the Beyond KL image',
      args: [],
    );
  }

  /// `KL @ A Glance`
  String get klAtAGlance {
    return Intl.message(
      'KL @ A Glance',
      name: 'klAtAGlance',
      desc: 'Title for KL @ A Glance image in highlights',
      args: [],
    );
  }

  /// `Getting Around KL`
  String get gettingAroundKL {
    return Intl.message(
      'Getting Around KL',
      name: 'gettingAroundKL',
      desc: 'Title for Getting Around KL image in highlights',
      args: [],
    );
  }

  /// `Travel Tips`
  String get travelTips {
    return Intl.message(
      'Travel Tips',
      name: 'travelTips',
      desc: 'Title for Travel Tips image in highlights',
      args: [],
    );
  }

  /// `Our Company`
  String get ourCompany {
    return Intl.message(
      'Our Company',
      name: 'ourCompany',
      desc: 'Heading for the \'Our Company\' section',
      args: [],
    );
  }

  /// `KL The Guide is a quarterly guidebook, first published in August 2007. We are a free travel guidebook that helps travellers make their travel plans around Malaysia s capital city, Kuala Lumpur. KL The Guide includes travel tips, places to explore, kid-friendly locations, hotels, and more. With KL The Guide, navigating the city becomes easier.`
  String get ourCompanyDescription {
    return Intl.message(
      'KL The Guide is a quarterly guidebook, first published in August 2007. We are a free travel guidebook that helps travellers make their travel plans around Malaysia s capital city, Kuala Lumpur. KL The Guide includes travel tips, places to explore, kid-friendly locations, hotels, and more. With KL The Guide, navigating the city becomes easier.',
      name: 'ourCompanyDescription',
      desc: 'Description of the company and the guide',
      args: [],
    );
  }

  /// `Find Us`
  String get findUs {
    return Intl.message(
      'Find Us',
      name: 'findUs',
      desc: 'Heading for the \'Find Us\' section',
      args: [],
    );
  }

  /// `App Version: {version}+{buildNumber}`
  String appVersion(String version, String buildNumber) {
    return Intl.message(
      'App Version: $version+$buildNumber',
      name: 'appVersion',
      desc: 'Text displaying the app version and build number',
      args: [version, buildNumber],
    );
  }

  /// `Error loading version`
  String get errorLoadingVersion {
    return Intl.message(
      'Error loading version',
      name: 'errorLoadingVersion',
      desc: 'Message displayed if there\'s an error loading the app version',
      args: [],
    );
  }

  /// `Islands`
  String get islands {
    return Intl.message(
      'Islands',
      name: 'islands',
      desc: 'Title for the Islands section',
      args: [],
    );
  }

  /// `Hill Station`
  String get hillStation {
    return Intl.message(
      'Hill Station',
      name: 'hillStation',
      desc: 'Title for the Hill Station section',
      args: [],
    );
  }

  /// `Waterfall`
  String get waterfall {
    return Intl.message(
      'Waterfall',
      name: 'waterfall',
      desc: 'Title for the Waterfall section',
      args: [],
    );
  }

  /// `Hiking`
  String get hiking {
    return Intl.message(
      'Hiking',
      name: 'hiking',
      desc: 'Title for the Hiking section',
      args: [],
    );
  }

  /// `Extreme Sports`
  String get extremeSports {
    return Intl.message(
      'Extreme Sports',
      name: 'extremeSports',
      desc: 'Title for the Extreme Sports section',
      args: [],
    );
  }

  /// `Error loading data`
  String get errorLoadingData {
    return Intl.message(
      'Error loading data',
      name: 'errorLoadingData',
      desc: 'Message shown when there is an error loading data',
      args: [],
    );
  }

  /// `Loading data...`
  String get loadingData {
    return Intl.message(
      'Loading data...',
      name: 'loadingData',
      desc: 'Message shown while loading data',
      args: [],
    );
  }

  /// `Email: enquiry@bluedale.com.my`
  String get email {
    return Intl.message(
      'Email: enquiry@bluedale.com.my',
      name: 'email',
      desc: 'Text for the company\'s email contact',
      args: [],
    );
  }

  /// `Whatsapp: +6012-220 0622`
  String get whatsapp {
    return Intl.message(
      'Whatsapp: +6012-220 0622',
      name: 'whatsapp',
      desc: 'Text for the company\'s WhatsApp contact',
      args: [],
    );
  }

  /// `Phone: +603-78869219`
  String get phone {
    return Intl.message(
      'Phone: +603-78869219',
      name: 'phone',
      desc: 'Text for the company\'s phone contact',
      args: [],
    );
  }

  /// `address`
  String get address {
    return Intl.message(
      'address',
      name: 'address',
      desc: 'Text for the company\'s address',
      args: [],
    );
  }

  /// `Monday-Friday: 9:00AM - 6:00PM`
  String get workingHours {
    return Intl.message(
      'Monday-Friday: 9:00AM - 6:00PM',
      name: 'workingHours',
      desc: 'Text for the company\'s working hours',
      args: [],
    );
  }

  /// `What To Do`
  String get whatToDo {
    return Intl.message(
      'What To Do',
      name: 'whatToDo',
      desc: 'Title for the What To Do page in Explore KL',
      args: [],
    );
  }

  /// `Loading...`
  String get loading {
    return Intl.message(
      'Loading...',
      name: 'loading',
      desc: 'Message displayed while the data is being loaded',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: 'Label for the details page',
      args: [],
    );
  }

  /// `Historical Sites`
  String get historicalSites {
    return Intl.message(
      'Historical Sites',
      name: 'historicalSites',
      desc: 'Title for the page displaying historical sites in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Dataran Merdeka, also known as Merdeka Square, is KL s most well-known landmark.`
  String get dataranMerdekaDescription {
    return Intl.message(
      'Dataran Merdeka, also known as Merdeka Square, is KL s most well-known landmark.',
      name: 'dataranMerdekaDescription',
      desc:
          'Description for Dataran Merdeka, highlighting its historical significance in Kuala Lumpur.',
      args: [],
    );
  }

  /// `The Kuala Lumpur Railway Station, with its Moorish-style design, was the main railway hub until 2001...`
  String get klRailwayStationDescription {
    return Intl.message(
      'The Kuala Lumpur Railway Station, with its Moorish-style design, was the main railway hub until 2001...',
      name: 'klRailwayStationDescription',
      desc:
          'Description for the Kuala Lumpur Railway Station, noting its architectural style and historical role.',
      args: [],
    );
  }

  /// `The Royal Museum offers a glimpse into the royal lifestyle, located in the former National Palace...`
  String get royalMuseumDescription {
    return Intl.message(
      'The Royal Museum offers a glimpse into the royal lifestyle, located in the former National Palace...',
      name: 'royalMuseumDescription',
      desc:
          'Description of the Royal Museum, providing insights into its significance as a former royal palace.',
      args: [],
    );
  }

  /// `The Sultan Abdul Samad Building, built in 1897, features Gothic, Western, and Moorish architecture...`
  String get sultanAbdulSamadDescription {
    return Intl.message(
      'The Sultan Abdul Samad Building, built in 1897, features Gothic, Western, and Moorish architecture...',
      name: 'sultanAbdulSamadDescription',
      desc:
          'Description for the Sultan Abdul Samad Building, mentioning its architectural influences and historical value.',
      args: [],
    );
  }

  /// `The National Monument commemorates Malaysia s fallen soldiers during the struggle for independence...`
  String get tuguNegaraDescription {
    return Intl.message(
      'The National Monument commemorates Malaysia s fallen soldiers during the struggle for independence...',
      name: 'tuguNegaraDescription',
      desc:
          'Description for Tugu Negara (National Monument), focusing on its purpose to honor fallen soldiers.',
      args: [],
    );
  }

  /// `The Queen Victoria Fountain, completed in 1904, features two tiers and gargoyles on its foundation...`
  String get victoriaFountainDescription {
    return Intl.message(
      'The Queen Victoria Fountain, completed in 1904, features two tiers and gargoyles on its foundation...',
      name: 'victoriaFountainDescription',
      desc:
          'Description for Queen Victoria Fountain, outlining its architectural details and historical significance.',
      args: [],
    );
  }

  /// `The Ilham Baru Tower is a 58-story skyscraper and the third tallest building in the KLCC area...`
  String get ilhamBaruTowerDescription {
    return Intl.message(
      'The Ilham Baru Tower is a 58-story skyscraper and the third tallest building in the KLCC area...',
      name: 'ilhamBaruTowerDescription',
      desc:
          'Description for Ilham Baru Tower, mentioning its height and architectural relevance in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Bangunan Sulaiman is a British colonial monument built in 1933, known for its Syariah court hosting...`
  String get bangunanSulaimanDescription {
    return Intl.message(
      'Bangunan Sulaiman is a British colonial monument built in 1933, known for its Syariah court hosting...',
      name: 'bangunanSulaimanDescription',
      desc:
          'Description for Bangunan Sulaiman, detailing its colonial architecture and historical significance.',
      args: [],
    );
  }

  /// `Central Market, built in 1892, is a popular tourist attraction known for local handicrafts...`
  String get centralMarketDescription {
    return Intl.message(
      'Central Market, built in 1892, is a popular tourist attraction known for local handicrafts...',
      name: 'centralMarketDescription',
      desc:
          'Description for Central Market (Pasar Seni), highlighting its historical importance and current function as a market for local crafts.',
      args: [],
    );
  }

  /// `Location: Jalan Raja, City Centre, 50050 Kuala Lumpur`
  String get locationJalanRaja {
    return Intl.message(
      'Location: Jalan Raja, City Centre, 50050 Kuala Lumpur',
      name: 'locationJalanRaja',
      desc: 'Location for Dataran Merdeka, providing the specific address.',
      args: [],
    );
  }

  /// `Location: Kampung Attap, 50000 Kuala Lumpur`
  String get locationKampungAttap {
    return Intl.message(
      'Location: Kampung Attap, 50000 Kuala Lumpur',
      name: 'locationKampungAttap',
      desc: 'Location for Kuala Lumpur Railway Station.',
      args: [],
    );
  }

  /// `Location: Jalan Istana, 50460 Kuala Lumpur`
  String get locationIstanaNegara {
    return Intl.message(
      'Location: Jalan Istana, 50460 Kuala Lumpur',
      name: 'locationIstanaNegara',
      desc: 'Location for the Royal Museum, previously the National Palace.',
      args: [],
    );
  }

  /// `Location: Perdana Botanical Garden, Jalan Parlimen, 50480 Kuala Lumpur`
  String get locationParliamentRoad {
    return Intl.message(
      'Location: Perdana Botanical Garden, Jalan Parlimen, 50480 Kuala Lumpur',
      name: 'locationParliamentRoad',
      desc: 'Location for Tugu Negara (National Monument).',
      args: [],
    );
  }

  /// `Location: City Centre, 50050 Kuala Lumpur`
  String get locationCityCentre {
    return Intl.message(
      'Location: City Centre, 50050 Kuala Lumpur',
      name: 'locationCityCentre',
      desc: 'Location for Victoria Fountain.',
      args: [],
    );
  }

  /// `Location: Ilham Tower, 8, Jalan Binjai, 50450 Kuala Lumpur`
  String get locationIlhamTower {
    return Intl.message(
      'Location: Ilham Tower, 8, Jalan Binjai, 50450 Kuala Lumpur',
      name: 'locationIlhamTower',
      desc: 'Location for Ilham Baru Tower.',
      args: [],
    );
  }

  /// `Location: Jalan Sultan Hishamuddin, Kampung Attap, 50000 Kuala Lumpur`
  String get locationSultanHishamuddin {
    return Intl.message(
      'Location: Jalan Sultan Hishamuddin, Kampung Attap, 50000 Kuala Lumpur',
      name: 'locationSultanHishamuddin',
      desc: 'Location for Bangunan Sulaiman.',
      args: [],
    );
  }

  /// `Location: No. 10, 1st-3rd floor, Jalan Hang Kasturi`
  String get locationJalanHangKasturi {
    return Intl.message(
      'Location: No. 10, 1st-3rd floor, Jalan Hang Kasturi',
      name: 'locationJalanHangKasturi',
      desc: 'Location for Central Market (Pasar Seni).',
      args: [],
    );
  }

  /// `Open 24 hours (Daily)`
  String get open24Hours {
    return Intl.message(
      'Open 24 hours (Daily)',
      name: 'open24Hours',
      desc: 'Indicates that the location is open 24 hours daily.',
      args: [],
    );
  }

  /// `Hours: 9:00 am - 5:00 pm (Daily)`
  String get hours900to500Daily {
    return Intl.message(
      'Hours: 9:00 am - 5:00 pm (Daily)',
      name: 'hours900to500Daily',
      desc: 'Operating hours from 9:00 am to 5:00 pm, daily.',
      args: [],
    );
  }

  /// `Hours: 7:00 am - 6:00 pm (Daily)`
  String get hours700to600Daily {
    return Intl.message(
      'Hours: 7:00 am - 6:00 pm (Daily)',
      name: 'hours700to600Daily',
      desc: 'Operating hours from 7:00 am to 6:00 pm, daily.',
      args: [],
    );
  }

  /// `Hours: 8:30 am - 5:30 pm (Monday - Friday)`
  String get hours830to530Weekdays {
    return Intl.message(
      'Hours: 8:30 am - 5:30 pm (Monday - Friday)',
      name: 'hours830to530Weekdays',
      desc:
          'Operating hours from 8:30 am to 5:30 pm, on weekdays (Monday - Friday).',
      args: [],
    );
  }

  /// `Hours: 10:00 am - 6:00 pm (Daily)`
  String get hours1000to600Daily {
    return Intl.message(
      'Hours: 10:00 am - 6:00 pm (Daily)',
      name: 'hours1000to600Daily',
      desc: 'Operating hours from 10:00 am to 6:00 pm, daily.',
      args: [],
    );
  }

  /// `Parks`
  String get parks {
    return Intl.message(
      'Parks',
      name: 'parks',
      desc: 'Title for the page displaying parks in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Taman Eko Rimba, Kuala Lumpur`
  String get tamanEkoRimba {
    return Intl.message(
      'Taman Eko Rimba, Kuala Lumpur',
      name: 'tamanEkoRimba',
      desc: 'Name of the Taman Eko Rimba park in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Kuala Lumpur, 50250 Kuala Lumpur, Federal Territory of Kuala Lumpur`
  String get tamanEkoRimbaLocation {
    return Intl.message(
      'Kuala Lumpur, 50250 Kuala Lumpur, Federal Territory of Kuala Lumpur',
      name: 'tamanEkoRimbaLocation',
      desc: 'Location for Taman Eko Rimba in Kuala Lumpur.',
      args: [],
    );
  }

  /// `ASEAN Sculpture Garden`
  String get aseanSculptureGarden {
    return Intl.message(
      'ASEAN Sculpture Garden',
      name: 'aseanSculptureGarden',
      desc: 'Name of the ASEAN Sculpture Garden.',
      args: [],
    );
  }

  /// `ASEAN Sculpture Garden, Persiaran Sultan Salahuddin, Taman Tasik Perdana, 50480 Kuala Lumpur`
  String get aseanSculptureGardenLocation {
    return Intl.message(
      'ASEAN Sculpture Garden, Persiaran Sultan Salahuddin, Taman Tasik Perdana, 50480 Kuala Lumpur',
      name: 'aseanSculptureGardenLocation',
      desc: 'Location for ASEAN Sculpture Garden in Kuala Lumpur.',
      args: [],
    );
  }

  /// `KLCC Park`
  String get klccPark {
    return Intl.message(
      'KLCC Park',
      name: 'klccPark',
      desc: 'Name of KLCC Park.',
      args: [],
    );
  }

  /// `Jalan Ampang, Kuala Lumpur City Centre, 50088 Kuala Lumpur`
  String get klccParkLocation {
    return Intl.message(
      'Jalan Ampang, Kuala Lumpur City Centre, 50088 Kuala Lumpur',
      name: 'klccParkLocation',
      desc: 'Location for KLCC Park in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Hours: 7:00 am - 6:00 pm`
  String get hours700to600 {
    return Intl.message(
      'Hours: 7:00 am - 6:00 pm',
      name: 'hours700to600',
      desc: 'Operating hours from 7:00 am to 6:00 pm.',
      args: [],
    );
  }

  /// `Hours: 7:00 am - 10:00 pm`
  String get hours700to1000 {
    return Intl.message(
      'Hours: 7:00 am - 10:00 pm',
      name: 'hours700to1000',
      desc: 'Operating hours from 7:00 am to 10:00 pm.',
      args: [],
    );
  }

  /// `KL 4 Kids`
  String get kl4kids {
    return Intl.message(
      'KL 4 Kids',
      name: 'kl4kids',
      desc:
          'Title for the page displaying kid-friendly places in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Aeon Fantasy`
  String get aeonFantasy {
    return Intl.message(
      'Aeon Fantasy',
      name: 'aeonFantasy',
      desc: 'Name of the Aeon Fantasy kid-friendly place in Kuala Lumpur.',
      args: [],
    );
  }

  /// `F41, Tingkat 1, AEON Alpha Angle Shopping Centre, Jln R1, Seksyen 1, Bandar Baru Wangsa Maju, 53300 Kuala Lumpur.`
  String get aeonFantasyLocation {
    return Intl.message(
      'F41, Tingkat 1, AEON Alpha Angle Shopping Centre, Jln R1, Seksyen 1, Bandar Baru Wangsa Maju, 53300 Kuala Lumpur.',
      name: 'aeonFantasyLocation',
      desc: 'Location for Aeon Fantasy.',
      args: [],
    );
  }

  /// `10.00 AM - 10.00 PM (Sun - Thur), 10.00 AM - 11.00 PM (Friday - Saturday)`
  String get aeonFantasyHours {
    return Intl.message(
      '10.00 AM - 10.00 PM (Sun - Thur), 10.00 AM - 11.00 PM (Friday - Saturday)',
      name: 'aeonFantasyHours',
      desc: 'Operating hours for Aeon Fantasy.',
      args: [],
    );
  }

  /// `KL Upside Down House`
  String get klUpsideDownHouse {
    return Intl.message(
      'KL Upside Down House',
      name: 'klUpsideDownHouse',
      desc:
          'Name of KL Upside Down House, a kid-friendly place in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Off, Jalan P Ramlee, &, Jalan Puncak, 50250 Kuala Lumpur`
  String get klUpsideDownHouseLocation {
    return Intl.message(
      'Off, Jalan P Ramlee, &, Jalan Puncak, 50250 Kuala Lumpur',
      name: 'klUpsideDownHouseLocation',
      desc: 'Location for KL Upside Down House.',
      args: [],
    );
  }

  /// `10 am - 10 pm (Daily)`
  String get klUpsideDownHouseHours {
    return Intl.message(
      '10 am - 10 pm (Daily)',
      name: 'klUpsideDownHouseHours',
      desc: 'Operating hours for KL Upside Down House.',
      args: [],
    );
  }

  /// `KL Tower Mini Zoo`
  String get klTowerMiniZoo {
    return Intl.message(
      'KL Tower Mini Zoo',
      name: 'klTowerMiniZoo',
      desc: 'Name of KL Tower Mini Zoo.',
      args: [],
    );
  }

  /// `Ground Floor, Menara Kuala Lumpur, WP, Jalan Puncak, 50250 Kuala Lumpur`
  String get klTowerMiniZooLocation {
    return Intl.message(
      'Ground Floor, Menara Kuala Lumpur, WP, Jalan Puncak, 50250 Kuala Lumpur',
      name: 'klTowerMiniZooLocation',
      desc: 'Location for KL Tower Mini Zoo.',
      args: [],
    );
  }

  /// `10 am - 9 pm (Daily)`
  String get klTowerMiniZooHours {
    return Intl.message(
      '10 am - 9 pm (Daily)',
      name: 'klTowerMiniZooHours',
      desc: 'Operating hours for KL Tower Mini Zoo.',
      args: [],
    );
  }

  /// `Petrosains KLCC`
  String get petrosainsKlcc {
    return Intl.message(
      'Petrosains KLCC',
      name: 'petrosainsKlcc',
      desc: 'Name of Petrosains KLCC, a kid-friendly place in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Level 4, Suria KLCC, PETRONAS Twin Towers, Kuala Lumpur City Centre, 50088, Kuala Lumpur`
  String get petrosainsKlccLocation {
    return Intl.message(
      'Level 4, Suria KLCC, PETRONAS Twin Towers, Kuala Lumpur City Centre, 50088, Kuala Lumpur',
      name: 'petrosainsKlccLocation',
      desc: 'Location for Petrosains KLCC.',
      args: [],
    );
  }

  /// `9.30am - 5.30pm (Tue - Sun)`
  String get petrosainsKlccHours {
    return Intl.message(
      '9.30am - 5.30pm (Tue - Sun)',
      name: 'petrosainsKlccHours',
      desc: 'Operating hours for Petrosains KLCC.',
      args: [],
    );
  }

  /// `Contact`
  String get contact {
    return Intl.message(
      'Contact',
      name: 'contact',
      desc: 'Label for the contact information of a kid-friendly place.',
      args: [],
    );
  }

  /// `Places Of Worship`
  String get placesOfWorship {
    return Intl.message(
      'Places Of Worship',
      name: 'placesOfWorship',
      desc: 'Title for the page displaying places of worship in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Muslim`
  String get muslim {
    return Intl.message(
      'Muslim',
      name: 'muslim',
      desc: 'Tab title for Muslim places of worship.',
      args: [],
    );
  }

  /// `Buddhist/Tao`
  String get buddhistTao {
    return Intl.message(
      'Buddhist/Tao',
      name: 'buddhistTao',
      desc: 'Tab title for Buddhist and Tao places of worship.',
      args: [],
    );
  }

  /// `Hindu`
  String get hindu {
    return Intl.message(
      'Hindu',
      name: 'hindu',
      desc: 'Tab title for Hindu places of worship.',
      args: [],
    );
  }

  /// `Others`
  String get others {
    return Intl.message(
      'Others',
      name: 'others',
      desc: 'Tab title for other places of worship.',
      args: [],
    );
  }

  /// `Masjid Negara`
  String get masjidNegara {
    return Intl.message(
      'Masjid Negara',
      name: 'masjidNegara',
      desc: 'Name of Masjid Negara (National Mosque) in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Jalan Perdana, Tasik Perdana, 50480 Kuala Lumpur`
  String get masjidNegaraLocation {
    return Intl.message(
      'Jalan Perdana, Tasik Perdana, 50480 Kuala Lumpur',
      name: 'masjidNegaraLocation',
      desc: 'Location for Masjid Negara in Kuala Lumpur.',
      args: [],
    );
  }

  /// `9.00 am - 11.00 pm (Sat-Thurs) / 2.45 pm - 6.00 pm (Friday)`
  String get masjidNegaraHours {
    return Intl.message(
      '9.00 am - 11.00 pm (Sat-Thurs) / 2.45 pm - 6.00 pm (Friday)',
      name: 'masjidNegaraHours',
      desc: 'Operating hours for Masjid Negara.',
      args: [],
    );
  }

  /// `Masjid Jamek`
  String get masjidJamek {
    return Intl.message(
      'Masjid Jamek',
      name: 'masjidJamek',
      desc: 'Name of Masjid Jamek, a mosque in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Jalan Tun Perak, City Centre, 50050 Kuala Lumpur`
  String get masjidJamekLocation {
    return Intl.message(
      'Jalan Tun Perak, City Centre, 50050 Kuala Lumpur',
      name: 'masjidJamekLocation',
      desc: 'Location for Masjid Jamek in Kuala Lumpur.',
      args: [],
    );
  }

  /// `10.00 am - 12.30 pm; 2.30 pm - 4.00 pm (Sat-Thurs) / Closed on Fridays`
  String get masjidJamekHours {
    return Intl.message(
      '10.00 am - 12.30 pm; 2.30 pm - 4.00 pm (Sat-Thurs) / Closed on Fridays',
      name: 'masjidJamekHours',
      desc: 'Operating hours for Masjid Jamek.',
      args: [],
    );
  }

  /// `Federal Territory Mosque Kuala Lumpur`
  String get federalTerritoryMosque {
    return Intl.message(
      'Federal Territory Mosque Kuala Lumpur',
      name: 'federalTerritoryMosque',
      desc: 'Name of the Federal Territory Mosque in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Jalan Sultan Mizan Zainal Abidin, Kompleks Kerajaan, Kuala Lumpur`
  String get federalTerritoryMosqueLocation {
    return Intl.message(
      'Jalan Sultan Mizan Zainal Abidin, Kompleks Kerajaan, Kuala Lumpur',
      name: 'federalTerritoryMosqueLocation',
      desc: 'Location for the Federal Territory Mosque in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Masjid Al Bukhari`
  String get masjidAlBukhari {
    return Intl.message(
      'Masjid Al Bukhari',
      name: 'masjidAlBukhari',
      desc: 'Name of Masjid Al Bukhari in Kuala Lumpur.',
      args: [],
    );
  }

  /// `1, Jalan Hang Tuah, Bukit Bintang, 55200 Kuala Lumpur`
  String get masjidAlBukhariLocation {
    return Intl.message(
      '1, Jalan Hang Tuah, Bukit Bintang, 55200 Kuala Lumpur',
      name: 'masjidAlBukhariLocation',
      desc: 'Location for Masjid Al Bukhari in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Masjid Jamek Abdullah Hukum - KL Eco City`
  String get masjidAbdullahHukum {
    return Intl.message(
      'Masjid Jamek Abdullah Hukum - KL Eco City',
      name: 'masjidAbdullahHukum',
      desc: 'Name of Masjid Jamek Abdullah Hukum in Kuala Lumpur.',
      args: [],
    );
  }

  /// `59200 Kuala Lumpur, Federal Territory of Kuala Lumpur`
  String get masjidAbdullahHukumLocation {
    return Intl.message(
      '59200 Kuala Lumpur, Federal Territory of Kuala Lumpur',
      name: 'masjidAbdullahHukumLocation',
      desc: 'Location for Masjid Jamek Abdullah Hukum.',
      args: [],
    );
  }

  /// `Masjid Asy-Syakirin KLCC`
  String get masjidAsySyakirin {
    return Intl.message(
      'Masjid Asy-Syakirin KLCC',
      name: 'masjidAsySyakirin',
      desc: 'Name of Masjid Asy-Syakirin in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Lot 41, Seksyen, 58, Jalan Pinang, 50450 Kuala Lumpur`
  String get masjidAsySyakirinLocation {
    return Intl.message(
      'Lot 41, Seksyen, 58, Jalan Pinang, 50450 Kuala Lumpur',
      name: 'masjidAsySyakirinLocation',
      desc: 'Location for Masjid Asy-Syakirin.',
      args: [],
    );
  }

  /// `Masjid Al-Firdaus`
  String get masjidAlFirdaus {
    return Intl.message(
      'Masjid Al-Firdaus',
      name: 'masjidAlFirdaus',
      desc: 'Name of Masjid Al-Firdaus in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Jalan Masjid Firdaus, Jalan 1/42, Segambut Luar, 51200 Kuala Lumpur`
  String get masjidAlFirdausLocation {
    return Intl.message(
      'Jalan Masjid Firdaus, Jalan 1/42, Segambut Luar, 51200 Kuala Lumpur',
      name: 'masjidAlFirdausLocation',
      desc: 'Location for Masjid Al-Firdaus.',
      args: [],
    );
  }

  /// `Masjid Jamiul Ehsan`
  String get masjidJamiulEhsan {
    return Intl.message(
      'Masjid Jamiul Ehsan',
      name: 'masjidJamiulEhsan',
      desc: 'Name of Masjid Jamiul Ehsan in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Jalan Pahang, Taman Setapak Indah Jaya, 53000 Kuala Lumpur`
  String get masjidJamiulEhsanLocation {
    return Intl.message(
      'Jalan Pahang, Taman Setapak Indah Jaya, 53000 Kuala Lumpur',
      name: 'masjidJamiulEhsanLocation',
      desc: 'Location for Masjid Jamiul Ehsan.',
      args: [],
    );
  }

  /// `Thean Hou Temple`
  String get theanHouTemple {
    return Intl.message(
      'Thean Hou Temple',
      name: 'theanHouTemple',
      desc: 'Name of Thean Hou Temple in Kuala Lumpur.',
      args: [],
    );
  }

  /// `65, Persiaran Endah, Taman Persiaran Desa, 50460 Kuala Lumpur`
  String get theanHouTempleLocation {
    return Intl.message(
      '65, Persiaran Endah, Taman Persiaran Desa, 50460 Kuala Lumpur',
      name: 'theanHouTempleLocation',
      desc: 'Location for Thean Hou Temple in Kuala Lumpur.',
      args: [],
    );
  }

  /// `8.00 am - 2.00 pm / 4.00 pm - 10.00 pm (Daily)`
  String get theanHouTempleHours {
    return Intl.message(
      '8.00 am - 2.00 pm / 4.00 pm - 10.00 pm (Daily)',
      name: 'theanHouTempleHours',
      desc: 'Operating hours for Thean Hou Temple.',
      args: [],
    );
  }

  /// `Guan Di Temple`
  String get guanDiTemple {
    return Intl.message(
      'Guan Di Temple',
      name: 'guanDiTemple',
      desc: 'Name of Guan Di Temple in Kuala Lumpur.',
      args: [],
    );
  }

  /// `168, Jalan Tun H S Lee, City Centre, 50000 Kuala Lumpur`
  String get guanDiTempleLocation {
    return Intl.message(
      '168, Jalan Tun H S Lee, City Centre, 50000 Kuala Lumpur',
      name: 'guanDiTempleLocation',
      desc: 'Location for Guan Di Temple.',
      args: [],
    );
  }

  /// `8.30 am - 5.30 pm (Weekdays) / Closed on Weekends`
  String get guanDiTempleHours {
    return Intl.message(
      '8.30 am - 5.30 pm (Weekdays) / Closed on Weekends',
      name: 'guanDiTempleHours',
      desc: 'Operating hours for Guan Di Temple.',
      args: [],
    );
  }

  /// `Buddhist Maha Vihara Temple`
  String get buddhistMahaViharaTemple {
    return Intl.message(
      'Buddhist Maha Vihara Temple',
      name: 'buddhistMahaViharaTemple',
      desc: 'Name of the Buddhist Maha Vihara Temple in Kuala Lumpur.',
      args: [],
    );
  }

  /// `123 Jalan Berhala, Brickfields, Kuala Lumpur`
  String get buddhistMahaViharaTempleLocation {
    return Intl.message(
      '123 Jalan Berhala, Brickfields, Kuala Lumpur',
      name: 'buddhistMahaViharaTempleLocation',
      desc: 'Location for the Buddhist Maha Vihara Temple.',
      args: [],
    );
  }

  /// `8.00 am - 2.00 pm / 5.00 pm - 9.00 pm (Daily)`
  String get buddhistMahaViharaTempleHours {
    return Intl.message(
      '8.00 am - 2.00 pm / 5.00 pm - 9.00 pm (Daily)',
      name: 'buddhistMahaViharaTempleHours',
      desc: 'Operating hours for the Buddhist Maha Vihara Temple.',
      args: [],
    );
  }

  /// `Sin Sze Si Ya Temple`
  String get sinSzeSiYaTemple {
    return Intl.message(
      'Sin Sze Si Ya Temple',
      name: 'sinSzeSiYaTemple',
      desc: 'Name of Sin Sze Si Ya Temple in Kuala Lumpur.',
      args: [],
    );
  }

  /// `113A, Jalan Tun H S Lee, City Centre, 50050 Kuala Lumpur`
  String get sinSzeSiYaTempleLocation {
    return Intl.message(
      '113A, Jalan Tun H S Lee, City Centre, 50050 Kuala Lumpur',
      name: 'sinSzeSiYaTempleLocation',
      desc: 'Location for Sin Sze Si Ya Temple in Kuala Lumpur.',
      args: [],
    );
  }

  /// `7.00 am - 5.00 pm (Daily)`
  String get sinSzeSiYaTempleHours {
    return Intl.message(
      '7.00 am - 5.00 pm (Daily)',
      name: 'sinSzeSiYaTempleHours',
      desc: 'Operating hours for Sin Sze Si Ya Temple.',
      args: [],
    );
  }

  /// `Sri Mahamariamman Temple`
  String get sriMahamariammanTemple {
    return Intl.message(
      'Sri Mahamariamman Temple',
      name: 'sriMahamariammanTemple',
      desc: 'Name of Sri Mahamariamman Temple in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Jalan Tun H S Lee, City Centre, 50000 Kuala Lumpur`
  String get sriMahamariammanTempleLocation {
    return Intl.message(
      'Jalan Tun H S Lee, City Centre, 50000 Kuala Lumpur',
      name: 'sriMahamariammanTempleLocation',
      desc: 'Location for Sri Mahamariamman Temple in Kuala Lumpur.',
      args: [],
    );
  }

  /// `6.00 am - 8.30 pm (Sun-Thurs) / 6.00 am - 9.30 pm (Friday) / 6.00 am - 9.00 pm (Sunday)`
  String get sriMahamariammanTempleHours {
    return Intl.message(
      '6.00 am - 8.30 pm (Sun-Thurs) / 6.00 am - 9.30 pm (Friday) / 6.00 am - 9.00 pm (Sunday)',
      name: 'sriMahamariammanTempleHours',
      desc: 'Operating hours for Sri Mahamariamman Temple.',
      args: [],
    );
  }

  /// `Batu Caves Temple`
  String get batuCavesTemple {
    return Intl.message(
      'Batu Caves Temple',
      name: 'batuCavesTemple',
      desc: 'Name of Batu Caves Temple.',
      args: [],
    );
  }

  /// `Gombak, 68100 Batu Caves, Selangor`
  String get batuCavesTempleLocation {
    return Intl.message(
      'Gombak, 68100 Batu Caves, Selangor',
      name: 'batuCavesTempleLocation',
      desc: 'Location for Batu Caves Temple in Selangor.',
      args: [],
    );
  }

  /// `Sri Kandaswamy Temple`
  String get sriKandaswamyTemple {
    return Intl.message(
      'Sri Kandaswamy Temple',
      name: 'sriKandaswamyTemple',
      desc: 'Name of Sri Kandaswamy Temple in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Brickfields, 50470 Kuala Lumpur`
  String get sriKandaswamyTempleLocation {
    return Intl.message(
      'Brickfields, 50470 Kuala Lumpur',
      name: 'sriKandaswamyTempleLocation',
      desc: 'Location for Sri Kandaswamy Temple in Brickfields, Kuala Lumpur.',
      args: [],
    );
  }

  /// `St Mary s Anglican Cathedral`
  String get stMarysAnglicanCathedral {
    return Intl.message(
      'St Mary s Anglican Cathedral',
      name: 'stMarysAnglicanCathedral',
      desc: 'Name of St Mary\'s Anglican Cathedral in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Jalan Raja, City Centre, 50050 Kuala Lumpur`
  String get stMarysAnglicanCathedralLocation {
    return Intl.message(
      'Jalan Raja, City Centre, 50050 Kuala Lumpur',
      name: 'stMarysAnglicanCathedralLocation',
      desc: 'Location for St Mary\'s Anglican Cathedral in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Wesley Methodist Church Kuala Lumpur`
  String get wesleyMethodistChurch {
    return Intl.message(
      'Wesley Methodist Church Kuala Lumpur',
      name: 'wesleyMethodistChurch',
      desc: 'Name of Wesley Methodist Church in Kuala Lumpur.',
      args: [],
    );
  }

  /// `2, Jalan Wesley, City Centre, 50150 Kuala Lumpur`
  String get wesleyMethodistChurchLocation {
    return Intl.message(
      '2, Jalan Wesley, City Centre, 50150 Kuala Lumpur',
      name: 'wesleyMethodistChurchLocation',
      desc: 'Location for Wesley Methodist Church in Kuala Lumpur.',
      args: [],
    );
  }

  /// `8.30 am - 4.30 pm (Mon-Fri) / 8.30 am - 12.30 pm (Sat) / 8.00 am - 10.30 am (Sun)`
  String get wesleyMethodistChurchHours {
    return Intl.message(
      '8.30 am - 4.30 pm (Mon-Fri) / 8.30 am - 12.30 pm (Sat) / 8.00 am - 10.30 am (Sun)',
      name: 'wesleyMethodistChurchHours',
      desc: 'Operating hours for Wesley Methodist Church.',
      args: [],
    );
  }

  /// `What To Eat`
  String get whatToEat {
    return Intl.message(
      'What To Eat',
      name: 'whatToEat',
      desc: 'Title for the page displaying what to eat in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Street Food`
  String get streetFood {
    return Intl.message(
      'Street Food',
      name: 'streetFood',
      desc: 'Tab title for street food.',
      args: [],
    );
  }

  /// `Cafes`
  String get cafes {
    return Intl.message(
      'Cafes',
      name: 'cafes',
      desc: 'Tab title for cafes.',
      args: [],
    );
  }

  /// `Restaurants`
  String get restaurants {
    return Intl.message(
      'Restaurants',
      name: 'restaurants',
      desc: 'Tab title for restaurants.',
      args: [],
    );
  }

  /// `Jalan Alor`
  String get jalanAlor {
    return Intl.message(
      'Jalan Alor',
      name: 'jalanAlor',
      desc: 'Name of Jalan Alor street food location.',
      args: [],
    );
  }

  /// `Bukit Bintang, Kuala Lumpur, Federal Territory of Kuala Lumpur`
  String get jalanAlorLocation {
    return Intl.message(
      'Bukit Bintang, Kuala Lumpur, Federal Territory of Kuala Lumpur',
      name: 'jalanAlorLocation',
      desc: 'Location of Jalan Alor.',
      args: [],
    );
  }

  /// `Taman Connaught Night Market`
  String get tamanConnaught {
    return Intl.message(
      'Taman Connaught Night Market',
      name: 'tamanConnaught',
      desc: 'Name of Taman Connaught Night Market.',
      args: [],
    );
  }

  /// `130, 108, Jalan Cerdas, Taman Connaught, 56000 Kuala Lumpur, Federal Territory of Kuala Lumpur`
  String get tamanConnaughtLocation {
    return Intl.message(
      '130, 108, Jalan Cerdas, Taman Connaught, 56000 Kuala Lumpur, Federal Territory of Kuala Lumpur',
      name: 'tamanConnaughtLocation',
      desc: 'Location for Taman Connaught Night Market.',
      args: [],
    );
  }

  /// `6.00 pm - 1.00 am (Wed)`
  String get tamanConnaughtHours {
    return Intl.message(
      '6.00 pm - 1.00 am (Wed)',
      name: 'tamanConnaughtHours',
      desc: 'Operating hours for Taman Connaught Night Market.',
      args: [],
    );
  }

  /// `Petaling Street`
  String get petalingStreet {
    return Intl.message(
      'Petaling Street',
      name: 'petalingStreet',
      desc: 'Name of Petaling Street.',
      args: [],
    );
  }

  /// `Jalan Petaling, City Centre, 50000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur`
  String get petalingStreetLocation {
    return Intl.message(
      'Jalan Petaling, City Centre, 50000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur',
      name: 'petalingStreetLocation',
      desc: 'Location for Petaling Street.',
      args: [],
    );
  }

  /// `Open 24 Hours (Daily)`
  String get petalingStreetHours {
    return Intl.message(
      'Open 24 Hours (Daily)',
      name: 'petalingStreetHours',
      desc: 'Operating hours for Petaling Street.',
      args: [],
    );
  }

  /// `Wildflowers KL`
  String get wildflowersKL {
    return Intl.message(
      'Wildflowers KL',
      name: 'wildflowersKL',
      desc: 'Name of Wildflowers KL Cafe.',
      args: [],
    );
  }

  /// `Jalan Petaling, 50000 Kuala Lumpur`
  String get wildflowersKLLocation {
    return Intl.message(
      'Jalan Petaling, 50000 Kuala Lumpur',
      name: 'wildflowersKLLocation',
      desc: 'Location for Wildflowers KL.',
      args: [],
    );
  }

  /// `12.00 pm - 12.00 am (Fri-Sat) 12.00 pm - 10.00 pm (Sun) 5.00 pm - 10.00 pm (Tues,Wed,Thurs) Monday (Closed)`
  String get wildflowersKLHours {
    return Intl.message(
      '12.00 pm - 12.00 am (Fri-Sat) 12.00 pm - 10.00 pm (Sun) 5.00 pm - 10.00 pm (Tues,Wed,Thurs) Monday (Closed)',
      name: 'wildflowersKLHours',
      desc: 'Operating hours for Wildflowers KL.',
      args: [],
    );
  }

  /// `Lisette s Café & Bakery`
  String get lisettesCafe {
    return Intl.message(
      'Lisette s Café & Bakery',
      name: 'lisettesCafe',
      desc: 'Name of Lisette\'s Café & Bakery.',
      args: [],
    );
  }

  /// `No. 8, Jalan Kemuja, Bangsar, 59000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur`
  String get lisettesCafeLocation {
    return Intl.message(
      'No. 8, Jalan Kemuja, Bangsar, 59000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur',
      name: 'lisettesCafeLocation',
      desc: 'Location for Lisette\'s Café & Bakery.',
      args: [],
    );
  }

  /// `8.00 am - 10.00 pm (Daily)`
  String get lisettesCafeHours {
    return Intl.message(
      '8.00 am - 10.00 pm (Daily)',
      name: 'lisettesCafeHours',
      desc: 'Operating hours for Lisette\'s Café & Bakery.',
      args: [],
    );
  }

  /// `Merchant s Lane`
  String get merchantsLane {
    return Intl.message(
      'Merchant s Lane',
      name: 'merchantsLane',
      desc: 'Name of Merchant\'s Lane Cafe.',
      args: [],
    );
  }

  /// `150, Jalan Petaling, City Centre, 50000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur`
  String get merchantsLaneLocation {
    return Intl.message(
      '150, Jalan Petaling, City Centre, 50000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur',
      name: 'merchantsLaneLocation',
      desc: 'Location for Merchant\'s Lane Cafe.',
      args: [],
    );
  }

  /// `8.00 am - 10.00 pm (Daily)`
  String get merchantsLaneHours {
    return Intl.message(
      '8.00 am - 10.00 pm (Daily)',
      name: 'merchantsLaneHours',
      desc: 'Operating hours for Merchant\'s Lane.',
      args: [],
    );
  }

  /// `Bijan Bar & Restaurant`
  String get bijanBar {
    return Intl.message(
      'Bijan Bar & Restaurant',
      name: 'bijanBar',
      desc: 'Name of Bijan Bar & Restaurant.',
      args: [],
    );
  }

  /// `No 3, Jalan Ceylon, Bukit Ceylon, 50200 Kuala Lumpur`
  String get bijanBarLocation {
    return Intl.message(
      'No 3, Jalan Ceylon, Bukit Ceylon, 50200 Kuala Lumpur',
      name: 'bijanBarLocation',
      desc: 'Location for Bijan Bar & Restaurant.',
      args: [],
    );
  }

  /// `12.00 PM - 11.00 PM (Daily)`
  String get bijanBarHours {
    return Intl.message(
      '12.00 PM - 11.00 PM (Daily)',
      name: 'bijanBarHours',
      desc: 'Operating hours for Bijan Bar & Restaurant.',
      args: [],
    );
  }

  /// `Songket Restaurant`
  String get songketRestaurant {
    return Intl.message(
      'Songket Restaurant',
      name: 'songketRestaurant',
      desc: 'Name of Songket Restaurant.',
      args: [],
    );
  }

  /// `31G, Plaza Crystavilla, 1, Jalan 22a/70a, Desa Sri Hartamas, 50480 Kuala Lumpur`
  String get songketRestaurantLocation {
    return Intl.message(
      '31G, Plaza Crystavilla, 1, Jalan 22a/70a, Desa Sri Hartamas, 50480 Kuala Lumpur',
      name: 'songketRestaurantLocation',
      desc: 'Location for Songket Restaurant.',
      args: [],
    );
  }

  /// `12.00 PM - 10.00 PM (Daily)`
  String get songketRestaurantHours {
    return Intl.message(
      '12.00 PM - 10.00 PM (Daily)',
      name: 'songketRestaurantHours',
      desc: 'Operating hours for Songket Restaurant.',
      args: [],
    );
  }

  /// `Manja Old Malaya`
  String get manjaOldMalaya {
    return Intl.message(
      'Manja Old Malaya',
      name: 'manjaOldMalaya',
      desc: 'Name of Manja Old Malaya.',
      args: [],
    );
  }

  /// `6, Lorong Raja Chulan, Kuala Lumpur, 50250 Kuala Lumpur`
  String get manjaOldMalayaLocation {
    return Intl.message(
      '6, Lorong Raja Chulan, Kuala Lumpur, 50250 Kuala Lumpur',
      name: 'manjaOldMalayaLocation',
      desc: 'Location for Manja Old Malaya.',
      args: [],
    );
  }

  /// `12.00 PM - 12.00 AM (Daily)`
  String get manjaOldMalayaHours {
    return Intl.message(
      '12.00 PM - 12.00 AM (Daily)',
      name: 'manjaOldMalayaHours',
      desc: 'Operating hours for Manja Old Malaya.',
      args: [],
    );
  }

  /// `Location`
  String get location {
    return Intl.message(
      'Location',
      name: 'location',
      desc: 'Label for the location of an establishment.',
      args: [],
    );
  }

  /// `Operating Hours`
  String get operatingHours {
    return Intl.message(
      'Operating Hours',
      name: 'operatingHours',
      desc: 'Label for the operating hours of an establishment.',
      args: [],
    );
  }

  /// `Website`
  String get website {
    return Intl.message(
      'Website',
      name: 'website',
      desc: 'Label for the website of an establishment.',
      args: [],
    );
  }

  /// `Night Life`
  String get nightLife {
    return Intl.message(
      'Night Life',
      name: 'nightLife',
      desc: 'Title for the page displaying night life options in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Bars`
  String get bars {
    return Intl.message(
      'Bars',
      name: 'bars',
      desc: 'Tab title for bars.',
      args: [],
    );
  }

  /// `Night Market`
  String get nightMarket {
    return Intl.message(
      'Night Market',
      name: 'nightMarket',
      desc: 'Tab title for night markets.',
      args: [],
    );
  }

  /// `Changkat, Bukit Bintang`
  String get changkatBukitBintang {
    return Intl.message(
      'Changkat, Bukit Bintang',
      name: 'changkatBukitBintang',
      desc:
          'Name of Changkat Bukit Bintang, a popular nightlife area in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Hosting themed nights, DJs, and live band shows, Changkat Bukit Bintang offers an exciting nightlife.`
  String get changkatBukitBintangDescription {
    return Intl.message(
      'Hosting themed nights, DJs, and live band shows, Changkat Bukit Bintang offers an exciting nightlife.',
      name: 'changkatBukitBintangDescription',
      desc: 'Description of the nightlife scene at Changkat Bukit Bintang.',
      args: [],
    );
  }

  /// `Bangsar`
  String get bangsar {
    return Intl.message(
      'Bangsar',
      name: 'bangsar',
      desc: 'Name of Bangsar, a popular nightlife destination.',
      args: [],
    );
  }

  /// `Bangsar and Mid Valley host trendy bars, pubs, and cocktail lounges. Most nightlife spots are concentrated around Jalan Telawi in Bangsar Baru.`
  String get bangsarDescription {
    return Intl.message(
      'Bangsar and Mid Valley host trendy bars, pubs, and cocktail lounges. Most nightlife spots are concentrated around Jalan Telawi in Bangsar Baru.',
      name: 'bangsarDescription',
      desc: 'Description of the nightlife in Bangsar.',
      args: [],
    );
  }

  /// `Ampang`
  String get ampang {
    return Intl.message(
      'Ampang',
      name: 'ampang',
      desc: 'Name of Ampang, a nightlife area.',
      args: [],
    );
  }

  /// `Ampang offers diverse nightlife, with rooftop bars, late-night clubs, and breathtaking views of Kuala Lumpur s skyline.`
  String get ampangDescription {
    return Intl.message(
      'Ampang offers diverse nightlife, with rooftop bars, late-night clubs, and breathtaking views of Kuala Lumpur s skyline.',
      name: 'ampangDescription',
      desc: 'Description of the nightlife in Ampang.',
      args: [],
    );
  }

  /// `Petaling Street transforms into a vibrant night market after dark, offering a variety of nightlife hotspots and entertainment.`
  String get petalingStreetDescription {
    return Intl.message(
      'Petaling Street transforms into a vibrant night market after dark, offering a variety of nightlife hotspots and entertainment.',
      name: 'petalingStreetDescription',
      desc: 'Description of the nightlife and market scene at Petaling Street.',
      args: [],
    );
  }

  /// `Marini s On 57`
  String get marinisOn57 {
    return Intl.message(
      'Marini s On 57',
      name: 'marinisOn57',
      desc: 'Name of Marini\'s On 57, a bar in Kuala Lumpur.',
      args: [],
    );
  }

  /// `57 Menara 3 Petronas Persiaran, Kuala Lumpur City Centre, 50088 Kuala Lumpur`
  String get marinisOn57Location {
    return Intl.message(
      '57 Menara 3 Petronas Persiaran, Kuala Lumpur City Centre, 50088 Kuala Lumpur',
      name: 'marinisOn57Location',
      desc: 'Location of Marini\'s On 57.',
      args: [],
    );
  }

  /// `Heli Lounge Bar`
  String get heliLoungeBar {
    return Intl.message(
      'Heli Lounge Bar',
      name: 'heliLoungeBar',
      desc: 'Name of Heli Lounge Bar, a bar in Kuala Lumpur.',
      args: [],
    );
  }

  /// `4 Menara KH, Jalan Sultan Ismail, Bukit Bintang, 50450 Kuala Lumpur`
  String get heliLoungeBarLocation {
    return Intl.message(
      '4 Menara KH, Jalan Sultan Ismail, Bukit Bintang, 50450 Kuala Lumpur',
      name: 'heliLoungeBarLocation',
      desc: 'Location of Heli Lounge Bar.',
      args: [],
    );
  }

  /// `Zeta Bar`
  String get zetaBar {
    return Intl.message(
      'Zeta Bar',
      name: 'zetaBar',
      desc: 'Name of Zeta Bar, a bar in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Level 5, 3, Jalan Stesen Sentral, Kuala Lumpur Sentral, 50470 Kuala Lumpur`
  String get zetaBarLocation {
    return Intl.message(
      'Level 5, 3, Jalan Stesen Sentral, Kuala Lumpur Sentral, 50470 Kuala Lumpur',
      name: 'zetaBarLocation',
      desc: 'Location of Zeta Bar.',
      args: [],
    );
  }

  /// `Connaught Night Market`
  String get connaughtNightMarket {
    return Intl.message(
      'Connaught Night Market',
      name: 'connaughtNightMarket',
      desc: 'Name of Connaught Night Market.',
      args: [],
    );
  }

  /// `Known for its selection of Chinese hawker fare, the Connaught Night Market also offers local desserts, snacks, and more.`
  String get connaughtNightMarketDescription {
    return Intl.message(
      'Known for its selection of Chinese hawker fare, the Connaught Night Market also offers local desserts, snacks, and more.',
      name: 'connaughtNightMarketDescription',
      desc: 'Description of Connaught Night Market.',
      args: [],
    );
  }

  /// `130, 108, Jalan Cerdas, Taman Connaught, 56000 Kuala Lumpur`
  String get connaughtNightMarketLocation {
    return Intl.message(
      '130, 108, Jalan Cerdas, Taman Connaught, 56000 Kuala Lumpur',
      name: 'connaughtNightMarketLocation',
      desc: 'Location of Connaught Night Market.',
      args: [],
    );
  }

  /// `Kasturi Walk`
  String get kasturiWalk {
    return Intl.message(
      'Kasturi Walk',
      name: 'kasturiWalk',
      desc: 'Name of Kasturi Walk, a night market in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Jalan Hang Kasturi, City Centre, 50050 Kuala Lumpur`
  String get kasturiWalkLocation {
    return Intl.message(
      'Jalan Hang Kasturi, City Centre, 50050 Kuala Lumpur',
      name: 'kasturiWalkLocation',
      desc: 'Location of Kasturi Walk.',
      args: [],
    );
  }

  /// `Open 24 Hours`
  String get kasturiWalkHours {
    return Intl.message(
      'Open 24 Hours',
      name: 'kasturiWalkHours',
      desc: 'Operating hours for Kasturi Walk.',
      args: [],
    );
  }

  /// `Sightseeing`
  String get sightseeing {
    return Intl.message(
      'Sightseeing',
      name: 'sightseeing',
      desc:
          'Title for the page displaying sightseeing options in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Must Visit`
  String get mustVisit {
    return Intl.message(
      'Must Visit',
      name: 'mustVisit',
      desc: 'Tab title for must-visit places.',
      args: [],
    );
  }

  /// `Museums`
  String get museums {
    return Intl.message(
      'Museums',
      name: 'museums',
      desc: 'Tab title for museums.',
      args: [],
    );
  }

  /// `KL Art Scene`
  String get klArtScene {
    return Intl.message(
      'KL Art Scene',
      name: 'klArtScene',
      desc: 'Tab title for KL Art Scene.',
      args: [],
    );
  }

  /// `KLCC`
  String get klcc {
    return Intl.message(
      'KLCC',
      name: 'klcc',
      desc: 'Name of KLCC, a popular destination in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Jalan Ampang, Golden Triangle, Kuala Lumpur City Centre, 50088`
  String get klccLocation {
    return Intl.message(
      'Jalan Ampang, Golden Triangle, Kuala Lumpur City Centre, 50088',
      name: 'klccLocation',
      desc: 'Location of KLCC.',
      args: [],
    );
  }

  /// `10:00 am to 10:00 pm`
  String get klccHours {
    return Intl.message(
      '10:00 am to 10:00 pm',
      name: 'klccHours',
      desc: 'Operating hours of KLCC.',
      args: [],
    );
  }

  /// `Istana Negara`
  String get istanaNegara {
    return Intl.message(
      'Istana Negara',
      name: 'istanaNegara',
      desc: 'Name of Istana Negara.',
      args: [],
    );
  }

  /// `Jalan Tuanku Abdul Halim, Bukit Damansara, 50480 Kuala Lumpur`
  String get istanaNegaraLocation {
    return Intl.message(
      'Jalan Tuanku Abdul Halim, Bukit Damansara, 50480 Kuala Lumpur',
      name: 'istanaNegaraLocation',
      desc: 'Location of Istana Negara.',
      args: [],
    );
  }

  /// `24 hours`
  String get istanaNegaraHours {
    return Intl.message(
      '24 hours',
      name: 'istanaNegaraHours',
      desc: 'Operating hours of Istana Negara.',
      args: [],
    );
  }

  /// `Tunku Abdul Rahman Putra Memorial`
  String get tunkuAbdulRahmanMemorial {
    return Intl.message(
      'Tunku Abdul Rahman Putra Memorial',
      name: 'tunkuAbdulRahmanMemorial',
      desc: 'Name of Tunku Abdul Rahman Putra Memorial.',
      args: [],
    );
  }

  /// `Jalan Dato Onn, 50480 Kuala Lumpur`
  String get tunkuAbdulRahmanMemorialLocation {
    return Intl.message(
      'Jalan Dato Onn, 50480 Kuala Lumpur',
      name: 'tunkuAbdulRahmanMemorialLocation',
      desc: 'Location of Tunku Abdul Rahman Putra Memorial.',
      args: [],
    );
  }

  /// `10.00am - 5.30pm (Tuesday to Sunday), Closed on Friday (12.00pm - 3.00pm)`
  String get tunkuAbdulRahmanMemorialHours {
    return Intl.message(
      '10.00am - 5.30pm (Tuesday to Sunday), Closed on Friday (12.00pm - 3.00pm)',
      name: 'tunkuAbdulRahmanMemorialHours',
      desc: 'Operating hours of Tunku Abdul Rahman Putra Memorial.',
      args: [],
    );
  }

  /// `Menara Kuala Lumpur/ KL Tower`
  String get klTower {
    return Intl.message(
      'Menara Kuala Lumpur/ KL Tower',
      name: 'klTower',
      desc: 'Name of KL Tower.',
      args: [],
    );
  }

  /// `No. 2 Jalan Punchak Off Jalan P.Ramlee 50250 Kuala Lumpur`
  String get klTowerLocation {
    return Intl.message(
      'No. 2 Jalan Punchak Off Jalan P.Ramlee 50250 Kuala Lumpur',
      name: 'klTowerLocation',
      desc: 'Location of KL Tower.',
      args: [],
    );
  }

  /// `11.00 am - 7.00 pm (Monday - Friday), 10.00 am - 10.00 pm (Saturday - Sunday)`
  String get klTowerHours {
    return Intl.message(
      '11.00 am - 7.00 pm (Monday - Friday), 10.00 am - 10.00 pm (Saturday - Sunday)',
      name: 'klTowerHours',
      desc: 'Operating hours of KL Tower.',
      args: [],
    );
  }

  /// `Ethnology of the Malay World Museum`
  String get ethnologyMuseum {
    return Intl.message(
      'Ethnology of the Malay World Museum',
      name: 'ethnologyMuseum',
      desc: 'Name of Ethnology of the Malay World Museum.',
      args: [],
    );
  }

  /// `Jalan Damansara, Tasik Perdana, 50480 Kuala Lumpur`
  String get ethnologyMuseumLocation {
    return Intl.message(
      'Jalan Damansara, Tasik Perdana, 50480 Kuala Lumpur',
      name: 'ethnologyMuseumLocation',
      desc: 'Location of Ethnology of the Malay World Museum.',
      args: [],
    );
  }

  /// `9.00 am - 5.00 pm (Tuesday - Sunday), Closed on Monday`
  String get ethnologyMuseumHours {
    return Intl.message(
      '9.00 am - 5.00 pm (Tuesday - Sunday), Closed on Monday',
      name: 'ethnologyMuseumHours',
      desc: 'Operating hours of Ethnology of the Malay World Museum.',
      args: [],
    );
  }

  /// `National Textiles Museum`
  String get textilesMuseum {
    return Intl.message(
      'National Textiles Museum',
      name: 'textilesMuseum',
      desc: 'Name of National Textiles Museum.',
      args: [],
    );
  }

  /// `26, Jalan Sultan Hishamuddin, City Centre, 50000 Kuala Lumpur`
  String get textilesMuseumLocation {
    return Intl.message(
      '26, Jalan Sultan Hishamuddin, City Centre, 50000 Kuala Lumpur',
      name: 'textilesMuseumLocation',
      desc: 'Location of National Textiles Museum.',
      args: [],
    );
  }

  /// `9.00 am - 6.00 pm (Daily)`
  String get textilesMuseumHours {
    return Intl.message(
      '9.00 am - 6.00 pm (Daily)',
      name: 'textilesMuseumHours',
      desc: 'Operating hours of National Textiles Museum.',
      args: [],
    );
  }

  /// `Museum of Asian Arts`
  String get museumOfAsianArts {
    return Intl.message(
      'Museum of Asian Arts',
      name: 'museumOfAsianArts',
      desc: 'Name of Museum of Asian Arts.',
      args: [],
    );
  }

  /// `Jalan Ilmu, 50603 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur`
  String get museumOfAsianArtsLocation {
    return Intl.message(
      'Jalan Ilmu, 50603 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur',
      name: 'museumOfAsianArtsLocation',
      desc: 'Location of Museum of Asian Arts.',
      args: [],
    );
  }

  /// `8.30 am - 5.00 pm (Monday - Thursday), 8.30am - 5.00pm (Friday)`
  String get museumOfAsianArtsHours {
    return Intl.message(
      '8.30 am - 5.00 pm (Monday - Thursday), 8.30am - 5.00pm (Friday)',
      name: 'museumOfAsianArtsHours',
      desc: 'Operating hours of Museum of Asian Arts.',
      args: [],
    );
  }

  /// `Urban Museum`
  String get urbanMuseum {
    return Intl.message(
      'Urban Museum',
      name: 'urbanMuseum',
      desc: 'Name of Urban Museum.',
      args: [],
    );
  }

  /// `3, Jalan Bedara, Bukit Bintang, 50200 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur`
  String get urbanMuseumLocation {
    return Intl.message(
      '3, Jalan Bedara, Bukit Bintang, 50200 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur',
      name: 'urbanMuseumLocation',
      desc: 'Location of Urban Museum.',
      args: [],
    );
  }

  /// `10.00 am - 8.30 pm (Tuesday - Sunday), Closed on Monday`
  String get urbanMuseumHours {
    return Intl.message(
      '10.00 am - 8.30 pm (Tuesday - Sunday), Closed on Monday',
      name: 'urbanMuseumHours',
      desc: 'Operating hours of Urban Museum.',
      args: [],
    );
  }

  /// `National Art Gallery`
  String get nationalArtGallery {
    return Intl.message(
      'National Art Gallery',
      name: 'nationalArtGallery',
      desc: 'Name of National Art Gallery.',
      args: [],
    );
  }

  /// `No. 2, Jalan Temerloh, Titiwangsa, 53200 Kuala Lumpur`
  String get nationalArtGalleryLocation {
    return Intl.message(
      'No. 2, Jalan Temerloh, Titiwangsa, 53200 Kuala Lumpur',
      name: 'nationalArtGalleryLocation',
      desc: 'Location of National Art Gallery.',
      args: [],
    );
  }

  /// `10.00 am - 4.00 pm (Tuesday - Sunday), Closed on Monday`
  String get nationalArtGalleryHours {
    return Intl.message(
      '10.00 am - 4.00 pm (Tuesday - Sunday), Closed on Monday',
      name: 'nationalArtGalleryHours',
      desc: 'Operating hours of National Art Gallery.',
      args: [],
    );
  }

  /// `OUR ArtProjects (The Zhongshan Building)`
  String get ourArtProjects {
    return Intl.message(
      'OUR ArtProjects (The Zhongshan Building)',
      name: 'ourArtProjects',
      desc: 'Name of OUR ArtProjects in The Zhongshan Building.',
      args: [],
    );
  }

  /// `80A, Jalan Rotan, Kampung Attap, 50460 Kuala Lumpur`
  String get ourArtProjectsLocation {
    return Intl.message(
      '80A, Jalan Rotan, Kampung Attap, 50460 Kuala Lumpur',
      name: 'ourArtProjectsLocation',
      desc: 'Location of OUR ArtProjects.',
      args: [],
    );
  }

  /// `11.00 am - 7.00 pm (Tuesday - Saturday), Closed on Sunday & Monday`
  String get ourArtProjectsHours {
    return Intl.message(
      '11.00 am - 7.00 pm (Tuesday - Saturday), Closed on Sunday & Monday',
      name: 'ourArtProjectsHours',
      desc: 'Operating hours of OUR ArtProjects.',
      args: [],
    );
  }

  /// `Kuala Lumpur city center (KL) is renowned for its tall, futuristic skyscrapers and modern structures. Yet, to experience KL, you are going to have to walk through its streets and roads to appreciate KL at its best. That's how you're going to be able to smell the food from the hawker stalls, appreciate the murals on some of the older buildings. The more you walk, the more you will come to realise that KL is not just about concrete skyscrapers, but is a work of architectural art. Sauntering along the streets, you would be able to take in the sights of KL better.`
  String get klDescription1 {
    return Intl.message(
      'Kuala Lumpur city center (KL) is renowned for its tall, futuristic skyscrapers and modern structures. Yet, to experience KL, you are going to have to walk through its streets and roads to appreciate KL at its best. That\'s how you\'re going to be able to smell the food from the hawker stalls, appreciate the murals on some of the older buildings. The more you walk, the more you will come to realise that KL is not just about concrete skyscrapers, but is a work of architectural art. Sauntering along the streets, you would be able to take in the sights of KL better.',
      name: 'klDescription1',
      desc: 'First description of the KL @ A Glance page.',
      args: [],
    );
  }

  /// `KL s establishment was almost an accident. In 1857, 87 Chinese prospectors, looking for tin, arrived at the meeting point of the Klang and Gombak rivers and set up camp, naming the place Kuala Lumpur, meaning 'muddy confluence'.`
  String get klDescription2 {
    return Intl.message(
      'KL s establishment was almost an accident. In 1857, 87 Chinese prospectors, looking for tin, arrived at the meeting point of the Klang and Gombak rivers and set up camp, naming the place Kuala Lumpur, meaning \'muddy confluence\'.',
      name: 'klDescription2',
      desc:
          'Second description of the KL @ A Glance page, describing the history of KL\'s establishment.',
      args: [],
    );
  }

  /// `Light Rail Transit (LRT)`
  String get lrtTitle {
    return Intl.message(
      'Light Rail Transit (LRT)',
      name: 'lrtTitle',
      desc: 'Title for the Light Rail Transit description.',
      args: [],
    );
  }

  /// `The Light Rail Transit (LRT) is one of the most commonly used public rail transport. The LRT is divided into two lines: Ampang/Sri Petaling and Kelana Jaya. This is the best means of transport if you are thinking of visiting places that aren’t within walking distance of Kuala Lumpur city centre. Helpline: 03-7885 2585`
  String get lrtDescription {
    return Intl.message(
      'The Light Rail Transit (LRT) is one of the most commonly used public rail transport. The LRT is divided into two lines: Ampang/Sri Petaling and Kelana Jaya. This is the best means of transport if you are thinking of visiting places that aren’t within walking distance of Kuala Lumpur city centre. Helpline: 03-7885 2585',
      name: 'lrtDescription',
      desc: 'Description for the Light Rail Transit.',
      args: [],
    );
  }

  /// `Mass Rapid Transit (MRT)`
  String get mrtTitle {
    return Intl.message(
      'Mass Rapid Transit (MRT)',
      name: 'mrtTitle',
      desc: 'Title for the Mass Rapid Transit description.',
      args: [],
    );
  }

  /// `The Mass Rapid Transit (MRT) is divided into two lines; the first is the Sungai Buloh-Kajang line that is 51km-long with 31 stations along its route. All the stations start operating at 6.00 am daily. Closing times vary based on respective stations. A single journey is priced at RM1.20 and upwards. Helpline: 1800-82-6868`
  String get mrtDescription {
    return Intl.message(
      'The Mass Rapid Transit (MRT) is divided into two lines; the first is the Sungai Buloh-Kajang line that is 51km-long with 31 stations along its route. All the stations start operating at 6.00 am daily. Closing times vary based on respective stations. A single journey is priced at RM1.20 and upwards. Helpline: 1800-82-6868',
      name: 'mrtDescription',
      desc: 'Description for the Mass Rapid Transit.',
      args: [],
    );
  }

  /// `KTM Komuter`
  String get ktmKomuterTitle {
    return Intl.message(
      'KTM Komuter',
      name: 'ktmKomuterTitle',
      desc: 'Title for the KTM Komuter description.',
      args: [],
    );
  }

  /// `The oldest rail system in Malaysia, the KTM is catered more for the locals rather than tourists. It acts as a cheaper travel alternative to longer destinations. The lines are divided into two: Rawang - Pelabuhan Klang and Batu Caves - Seremban. Helpline: 03-2267 1200`
  String get ktmKomuterDescription {
    return Intl.message(
      'The oldest rail system in Malaysia, the KTM is catered more for the locals rather than tourists. It acts as a cheaper travel alternative to longer destinations. The lines are divided into two: Rawang - Pelabuhan Klang and Batu Caves - Seremban. Helpline: 03-2267 1200',
      name: 'ktmKomuterDescription',
      desc: 'Description for the KTM Komuter.',
      args: [],
    );
  }

  /// `KL Monorail`
  String get klMonorailTitle {
    return Intl.message(
      'KL Monorail',
      name: 'klMonorailTitle',
      desc: 'Title for the KL Monorail description.',
      args: [],
    );
  }

  /// `The KL Monorail is a simple yet well-connected train system which runs between Kuala Lumpur’s transport hub KL Sentral and Titiwangsa in the heart of KL. It acts as a bridge between Kuala Lumpur city centre and the inner areas of Kuala Lumpur. The KL Monorail starts operations at 6.00 am and ceases at 12.00 am. Helpline: 03-2267 9888`
  String get klMonorailDescription {
    return Intl.message(
      'The KL Monorail is a simple yet well-connected train system which runs between Kuala Lumpur’s transport hub KL Sentral and Titiwangsa in the heart of KL. It acts as a bridge between Kuala Lumpur city centre and the inner areas of Kuala Lumpur. The KL Monorail starts operations at 6.00 am and ceases at 12.00 am. Helpline: 03-2267 9888',
      name: 'klMonorailDescription',
      desc: 'Description for the KL Monorail.',
      args: [],
    );
  }

  /// `RapidKL Bus`
  String get rapidKLBusTitle {
    return Intl.message(
      'RapidKL Bus',
      name: 'rapidKLBusTitle',
      desc: 'Title for the RapidKL Bus description.',
      args: [],
    );
  }

  /// `The RapidKL Bus is commonly seen at most train stations and usually acts as a transit-based mode of transportation for passengers to directly get to their preferred destinations. Each trip on the bus can cost up to RM5.00 per trip which can be paid by using exact change or through tapping your Touch n’ Go card upon entry and exit. Helpline: 03-7885 2585`
  String get rapidKLBusDescription {
    return Intl.message(
      'The RapidKL Bus is commonly seen at most train stations and usually acts as a transit-based mode of transportation for passengers to directly get to their preferred destinations. Each trip on the bus can cost up to RM5.00 per trip which can be paid by using exact change or through tapping your Touch n’ Go card upon entry and exit. Helpline: 03-7885 2585',
      name: 'rapidKLBusDescription',
      desc: 'Description for the RapidKL Bus.',
      args: [],
    );
  }

  /// `Weather`
  String get weatherTitle {
    return Intl.message(
      'Weather',
      name: 'weatherTitle',
      desc: 'Title for the Weather section in Travel Tips.',
      args: [],
    );
  }

  /// `The climate in KL is quite humid all year-round. Anyone travelling to KL must always be ready for rains at any time of the year. Regardless, the best time to visit KL is from May-July or December-February. The weather can be pretty hot between March - April. Due to the forest fires from Sumatera which typically happens between June - August, the dust particles may cast a haze over KL thus making it not an ideal time to visit the city.`
  String get weatherDescription {
    return Intl.message(
      'The climate in KL is quite humid all year-round. Anyone travelling to KL must always be ready for rains at any time of the year. Regardless, the best time to visit KL is from May-July or December-February. The weather can be pretty hot between March - April. Due to the forest fires from Sumatera which typically happens between June - August, the dust particles may cast a haze over KL thus making it not an ideal time to visit the city.',
      name: 'weatherDescription',
      desc: 'Description for the Weather section in Travel Tips.',
      args: [],
    );
  }

  /// `Time Zone`
  String get timeZoneTitle {
    return Intl.message(
      'Time Zone',
      name: 'timeZoneTitle',
      desc: 'Title for the Time Zone section in Travel Tips.',
      args: [],
    );
  }

  /// `Standard Malaysian time is 8 hours ahead of GMT (GMT +8).`
  String get timeZoneDescription {
    return Intl.message(
      'Standard Malaysian time is 8 hours ahead of GMT (GMT +8).',
      name: 'timeZoneDescription',
      desc: 'Description for the Time Zone section in Travel Tips.',
      args: [],
    );
  }

  /// `Currency`
  String get currencyTitle {
    return Intl.message(
      'Currency',
      name: 'currencyTitle',
      desc: 'Title for the Currency section in Travel Tips.',
      args: [],
    );
  }

  /// `Malaysia’s currency unit is divided into two. The term Ringgit Malaysia (RM) is used to refer to paper money. The denominations are RM1, RM5, RM10, RM 20, RM 50 and RM100. Whereas the coins are referred to as sen (cents). The denominations are 5 sen, 10 sen, 20 sen and 50 sen.`
  String get currencyDescription {
    return Intl.message(
      'Malaysia’s currency unit is divided into two. The term Ringgit Malaysia (RM) is used to refer to paper money. The denominations are RM1, RM5, RM10, RM 20, RM 50 and RM100. Whereas the coins are referred to as sen (cents). The denominations are 5 sen, 10 sen, 20 sen and 50 sen.',
      name: 'currencyDescription',
      desc: 'Description for the Currency section in Travel Tips.',
      args: [],
    );
  }

  /// `Visa and Passport`
  String get visaAndPassportTitle {
    return Intl.message(
      'Visa and Passport',
      name: 'visaAndPassportTitle',
      desc: 'Title for the Visa and Passport section in Travel Tips.',
      args: [],
    );
  }

  /// `Passports must be valid for at least 6 months at the time of entry. Visa requirements vary from time to time, so it is best to check with the Malaysian embassy or consulate or the Immigration Department website.`
  String get visaAndPassportDescription {
    return Intl.message(
      'Passports must be valid for at least 6 months at the time of entry. Visa requirements vary from time to time, so it is best to check with the Malaysian embassy or consulate or the Immigration Department website.',
      name: 'visaAndPassportDescription',
      desc: 'Description for the Visa and Passport section in Travel Tips.',
      args: [],
    );
  }

  /// `Healthcare`
  String get healthcare {
    return Intl.message(
      'Healthcare',
      name: 'healthcare',
      desc: 'Tab label for Healthcare section.',
      args: [],
    );
  }

  /// `Dental`
  String get dental {
    return Intl.message(
      'Dental',
      name: 'dental',
      desc: 'Tab label for Dental section.',
      args: [],
    );
  }

  /// `Dermatologist`
  String get dermatologist {
    return Intl.message(
      'Dermatologist',
      name: 'dermatologist',
      desc: 'Tab label for Dermatologist section.',
      args: [],
    );
  }

  /// `Ophthalmologist`
  String get ophthalmologist {
    return Intl.message(
      'Ophthalmologist',
      name: 'ophthalmologist',
      desc: 'Tab label for Ophthalmologist section.',
      args: [],
    );
  }

  /// `Plastic Surgery`
  String get plasticSurgery {
    return Intl.message(
      'Plastic Surgery',
      name: 'plasticSurgery',
      desc: 'Tab label for Plastic Surgery section.',
      args: [],
    );
  }

  /// `Gleneagles, Kuala Lumpur`
  String get gleneagles {
    return Intl.message(
      'Gleneagles, Kuala Lumpur',
      name: 'gleneagles',
      desc: 'Name of the Gleneagles hospital in Kuala Lumpur.',
      args: [],
    );
  }

  /// `Block A & Block B, 286 & 288, Jalan Ampang, Kampung Berembang, 50450 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur`
  String get gleneaglesLocation {
    return Intl.message(
      'Block A & Block B, 286 & 288, Jalan Ampang, Kampung Berembang, 50450 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur',
      name: 'gleneaglesLocation',
      desc: 'Location address for Gleneagles Kuala Lumpur.',
      args: [],
    );
  }

  /// `9:00 AM - 5:00 PM (Mon - Fri), Closed on weekends`
  String get gleneaglesHours {
    return Intl.message(
      '9:00 AM - 5:00 PM (Mon - Fri), Closed on weekends',
      name: 'gleneaglesHours',
      desc: 'Operating hours for Gleneagles Kuala Lumpur.',
      args: [],
    );
  }

  /// `603-2282 6800`
  String get gleneaglesPhone {
    return Intl.message(
      '603-2282 6800',
      name: 'gleneaglesPhone',
      desc: 'Phone number for Gleneagles Kuala Lumpur.',
      args: [],
    );
  }

  /// `KPJ Tawakkal Specialist Hospital`
  String get kpjTawakkal {
    return Intl.message(
      'KPJ Tawakkal Specialist Hospital',
      name: 'kpjTawakkal',
      desc: 'Name of the KPJ Tawakkal Specialist Hospital in Kuala Lumpur.',
      args: [],
    );
  }

  /// `1, Jalan Pahang Barat, Pekeliling, 53000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur`
  String get kpjTawakkalLocation {
    return Intl.message(
      '1, Jalan Pahang Barat, Pekeliling, 53000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur',
      name: 'kpjTawakkalLocation',
      desc: 'Location address for KPJ Tawakkal Specialist Hospital.',
      args: [],
    );
  }

  /// `8:00 AM - 6:00 PM (Mon - Fri), 9:00 AM - 3:00 PM (Sat)`
  String get kpjTawakkalHours {
    return Intl.message(
      '8:00 AM - 6:00 PM (Mon - Fri), 9:00 AM - 3:00 PM (Sat)',
      name: 'kpjTawakkalHours',
      desc: 'Operating hours for KPJ Tawakkal Specialist Hospital.',
      args: [],
    );
  }

  /// `603-2283 4567`
  String get kpjTawakkalPhone {
    return Intl.message(
      '603-2283 4567',
      name: 'kpjTawakkalPhone',
      desc: 'Phone number for KPJ Tawakkal Specialist Hospital.',
      args: [],
    );
  }

  /// `Klinik Pergigian Bangsar Dental`
  String get klinikPergigianBangsar {
    return Intl.message(
      'Klinik Pergigian Bangsar Dental',
      name: 'klinikPergigianBangsar',
      desc: 'Name of the Klinik Pergigian Bangsar Dental clinic.',
      args: [],
    );
  }

  /// `43-1, Jln Telawi 3, Bangsar, 59100 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur`
  String get klinikPergigianBangsarLocation {
    return Intl.message(
      '43-1, Jln Telawi 3, Bangsar, 59100 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur',
      name: 'klinikPergigianBangsarLocation',
      desc: 'Location address for Klinik Pergigian Bangsar Dental.',
      args: [],
    );
  }

  /// `9:00 AM - 6:00 PM (Mon - Fri), 9:00 AM - 5:00 PM (Sat), 9:00 AM - 2:00 PM (Sun)`
  String get klinikPergigianBangsarHours {
    return Intl.message(
      '9:00 AM - 6:00 PM (Mon - Fri), 9:00 AM - 5:00 PM (Sat), 9:00 AM - 2:00 PM (Sun)',
      name: 'klinikPergigianBangsarHours',
      desc: 'Operating hours for Klinik Pergigian Bangsar Dental.',
      args: [],
    );
  }

  /// `603-2282 6800`
  String get klinikPergigianBangsarPhone {
    return Intl.message(
      '603-2282 6800',
      name: 'klinikPergigianBangsarPhone',
      desc: 'Phone number for Klinik Pergigian Bangsar Dental.',
      args: [],
    );
  }

  /// `DentalPro (Kuala Lumpur, Malaysia)`
  String get dentalPro {
    return Intl.message(
      'DentalPro (Kuala Lumpur, Malaysia)',
      name: 'dentalPro',
      desc: 'Name of the DentalPro dental clinic.',
      args: [],
    );
  }

  /// `12, Jalan Sri Semantan 1, Damansara Heights, 50490 Kuala Lumpur`
  String get dentalProLocation {
    return Intl.message(
      '12, Jalan Sri Semantan 1, Damansara Heights, 50490 Kuala Lumpur',
      name: 'dentalProLocation',
      desc: 'Location address for DentalPro dental clinic.',
      args: [],
    );
  }

  /// `9:00 AM - 6:00 PM (Mon - Sat)`
  String get dentalProHours {
    return Intl.message(
      '9:00 AM - 6:00 PM (Mon - Sat)',
      name: 'dentalProHours',
      desc: 'Operating hours for DentalPro dental clinic.',
      args: [],
    );
  }

  /// `+603-2147 1111`
  String get dentalProPhone {
    return Intl.message(
      '+603-2147 1111',
      name: 'dentalProPhone',
      desc: 'Phone number for DentalPro dental clinic.',
      args: [],
    );
  }

  /// `Dr Jane Clinic`
  String get drJaneClinic {
    return Intl.message(
      'Dr Jane Clinic',
      name: 'drJaneClinic',
      desc: 'Name of the Dr Jane Clinic.',
      args: [],
    );
  }

  /// `Tropicana Avenue, P01-09 (First Floor), Persiaran Tropicana, PJU3, 47410 Petaling Jaya, Selangor`
  String get drJaneClinicLocation {
    return Intl.message(
      'Tropicana Avenue, P01-09 (First Floor), Persiaran Tropicana, PJU3, 47410 Petaling Jaya, Selangor',
      name: 'drJaneClinicLocation',
      desc: 'Location address for Dr Jane Clinic.',
      args: [],
    );
  }

  /// `10:00 AM - 7:00 PM (Mon - Fri), 10:00 AM - 6:00 PM (Sat - Sun)`
  String get drJaneClinicHours {
    return Intl.message(
      '10:00 AM - 7:00 PM (Mon - Fri), 10:00 AM - 6:00 PM (Sat - Sun)',
      name: 'drJaneClinicHours',
      desc: 'Operating hours for Dr Jane Clinic.',
      args: [],
    );
  }

  /// ``
  String get drJaneClinicPhone {
    return Intl.message(
      '',
      name: 'drJaneClinicPhone',
      desc: 'Phone number for Dr Jane Clinic (if available).',
      args: [],
    );
  }

  /// `Dermlaze Skin Laser & Aesthetics Centre`
  String get dermlaze {
    return Intl.message(
      'Dermlaze Skin Laser & Aesthetics Centre',
      name: 'dermlaze',
      desc: 'Name of the Dermlaze Skin Laser & Aesthetics Centre.',
      args: [],
    );
  }

  /// `75, Jalan SS 21/60, Damansara Utama, 47400 Petaling Jaya, Selangor`
  String get dermlazeLocation {
    return Intl.message(
      '75, Jalan SS 21/60, Damansara Utama, 47400 Petaling Jaya, Selangor',
      name: 'dermlazeLocation',
      desc: 'Location address for Dermlaze Skin Laser & Aesthetics Centre.',
      args: [],
    );
  }

  /// `10:00 AM - 6:00 PM (Mon - Sat)`
  String get dermlazeHours {
    return Intl.message(
      '10:00 AM - 6:00 PM (Mon - Sat)',
      name: 'dermlazeHours',
      desc: 'Operating hours for Dermlaze Skin Laser & Aesthetics Centre.',
      args: [],
    );
  }

  /// ``
  String get dermlazePhone {
    return Intl.message(
      '',
      name: 'dermlazePhone',
      desc:
          'Phone number for Dermlaze Skin Laser & Aesthetics Centre (if available).',
      args: [],
    );
  }

  /// `International Specialist Eye Centre`
  String get isec {
    return Intl.message(
      'International Specialist Eye Centre',
      name: 'isec',
      desc: 'Name of the International Specialist Eye Centre.',
      args: [],
    );
  }

  /// `Centrepoint South, Lingkaran Syed Putra, Mid Valley City, 59200 Kuala Lumpur`
  String get isecLocation {
    return Intl.message(
      'Centrepoint South, Lingkaran Syed Putra, Mid Valley City, 59200 Kuala Lumpur',
      name: 'isecLocation',
      desc: 'Location address for International Specialist Eye Centre.',
      args: [],
    );
  }

  /// `8:30 AM - 5:30 PM (Mon - Fri), 8:30 AM - 1:00 PM (Sat), Closed on Sunday`
  String get isecHours {
    return Intl.message(
      '8:30 AM - 5:30 PM (Mon - Fri), 8:30 AM - 1:00 PM (Sat), Closed on Sunday',
      name: 'isecHours',
      desc: 'Operating hours for International Specialist Eye Centre.',
      args: [],
    );
  }

  /// `+603-22848989`
  String get isecPhone {
    return Intl.message(
      '+603-22848989',
      name: 'isecPhone',
      desc: 'Phone number for International Specialist Eye Centre.',
      args: [],
    );
  }

  /// `Vista Eye Specialist`
  String get vistaEyeSpecialist {
    return Intl.message(
      'Vista Eye Specialist',
      name: 'vistaEyeSpecialist',
      desc: 'Name of the Vista Eye Specialist.',
      args: [],
    );
  }

  /// `Lot G217, Ground Floor, Mid Valley Megamall, 59200 Kuala Lumpur`
  String get vistaEyeSpecialistLocation {
    return Intl.message(
      'Lot G217, Ground Floor, Mid Valley Megamall, 59200 Kuala Lumpur',
      name: 'vistaEyeSpecialistLocation',
      desc: 'Location address for Vista Eye Specialist.',
      args: [],
    );
  }

  /// `10:00 AM - 10:00 PM (Mon - Sun)`
  String get vistaEyeSpecialistHours {
    return Intl.message(
      '10:00 AM - 10:00 PM (Mon - Sun)',
      name: 'vistaEyeSpecialistHours',
      desc: 'Operating hours for Vista Eye Specialist.',
      args: [],
    );
  }

  /// `+603-22423937`
  String get vistaEyeSpecialistPhone {
    return Intl.message(
      '+603-22423937',
      name: 'vistaEyeSpecialistPhone',
      desc: 'Phone number for Vista Eye Specialist.',
      args: [],
    );
  }

  /// `Soma Plastic Surgery`
  String get somaPlasticSurgery {
    return Intl.message(
      'Soma Plastic Surgery',
      name: 'somaPlasticSurgery',
      desc: 'Name of the Soma Plastic Surgery clinic.',
      args: [],
    );
  }

  /// `45B, 2nd Floor, Jalan SS15/5a, SS15, 47500 Subang Jaya, Selangor`
  String get somaPlasticSurgeryLocation {
    return Intl.message(
      '45B, 2nd Floor, Jalan SS15/5a, SS15, 47500 Subang Jaya, Selangor',
      name: 'somaPlasticSurgeryLocation',
      desc: 'Location address for Soma Plastic Surgery.',
      args: [],
    );
  }

  /// `9:00 AM - 5:00 PM (Mon - Fri), 9:00 AM - 1:00 PM (Sat), Closed on Sunday`
  String get somaPlasticSurgeryHours {
    return Intl.message(
      '9:00 AM - 5:00 PM (Mon - Fri), 9:00 AM - 1:00 PM (Sat), Closed on Sunday',
      name: 'somaPlasticSurgeryHours',
      desc: 'Operating hours for Soma Plastic Surgery.',
      args: [],
    );
  }

  /// `+603-5887 44229`
  String get somaPlasticSurgeryPhone {
    return Intl.message(
      '+603-5887 44229',
      name: 'somaPlasticSurgeryPhone',
      desc: 'Phone number for Soma Plastic Surgery.',
      args: [],
    );
  }

  /// `Places To Shop`
  String get placesToShop {
    return Intl.message(
      'Places To Shop',
      name: 'placesToShop',
      desc: 'Title for the Places To Shop page.',
      args: [],
    );
  }

  /// `Avenue K Shop`
  String get avenueKShop {
    return Intl.message(
      'Avenue K Shop',
      name: 'avenueKShop',
      desc: 'Title for Avenue K Shop.',
      args: [],
    );
  }

  /// `156, Jalan Ampang, Kuala Lumpur City Centre, 50450 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur`
  String get avenueKShopLocation {
    return Intl.message(
      '156, Jalan Ampang, Kuala Lumpur City Centre, 50450 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur',
      name: 'avenueKShopLocation',
      desc: 'Location for Avenue K Shop.',
      args: [],
    );
  }

  /// `10:00 am - 10:00 pm (Daily)`
  String get avenueKShopHours {
    return Intl.message(
      '10:00 am - 10:00 pm (Daily)',
      name: 'avenueKShopHours',
      desc: 'Operating hours for Avenue K Shop.',
      args: [],
    );
  }

  /// `http://www.avenuek.com.my/`
  String get avenueKShopWebsite {
    return Intl.message(
      'http://www.avenuek.com.my/',
      name: 'avenueKShopWebsite',
      desc: 'Website for Avenue K Shop.',
      args: [],
    );
  }

  /// `Sanctuary Mall`
  String get sanctuaryMall {
    return Intl.message(
      'Sanctuary Mall',
      name: 'sanctuaryMall',
      desc: 'Title for Sanctuary Mall.',
      args: [],
    );
  }

  /// `Persiaran Eco Sanctuary, 8/3, Eco Santuari, 42500, Selangor`
  String get sanctuaryMallLocation {
    return Intl.message(
      'Persiaran Eco Sanctuary, 8/3, Eco Santuari, 42500, Selangor',
      name: 'sanctuaryMallLocation',
      desc: 'Location for Sanctuary Mall.',
      args: [],
    );
  }

  /// `10:00 am - 10:00 pm (Daily)`
  String get sanctuaryMallHours {
    return Intl.message(
      '10:00 am - 10:00 pm (Daily)',
      name: 'sanctuaryMallHours',
      desc: 'Operating hours for Sanctuary Mall.',
      args: [],
    );
  }

  /// `https://www.facebook.com/SanctuaryMall`
  String get sanctuaryMallWebsite {
    return Intl.message(
      'https://www.facebook.com/SanctuaryMall',
      name: 'sanctuaryMallWebsite',
      desc: 'Website for Sanctuary Mall.',
      args: [],
    );
  }

  /// `The LINC KL`
  String get lincKL {
    return Intl.message(
      'The LINC KL',
      name: 'lincKL',
      desc: 'Title for The LINC KL.',
      args: [],
    );
  }

  /// `Lingkaran Syed Putra, 59200 Kuala Lumpur`
  String get lincKLLocation {
    return Intl.message(
      'Lingkaran Syed Putra, 59200 Kuala Lumpur',
      name: 'lincKLLocation',
      desc: 'Location for The LINC KL.',
      args: [],
    );
  }

  /// `10:00 am - 10:00 pm (Daily)`
  String get lincKLHours {
    return Intl.message(
      '10:00 am - 10:00 pm (Daily)',
      name: 'lincKLHours',
      desc: 'Operating hours for The LINC KL.',
      args: [],
    );
  }

  /// `https://thelinckl.com.my/`
  String get lincKLWebsite {
    return Intl.message(
      'https://thelinckl.com.my/',
      name: 'lincKLWebsite',
      desc: 'Website for The LINC KL.',
      args: [],
    );
  }

  /// `Manjakaki`
  String get manjakaki {
    return Intl.message(
      'Manjakaki',
      name: 'manjakaki',
      desc: 'Title for Manjakaki spa.',
      args: [],
    );
  }

  /// `Mid Valley Megamall, Lot No.2, LG, 59, Lingkaran Syed Putra, Mid Valley City, 59200 Kuala Lumpur`
  String get manjakakiLocation {
    return Intl.message(
      'Mid Valley Megamall, Lot No.2, LG, 59, Lingkaran Syed Putra, Mid Valley City, 59200 Kuala Lumpur',
      name: 'manjakakiLocation',
      desc: 'Location for Manjakaki spa.',
      args: [],
    );
  }

  /// `10:00am - 10:00pm (Daily)`
  String get manjakakiHours {
    return Intl.message(
      '10:00am - 10:00pm (Daily)',
      name: 'manjakakiHours',
      desc: 'Operating hours for Manjakaki spa.',
      args: [],
    );
  }

  /// ``
  String get manjakakiWebsite {
    return Intl.message(
      '',
      name: 'manjakakiWebsite',
      desc: 'Website for Manjakaki spa (if available).',
      args: [],
    );
  }

  /// `Urban Retreat Spa KL`
  String get urbanRetreatSpaKL {
    return Intl.message(
      'Urban Retreat Spa KL',
      name: 'urbanRetreatSpaKL',
      desc: 'Title for Urban Retreat Spa KL.',
      args: [],
    );
  }

  /// `No 1, Lot 15, 2nd Floor, 1 Mont Kiara, Jalan Mont Kiara, Wilayah Persekutuan, Kuala Lumpur`
  String get urbanRetreatSpaKLLocation {
    return Intl.message(
      'No 1, Lot 15, 2nd Floor, 1 Mont Kiara, Jalan Mont Kiara, Wilayah Persekutuan, Kuala Lumpur',
      name: 'urbanRetreatSpaKLLocation',
      desc: 'Location for Urban Retreat Spa KL.',
      args: [],
    );
  }

  /// `11:00am - 10:00pm (Daily)`
  String get urbanRetreatSpaKLHours {
    return Intl.message(
      '11:00am - 10:00pm (Daily)',
      name: 'urbanRetreatSpaKLHours',
      desc: 'Operating hours for Urban Retreat Spa KL.',
      args: [],
    );
  }

  /// ``
  String get urbanRetreatSpaKLWebsite {
    return Intl.message(
      '',
      name: 'urbanRetreatSpaKLWebsite',
      desc: 'Website for Urban Retreat Spa KL (if available).',
      args: [],
    );
  }

  /// `Ozmosis Health & Day Spa`
  String get ozmosisSpa {
    return Intl.message(
      'Ozmosis Health & Day Spa',
      name: 'ozmosisSpa',
      desc: 'Title for Ozmosis Health & Day Spa.',
      args: [],
    );
  }

  /// `16-1, Jalan Telawi 2, Bangsar, 59100 Kuala Lumpur`
  String get ozmosisSpaLocation {
    return Intl.message(
      '16-1, Jalan Telawi 2, Bangsar, 59100 Kuala Lumpur',
      name: 'ozmosisSpaLocation',
      desc: 'Location for Ozmosis Health & Day Spa.',
      args: [],
    );
  }

  /// `10:00am - 9:00pm (Monday-Sunday)`
  String get ozmosisSpaHours {
    return Intl.message(
      '10:00am - 9:00pm (Monday-Sunday)',
      name: 'ozmosisSpaHours',
      desc: 'Operating hours for Ozmosis Health & Day Spa.',
      args: [],
    );
  }

  /// ``
  String get ozmosisSpaWebsite {
    return Intl.message(
      '',
      name: 'ozmosisSpaWebsite',
      desc: 'Website for Ozmosis Health & Day Spa (if available).',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: 'Label for the description field of a place to stay.',
      args: [],
    );
  }

  /// `Bukit Bintang`
  String get bukitBintang {
    return Intl.message(
      'Bukit Bintang',
      name: 'bukitBintang',
      desc: 'Title for Bukit Bintang area.',
      args: [],
    );
  }

  /// `If you want to be in the centre of all the amazing shopping, dining and entertainment Kuala Lumpur has to deliver, the Bukit Bintang area is the place to stay...`
  String get bukitBintangDescription {
    return Intl.message(
      'If you want to be in the centre of all the amazing shopping, dining and entertainment Kuala Lumpur has to deliver, the Bukit Bintang area is the place to stay...',
      name: 'bukitBintangDescription',
      desc: 'Description for Bukit Bintang area.',
      args: [],
    );
  }

  /// `The most popular area to stay in Kuala Lumpur is the Kuala Lumpur City Center...`
  String get klccDescription {
    return Intl.message(
      'The most popular area to stay in Kuala Lumpur is the Kuala Lumpur City Center...',
      name: 'klccDescription',
      desc: 'Description for KLCC area.',
      args: [],
    );
  }

  /// `Bangsar South`
  String get bangsarSouth {
    return Intl.message(
      'Bangsar South',
      name: 'bangsarSouth',
      desc: 'Title for Bangsar South area.',
      args: [],
    );
  }

  /// `If you prefer to stay a little outside of KL s busy and hectic downtown...`
  String get bangsarSouthDescription {
    return Intl.message(
      'If you prefer to stay a little outside of KL s busy and hectic downtown...',
      name: 'bangsarSouthDescription',
      desc: 'Description for Bangsar South area.',
      args: [],
    );
  }

  /// `Mercure Kuala Lumpur Glenmarie`
  String get mercureKL {
    return Intl.message(
      'Mercure Kuala Lumpur Glenmarie',
      name: 'mercureKL',
      desc: 'Title for Mercure Kuala Lumpur Glenmarie hotel.',
      args: [],
    );
  }

  /// `Jalan Kontraktor U1/14, Seksyen U1, 40150 Shah Alam, Selangor`
  String get mercureKLLocation {
    return Intl.message(
      'Jalan Kontraktor U1/14, Seksyen U1, 40150 Shah Alam, Selangor',
      name: 'mercureKLLocation',
      desc: 'Location for Mercure Kuala Lumpur Glenmarie.',
      args: [],
    );
  }

  /// `+603-5030 2888`
  String get mercureKLContact {
    return Intl.message(
      '+603-5030 2888',
      name: 'mercureKLContact',
      desc: 'Contact for Mercure Kuala Lumpur Glenmarie.',
      args: [],
    );
  }

  /// `The Grand Campbell Hotel KL`
  String get grandCampbellHotel {
    return Intl.message(
      'The Grand Campbell Hotel KL',
      name: 'grandCampbellHotel',
      desc: 'Title for The Grand Campbell Hotel KL.',
      args: [],
    );
  }

  /// `Ground Campbell Complex, 98, Jalan Dang Wangi, 50100 Kuala Lumpur`
  String get grandCampbellHotelLocation {
    return Intl.message(
      'Ground Campbell Complex, 98, Jalan Dang Wangi, 50100 Kuala Lumpur',
      name: 'grandCampbellHotelLocation',
      desc: 'Location for The Grand Campbell Hotel KL.',
      args: [],
    );
  }

  /// `+6011-1301 1300`
  String get grandCampbellHotelContact {
    return Intl.message(
      '+6011-1301 1300',
      name: 'grandCampbellHotelContact',
      desc: 'Contact for The Grand Campbell Hotel KL.',
      args: [],
    );
  }

  /// `Leo Backpackers @ Central Market`
  String get leoBackpackers {
    return Intl.message(
      'Leo Backpackers @ Central Market',
      name: 'leoBackpackers',
      desc: 'Title for Leo Backpackers @ Central Market.',
      args: [],
    );
  }

  /// `Jalan Hang Kasturi, City Centre, 50000 Kuala Lumpur`
  String get leoBackpackersLocation {
    return Intl.message(
      'Jalan Hang Kasturi, City Centre, 50000 Kuala Lumpur',
      name: 'leoBackpackersLocation',
      desc: 'Location for Leo Backpackers @ Central Market.',
      args: [],
    );
  }

  /// `+603-2031 1733`
  String get leoBackpackersContact {
    return Intl.message(
      '+603-2031 1733',
      name: 'leoBackpackersContact',
      desc: 'Contact for Leo Backpackers @ Central Market.',
      args: [],
    );
  }

  /// `Top Places to Stay`
  String get topPlacesToStay {
    return Intl.message(
      'Top Places to Stay',
      name: 'topPlacesToStay',
      desc: 'Title for the tab displaying top places to stay.',
      args: [],
    );
  }

  /// `Hotels`
  String get hotels {
    return Intl.message(
      'Hotels',
      name: 'hotels',
      desc: 'Title for the tab displaying hotels.',
      args: [],
    );
  }

  /// `Budget Hotels`
  String get budgetHotels {
    return Intl.message(
      'Budget Hotels',
      name: 'budgetHotels',
      desc: 'Title for the tab displaying budget hotels.',
      args: [],
    );
  }

  /// `Backpackers Lodge`
  String get backpackersLodge {
    return Intl.message(
      'Backpackers Lodge',
      name: 'backpackersLodge',
      desc: 'Title for the tab displaying backpackers\' lodges.',
      args: [],
    );
  }

  /// `Upcoming Events`
  String get upcomingEvents {
    return Intl.message(
      'Upcoming Events',
      name: 'upcomingEvents',
      desc: 'Label for upcoming events section.',
      args: [],
    );
  }

  /// `Previous`
  String get previous {
    return Intl.message(
      'Previous',
      name: 'previous',
      desc: 'Label for the \'Previous\' button.',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: 'Label for the \'Next\' button.',
      args: [],
    );
  }

  /// `An error occurred`
  String get error {
    return Intl.message(
      'An error occurred',
      name: 'error',
      desc: 'Message displayed when an error occurs.',
      args: [],
    );
  }

  /// `No events found`
  String get noEventsFound {
    return Intl.message(
      'No events found',
      name: 'noEventsFound',
      desc: 'Message shown when no events are found.',
      args: [],
    );
  }

  /// `Showing cached data`
  String get cachedDataMessage {
    return Intl.message(
      'Showing cached data',
      name: 'cachedDataMessage',
      desc: 'Message displayed when showing cached data.',
      args: [],
    );
  }

  /// `No events this month`
  String get noEventsThisMonth {
    return Intl.message(
      'No events this month',
      name: 'noEventsThisMonth',
      desc: 'Message shown when there are no events for the current month.',
      args: [],
    );
  }

  /// `View Details`
  String get viewDetails {
    return Intl.message(
      'View Details',
      name: 'viewDetails',
      desc: 'Label for button to view event details.',
      args: [],
    );
  }

  /// `Events`
  String get EventScreen {
    return Intl.message(
      'Events',
      name: 'EventScreen',
      desc: 'Title for the Event Screen.',
      args: [],
    );
  }

  /// `Contest`
  String get Contest {
    return Intl.message(
      'Contest',
      name: 'Contest',
      desc: 'Label for the Contest screen.',
      args: [],
    );
  }

  /// `Vouchers`
  String get vouchers {
    return Intl.message(
      'Vouchers',
      name: 'vouchers',
      desc: 'Title for the vouchers screen',
      args: [],
    );
  }

  /// `Click here to claim`
  String get clickHereToClaim {
    return Intl.message(
      'Click here to claim',
      name: 'clickHereToClaim',
      desc: 'Button text for claiming vouchers',
      args: [],
    );
  }

  /// `KL 4 Kids`
  String get kl4Kids {
    return Intl.message(
      'KL 4 Kids',
      name: 'kl4Kids',
      desc: 'Title for the \'KL 4 Kids\' section.',
      args: [],
    );
  }

  /// `Sample some local flavour with Nasi Lemak`
  String get sampleLocalFlavour {
    return Intl.message(
      'Sample some local flavour with Nasi Lemak',
      name: 'sampleLocalFlavour',
      desc: 'Title for the Nasi Lemak section.',
      args: [],
    );
  }

  /// `Nasi Lemak is fragrant rice traditionally cooked in coconut milk and screwpine (pandan) leaves served with spicy sambal, cucumbers, fried anchovies, egg and fried groundnuts. It is best paired with a glass of piping hot teh tarik. Most shops or stalls will have other choices of add-ons such as chicken or beef rendang, fried chicken, prawn sambal and many more.`
  String get nasiLemakDescription {
    return Intl.message(
      'Nasi Lemak is fragrant rice traditionally cooked in coconut milk and screwpine (pandan) leaves served with spicy sambal, cucumbers, fried anchovies, egg and fried groundnuts. It is best paired with a glass of piping hot teh tarik. Most shops or stalls will have other choices of add-ons such as chicken or beef rendang, fried chicken, prawn sambal and many more.',
      name: 'nasiLemakDescription',
      desc: 'Description of Nasi Lemak, a local dish.',
      args: [],
    );
  }

  /// `Take A Walk Through In A Forest Midst of The City`
  String get walkThroughForest {
    return Intl.message(
      'Take A Walk Through In A Forest Midst of The City',
      name: 'walkThroughForest',
      desc: 'Title for the forest eco park section.',
      args: [],
    );
  }

  /// `You read that right! Taman Eko Rimba Kuala Lumpur, also known as KL Forest Eco Park in English, is located in Hutan Simpan Bukit Nanas, one of the oldest forests in Malaysia. Whether youa re a local or an outsider, you know this is a must-visit!`
  String get forestEcoParkDescription {
    return Intl.message(
      'You read that right! Taman Eko Rimba Kuala Lumpur, also known as KL Forest Eco Park in English, is located in Hutan Simpan Bukit Nanas, one of the oldest forests in Malaysia. Whether youa re a local or an outsider, you know this is a must-visit!',
      name: 'forestEcoParkDescription',
      desc: 'Description of the KL Forest Eco Park.',
      args: [],
    );
  }

  /// `Bask In History At The National Museum`
  String get baskInHistory {
    return Intl.message(
      'Bask In History At The National Museum',
      name: 'baskInHistory',
      desc: 'Title for the National Museum section.',
      args: [],
    );
  }

  /// `To understand more about Malaysian history and culture and to see the replicas of Malay houses, wedding scenes and hunting displays. Local instruments and national costumes will also be on display. As well as permanent exhibits in the museum, there are also temporary exhibits that rotate during the year and are situated in the Central Hall.`
  String get nationalMuseumDescription {
    return Intl.message(
      'To understand more about Malaysian history and culture and to see the replicas of Malay houses, wedding scenes and hunting displays. Local instruments and national costumes will also be on display. As well as permanent exhibits in the museum, there are also temporary exhibits that rotate during the year and are situated in the Central Hall.',
      name: 'nationalMuseumDescription',
      desc: 'Description of the National Museum.',
      args: [],
    );
  }

  /// `Shop Until You Drop At Petaling Street`
  String get shopUntilDrop {
    return Intl.message(
      'Shop Until You Drop At Petaling Street',
      name: 'shopUntilDrop',
      desc: 'Title for the Petaling Street shopping section.',
      args: [],
    );
  }

  /// `Spend The Night Out`
  String get spendNightOut {
    return Intl.message(
      'Spend The Night Out',
      name: 'spendNightOut',
      desc: 'Title for the nightlife section.',
      args: [],
    );
  }

  /// `Kuala Lumpur is a vibrant city with an incredible nightlife scene. Head over to Bangsar or Changkat Bukit Bintang to experience the KL nightlife. These places have an array of bars to choose from and with their own cocktail bars and DJs spinning music all night long. With its unique restaurants, hip bars, trendy nightclubs and cool karaoke spots, there is something for everyone.`
  String get nightOutDescription {
    return Intl.message(
      'Kuala Lumpur is a vibrant city with an incredible nightlife scene. Head over to Bangsar or Changkat Bukit Bintang to experience the KL nightlife. These places have an array of bars to choose from and with their own cocktail bars and DJs spinning music all night long. With its unique restaurants, hip bars, trendy nightclubs and cool karaoke spots, there is something for everyone.',
      name: 'nightOutDescription',
      desc: 'Description of nightlife in Kuala Lumpur.',
      args: [],
    );
  }

  /// `October`
  String get october {
    return Intl.message(
      'October',
      name: 'october',
      desc: 'The name of the month October.',
      args: [],
    );
  }

  /// `November`
  String get november {
    return Intl.message(
      'November',
      name: 'november',
      desc: 'The name of the month November.',
      args: [],
    );
  }

  /// `December`
  String get december {
    return Intl.message(
      'December',
      name: 'december',
      desc: 'The name of the month December.',
      args: [],
    );
  }

  /// `Click`
  String get click {
    return Intl.message(
      'Click',
      name: 'click',
      desc: 'Text displayed for a clickable button or link.',
      args: [],
    );
  }

  /// `1000 Miles Hotel`
  String get miles_hotel {
    return Intl.message(
      '1000 Miles Hotel',
      name: 'miles_hotel',
      desc: 'The name of the hotel.',
      args: [],
    );
  }

  /// ``
  String get hotel_description {
    return Intl.message(
      '',
      name: 'hotel_description',
      desc: 'A brief description of the hotel.',
      args: [],
    );
  }

  /// `17 & 19, Jalan Tun H S Lee, City Centre, 50000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur`
  String get hotel_location {
    return Intl.message(
      '17 & 19, Jalan Tun H S Lee, City Centre, 50000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur',
      name: 'hotel_location',
      desc: 'The location of the hotel.',
      args: [],
    );
  }

  /// `+603-2022 3333`
  String get hotel_contact {
    return Intl.message(
      '+603-2022 3333',
      name: 'hotel_contact',
      desc: 'The contact number of the hotel.',
      args: [],
    );
  }

  /// ``
  String get hotel_website {
    return Intl.message(
      '',
      name: 'hotel_website',
      desc: 'The website of the hotel.',
      args: [],
    );
  }

  /// `The Ritz-Carlton`
  String get ritz_carlton {
    return Intl.message(
      'The Ritz-Carlton',
      name: 'ritz_carlton',
      desc: 'The name of the hotel.',
      args: [],
    );
  }

  /// ``
  String get ritz_description {
    return Intl.message(
      '',
      name: 'ritz_description',
      desc: 'A brief description of the hotel.',
      args: [],
    );
  }

  /// `168, Jln Imbi, Bukit Bintang, 55100 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur`
  String get ritz_location {
    return Intl.message(
      '168, Jln Imbi, Bukit Bintang, 55100 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur',
      name: 'ritz_location',
      desc: 'The location of the hotel.',
      args: [],
    );
  }

  /// `+603-2142 8000`
  String get ritz_contact {
    return Intl.message(
      '+603-2142 8000',
      name: 'ritz_contact',
      desc: 'The contact number of the hotel.',
      args: [],
    );
  }

  /// ``
  String get ritz_website {
    return Intl.message(
      '',
      name: 'ritz_website',
      desc: 'The website of the hotel.',
      args: [],
    );
  }

  /// `ANSA Hotel, KL`
  String get ansa_hotel {
    return Intl.message(
      'ANSA Hotel, KL',
      name: 'ansa_hotel',
      desc: 'The name of the hotel.',
      args: [],
    );
  }

  /// ``
  String get ansa_description {
    return Intl.message(
      '',
      name: 'ansa_description',
      desc: 'A brief description of the hotel.',
      args: [],
    );
  }

  /// `101, Jln Bukit Bintang, Bukit Bintang, 55100 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur`
  String get ansa_location {
    return Intl.message(
      '101, Jln Bukit Bintang, Bukit Bintang, 55100 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur',
      name: 'ansa_location',
      desc: 'The location of the hotel.',
      args: [],
    );
  }

  /// `+603-2142 8000`
  String get ansa_contact {
    return Intl.message(
      '+603-2142 8000',
      name: 'ansa_contact',
      desc: 'The contact number of the hotel.',
      args: [],
    );
  }

  /// ``
  String get ansa_website {
    return Intl.message(
      '',
      name: 'ansa_website',
      desc: 'The website of the hotel.',
      args: [],
    );
  }

  /// `Royale Chulan, KL`
  String get royale_chulan {
    return Intl.message(
      'Royale Chulan, KL',
      name: 'royale_chulan',
      desc: 'The name of the hotel.',
      args: [],
    );
  }

  /// ``
  String get chulan_description {
    return Intl.message(
      '',
      name: 'chulan_description',
      desc: 'A brief description of the hotel.',
      args: [],
    );
  }

  /// `5, Jalan Conlay, Kuala Lumpur, 50450 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur`
  String get chulan_location {
    return Intl.message(
      '5, Jalan Conlay, Kuala Lumpur, 50450 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur',
      name: 'chulan_location',
      desc: 'The location of the hotel.',
      args: [],
    );
  }

  /// `+603-2688 9688`
  String get chulan_contact {
    return Intl.message(
      '+603-2688 9688',
      name: 'chulan_contact',
      desc: 'The contact number of the hotel.',
      args: [],
    );
  }

  /// ``
  String get chulan_website {
    return Intl.message(
      '',
      name: 'chulan_website',
      desc: 'The website of the hotel.',
      args: [],
    );
  }

  /// `YMCA of Kuala Lumpur Hostel`
  String get ymca_hostel {
    return Intl.message(
      'YMCA of Kuala Lumpur Hostel',
      name: 'ymca_hostel',
      desc: 'The name of the hostel.',
      args: [],
    );
  }

  /// ``
  String get ymca_description {
    return Intl.message(
      '',
      name: 'ymca_description',
      desc: 'A brief description of the hostel.',
      args: [],
    );
  }

  /// `95, Jalan Padang Belia, Brickfields, 50470 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur`
  String get ymca_location {
    return Intl.message(
      '95, Jalan Padang Belia, Brickfields, 50470 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur',
      name: 'ymca_location',
      desc: 'The location of the hostel.',
      args: [],
    );
  }

  /// `+603-2274 1439`
  String get ymca_contact {
    return Intl.message(
      '+603-2274 1439',
      name: 'ymca_contact',
      desc: 'The contact number of the hostel.',
      args: [],
    );
  }

  /// ``
  String get ymca_website {
    return Intl.message(
      '',
      name: 'ymca_website',
      desc: 'The website of the hostel.',
      args: [],
    );
  }

  /// `PODs The Backpackers Home & Cafe, Kuala Lumpur`
  String get pods_hostel {
    return Intl.message(
      'PODs The Backpackers Home & Cafe, Kuala Lumpur',
      name: 'pods_hostel',
      desc: 'The name of the hostel.',
      args: [],
    );
  }

  /// ``
  String get pods_description {
    return Intl.message(
      '',
      name: 'pods_description',
      desc: 'A brief description of the hostel.',
      args: [],
    );
  }

  /// `G-6, 30, Jalan Thambipillay, Brickfields, 50470 Kuala Lumpur`
  String get pods_location {
    return Intl.message(
      'G-6, 30, Jalan Thambipillay, Brickfields, 50470 Kuala Lumpur',
      name: 'pods_location',
      desc: 'The location of the hostel.',
      args: [],
    );
  }

  /// `+603-2276 0858`
  String get pods_contact {
    return Intl.message(
      '+603-2276 0858',
      name: 'pods_contact',
      desc: 'The contact number of the hostel.',
      args: [],
    );
  }

  /// ``
  String get pods_website {
    return Intl.message(
      '',
      name: 'pods_website',
      desc: 'The website of the hostel.',
      args: [],
    );
  }

  /// `Bunk & Bilik@Sri Petaling`
  String get bunk_bilik {
    return Intl.message(
      'Bunk & Bilik@Sri Petaling',
      name: 'bunk_bilik',
      desc: 'The name of the accommodation.',
      args: [],
    );
  }

  /// ``
  String get bunk_description {
    return Intl.message(
      '',
      name: 'bunk_description',
      desc: 'A brief description of the accommodation.',
      args: [],
    );
  }

  /// `No, 9, Jalan Radin Bagus, Bandar Baru Sri Petaling, 57000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur`
  String get bunk_location {
    return Intl.message(
      'No, 9, Jalan Radin Bagus, Bandar Baru Sri Petaling, 57000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur',
      name: 'bunk_location',
      desc: 'The location of the accommodation.',
      args: [],
    );
  }

  /// `+603-9054 0040`
  String get bunk_contact {
    return Intl.message(
      '+603-9054 0040',
      name: 'bunk_contact',
      desc: 'The contact number of the accommodation.',
      args: [],
    );
  }

  /// ``
  String get bunk_website {
    return Intl.message(
      '',
      name: 'bunk_website',
      desc: 'The website of the accommodation.',
      args: [],
    );
  }

  /// `Pangkor Island`
  String get pangkorIsland {
    return Intl.message(
      'Pangkor Island',
      name: 'pangkorIsland',
      desc: 'The title for Pangkor Island',
      args: [],
    );
  }

  /// `Check out Pangkor Island if you are looking for somewhere without tourists. Located near the coast of Perak, the island features empty beaches, clean water and a thick jungle overlooking the centre. Visitors appreciate having the opportunity to sunbathe under the palm trees with no other soul in sight. Also, check out the Colonial Dutch fort and take pictures of a traditional wooden jetty.`
  String get pangkorIslandContent {
    return Intl.message(
      'Check out Pangkor Island if you are looking for somewhere without tourists. Located near the coast of Perak, the island features empty beaches, clean water and a thick jungle overlooking the centre. Visitors appreciate having the opportunity to sunbathe under the palm trees with no other soul in sight. Also, check out the Colonial Dutch fort and take pictures of a traditional wooden jetty.',
      name: 'pangkorIslandContent',
      desc: 'The description for Pangkor Island',
      args: [],
    );
  }

  /// `Pulau Redang`
  String get pulauRedang {
    return Intl.message(
      'Pulau Redang',
      name: 'pulauRedang',
      desc: 'The title for Pulau Redang',
      args: [],
    );
  }

  /// `One of the largest islands off Malaysia's East Coast, Pulau Redang is renowned for its crystal clear waters and sandy white beaches. It is one of nine islands, forming a marine sanctuary park offering tourists the opportunity to snorkel and dive. The beach is full of soft white sand. You can see coral and fish just a few metres from the beach.`
  String get pulauRedangContent {
    return Intl.message(
      'One of the largest islands off Malaysia\'s East Coast, Pulau Redang is renowned for its crystal clear waters and sandy white beaches. It is one of nine islands, forming a marine sanctuary park offering tourists the opportunity to snorkel and dive. The beach is full of soft white sand. You can see coral and fish just a few metres from the beach.',
      name: 'pulauRedangContent',
      desc: 'The description for Pulau Redang',
      args: [],
    );
  }

  /// `Pulau Langkawi`
  String get pulauLangkawi {
    return Intl.message(
      'Pulau Langkawi',
      name: 'pulauLangkawi',
      desc: 'The title for Pulau Langkawi',
      args: [],
    );
  }

  /// `The island of Langkawi is home to some of the best beaches in Peninsular Malaysia. The island combines stretches of mountains and mangroves with glistening coastlines. Take a day trip to Pulau Dayang Bunting listed by UNESCO, feed the eagles and watch the monkeys swim for food. Or take your towel and sunbathe off on Pantai Cenang before you drink in a beachside bar. Another perk is that this island is duty-free, don't be afraid to release your inner shopaholic when you're there!`
  String get pulauLangkawiContent {
    return Intl.message(
      'The island of Langkawi is home to some of the best beaches in Peninsular Malaysia. The island combines stretches of mountains and mangroves with glistening coastlines. Take a day trip to Pulau Dayang Bunting listed by UNESCO, feed the eagles and watch the monkeys swim for food. Or take your towel and sunbathe off on Pantai Cenang before you drink in a beachside bar. Another perk is that this island is duty-free, don\'t be afraid to release your inner shopaholic when you\'re there!',
      name: 'pulauLangkawiContent',
      desc: 'The description for Pulau Langkawi',
      args: [],
    );
  }

  /// `Sipadan Island`
  String get sipadanIsland {
    return Intl.message(
      'Sipadan Island',
      name: 'sipadanIsland',
      desc: 'The title for Sipadan Island',
      args: [],
    );
  }

  /// `A tiny island near Semporna in Sabah is rated among the top diving regions in the world. You will not find accommodation or a lot of facilities around the island. Taking a tour during your trip would be recommended. The flight from Kota Kinabalu to Semporna and a one-hour boat ride to the turtles and barracuda swarms is worth it. After gaining protected status in 2002, fewer tourists will get a permit to visit the limestone pinnacle.`
  String get sipadanIslandContent {
    return Intl.message(
      'A tiny island near Semporna in Sabah is rated among the top diving regions in the world. You will not find accommodation or a lot of facilities around the island. Taking a tour during your trip would be recommended. The flight from Kota Kinabalu to Semporna and a one-hour boat ride to the turtles and barracuda swarms is worth it. After gaining protected status in 2002, fewer tourists will get a permit to visit the limestone pinnacle.',
      name: 'sipadanIslandContent',
      desc: 'The description for Sipadan Island',
      args: [],
    );
  }

  /// `Mantanani Island`
  String get mantananiIsland {
    return Intl.message(
      'Mantanani Island',
      name: 'mantananiIsland',
      desc: 'The title for Mantanani Island',
      args: [],
    );
  }

  /// `Near Kota Belud in Sabah, The Mantanani island offers some of the finest diving spots in Borneo. Snorkelers and divers flock to swim with seahorses and stingrays on day trips from the capital. The scuba-certified person can dive at over 20 locations, including three shipwrecks. After a few hours at the South China Sea, unwind for the famous Bornean sunset on the pristine white-sand beaches.`
  String get mantananiIslandContent {
    return Intl.message(
      'Near Kota Belud in Sabah, The Mantanani island offers some of the finest diving spots in Borneo. Snorkelers and divers flock to swim with seahorses and stingrays on day trips from the capital. The scuba-certified person can dive at over 20 locations, including three shipwrecks. After a few hours at the South China Sea, unwind for the famous Bornean sunset on the pristine white-sand beaches.',
      name: 'mantananiIslandContent',
      desc: 'The description for Mantanani Island',
      args: [],
    );
  }

  /// `Genting Highlands, Pahang`
  String get gentingHighlands {
    return Intl.message(
      'Genting Highlands, Pahang',
      name: 'gentingHighlands',
      desc: 'Title for Genting Highlands',
      args: [],
    );
  }

  /// `Just 45 minutes away from KL, Genting Highlands is a cool hill station nestled in the cool mountain air and surrounded by a magnificent 100 million-year-old rainforest. If you want to escape the hustle and bustle of city life, Genting Highlands has a plethora of three and five-star properties with onsite eateries, facilities, impeccable service, and luxurious guestrooms with stunning mountain views.`
  String get gentingHighlandsContent {
    return Intl.message(
      'Just 45 minutes away from KL, Genting Highlands is a cool hill station nestled in the cool mountain air and surrounded by a magnificent 100 million-year-old rainforest. If you want to escape the hustle and bustle of city life, Genting Highlands has a plethora of three and five-star properties with onsite eateries, facilities, impeccable service, and luxurious guestrooms with stunning mountain views.',
      name: 'gentingHighlandsContent',
      desc: 'Description for Genting Highlands',
      args: [],
    );
  }

  /// `Bukit Tinggi, Pahang`
  String get bukitTinggi {
    return Intl.message(
      'Bukit Tinggi, Pahang',
      name: 'bukitTinggi',
      desc: 'Title for Bukit Tinggi',
      args: [],
    );
  }

  /// `Colmar Tropicale is a "French-themed" village and hotel in Bukit Tinggi, Pahang, Malaysia. It is situated on 80 acres of natural forestland at a height of 2,600 feet (790 m). The design was influenced by the original town of Colmar in Alsace, France. What could be more relaxing after all the thrilling experiences in the hot and humid atmosphere than a peaceful stay in any of the hill resorts, where one could sit in an open verandah sipping freshly brewed tea or indulging in cream-soaked fresh strawberries.`
  String get bukitTinggiContent {
    return Intl.message(
      'Colmar Tropicale is a "French-themed" village and hotel in Bukit Tinggi, Pahang, Malaysia. It is situated on 80 acres of natural forestland at a height of 2,600 feet (790 m). The design was influenced by the original town of Colmar in Alsace, France. What could be more relaxing after all the thrilling experiences in the hot and humid atmosphere than a peaceful stay in any of the hill resorts, where one could sit in an open verandah sipping freshly brewed tea or indulging in cream-soaked fresh strawberries.',
      name: 'bukitTinggiContent',
      desc: 'Description for Bukit Tinggi',
      args: [],
    );
  }

  /// `Fraser Hill, Pahang`
  String get fraserHill {
    return Intl.message(
      'Fraser Hill, Pahang',
      name: 'fraserHill',
      desc: 'Title for Fraser Hill',
      args: [],
    );
  }

  /// `Fraser's Hill situated in the state of Pahang in the central region of Peninsular Malaysia. This cooling holiday resort is famous for its nature activities and cooling atmosphere and is one of Malaysia's last hill stations, an imprint of former British colonial masters. Bukit Fraser has an average elevation of 1,200 metres, but its highest point is 1,500 metres above sea level at Telekom's loop. Temperatures usually range from 22°C to 28°C during the day and from 16°C to 20°C at night.`
  String get fraserHillContent {
    return Intl.message(
      'Fraser\'s Hill situated in the state of Pahang in the central region of Peninsular Malaysia. This cooling holiday resort is famous for its nature activities and cooling atmosphere and is one of Malaysia\'s last hill stations, an imprint of former British colonial masters. Bukit Fraser has an average elevation of 1,200 metres, but its highest point is 1,500 metres above sea level at Telekom\'s loop. Temperatures usually range from 22°C to 28°C during the day and from 16°C to 20°C at night.',
      name: 'fraserHillContent',
      desc: 'Description for Fraser Hill',
      args: [],
    );
  }

  /// `Cameron Highland, Pahang`
  String get cameronHighland {
    return Intl.message(
      'Cameron Highland, Pahang',
      name: 'cameronHighland',
      desc: 'Title for Cameron Highland',
      args: [],
    );
  }

  /// `Cameron Highlands is Malaysia's most common highland retreat with a mild atmosphere, with daytime temperatures ranging about 25°C and nighttime temperatures on average about 18°C. The highlands divides into three townships: Tanah Rata, Brinchang, and Ringlet. The British grew tea on the rich fertile mountain slopes during the colonial period, a tradition still practised by locals. Since then, it has become Malaysia's largest tea exporter. Aside from tea, Cameron is also ideal for growing continental trees, fruits, and vegetables.`
  String get cameronHighlandContent {
    return Intl.message(
      'Cameron Highlands is Malaysia\'s most common highland retreat with a mild atmosphere, with daytime temperatures ranging about 25°C and nighttime temperatures on average about 18°C. The highlands divides into three townships: Tanah Rata, Brinchang, and Ringlet. The British grew tea on the rich fertile mountain slopes during the colonial period, a tradition still practised by locals. Since then, it has become Malaysia\'s largest tea exporter. Aside from tea, Cameron is also ideal for growing continental trees, fruits, and vegetables.',
      name: 'cameronHighlandContent',
      desc: 'Description for Cameron Highland',
      args: [],
    );
  }

  /// `Maxwell Hill, Perak`
  String get maxwellHill {
    return Intl.message(
      'Maxwell Hill, Perak',
      name: 'maxwellHill',
      desc: 'Title for Maxwell Hill',
      args: [],
    );
  }

  /// `Cameron Highlands is Malaysia's most common highland retreat with a mild atmosphere, with daytime temperatures ranging about 25°C and nighttime temperatures on average about 18°C. The highlands divides into three townships: Tanah Rata, Brinchang, and Ringlet. The British grew tea on the rich fertile mountain slopes during the colonial period, a tradition still practised by locals. Since then, it has become Malaysia's largest tea exporter. Aside from tea, Cameron is also ideal for growing continental trees, fruits, and vegetables.`
  String get maxwellHillContent {
    return Intl.message(
      'Cameron Highlands is Malaysia\'s most common highland retreat with a mild atmosphere, with daytime temperatures ranging about 25°C and nighttime temperatures on average about 18°C. The highlands divides into three townships: Tanah Rata, Brinchang, and Ringlet. The British grew tea on the rich fertile mountain slopes during the colonial period, a tradition still practised by locals. Since then, it has become Malaysia\'s largest tea exporter. Aside from tea, Cameron is also ideal for growing continental trees, fruits, and vegetables.',
      name: 'maxwellHillContent',
      desc: 'Description for Maxwell Hill',
      args: [],
    );
  }

  /// `Sungai Pisang Waterfall, Batu Caves`
  String get sungaiPisangWaterfall {
    return Intl.message(
      'Sungai Pisang Waterfall, Batu Caves',
      name: 'sungaiPisangWaterfall',
      desc: 'Title for Sungai Pisang Waterfall',
      args: [],
    );
  }

  /// `Pisang Falls is a 3.1-kilometers out-and-back path with a waterfall near Gombak, Selangor, Malaysia. It is suitable for hikers of all ability levels. The trail is open all year and is used frequently for camping, biking, and bird watching. Near the top of the waterfall, there are some absolute picnic and camping spots. A leisure hike that requires you to trek across a waterfall, be prepared to have wet shoes.`
  String get sungaiPisangContent {
    return Intl.message(
      'Pisang Falls is a 3.1-kilometers out-and-back path with a waterfall near Gombak, Selangor, Malaysia. It is suitable for hikers of all ability levels. The trail is open all year and is used frequently for camping, biking, and bird watching. Near the top of the waterfall, there are some absolute picnic and camping spots. A leisure hike that requires you to trek across a waterfall, be prepared to have wet shoes.',
      name: 'sungaiPisangContent',
      desc: 'Description for Sungai Pisang Waterfall',
      args: [],
    );
  }

  /// `Jeram Toi, Negeri Sembilan`
  String get jeramToi {
    return Intl.message(
      'Jeram Toi, Negeri Sembilan',
      name: 'jeramToi',
      desc: 'Title for Jeram Toi Waterfall',
      args: [],
    );
  }

  /// `The Jeram Toi waterfalls are halfway between Seremban and Kuala Kelawang. They soon became a popular location for a soothing bath and a family picnic after being founded in 1985. Keep in mind that Jeram Toi has a separate exit that is marked when passing through the highways. There are tents, toilets, barbeque pits, and a cement walkway with steps leading up the gorge in this section. This place can be busy on weekends but peaceful throughout the week.`
  String get jeramToiContent {
    return Intl.message(
      'The Jeram Toi waterfalls are halfway between Seremban and Kuala Kelawang. They soon became a popular location for a soothing bath and a family picnic after being founded in 1985. Keep in mind that Jeram Toi has a separate exit that is marked when passing through the highways. There are tents, toilets, barbeque pits, and a cement walkway with steps leading up the gorge in this section. This place can be busy on weekends but peaceful throughout the week.',
      name: 'jeramToiContent',
      desc: 'Description for Jeram Toi Waterfall',
      args: [],
    );
  }

  /// `Ulu Chepor, Perak`
  String get uluChepor {
    return Intl.message(
      'Ulu Chepor, Perak',
      name: 'uluChepor',
      desc: 'Title for Ulu Chepor Waterfall',
      args: [],
    );
  }

  /// `Lata Ulu Chepor is just 10 kilometers from Ipoh City and is embraced by verdant tropical rainforest hills. The park is accessible via Route A1 to Chemor, near the Ipoh Utara Toll Plaza. This place is ideal for getting some fresh air, resting, and having a picnic on weekends. For guests who wish to stay for an extended period or participate in instructional and leisure events, facilities such as a campground, multi-purpose hall, praying hall, and bathroom are available. The park is well-kept and marked on the main lane. If you're feeling brave, there's even a downhill track path.`
  String get uluCheporContent {
    return Intl.message(
      'Lata Ulu Chepor is just 10 kilometers from Ipoh City and is embraced by verdant tropical rainforest hills. The park is accessible via Route A1 to Chemor, near the Ipoh Utara Toll Plaza. This place is ideal for getting some fresh air, resting, and having a picnic on weekends. For guests who wish to stay for an extended period or participate in instructional and leisure events, facilities such as a campground, multi-purpose hall, praying hall, and bathroom are available. The park is well-kept and marked on the main lane. If you\'re feeling brave, there\'s even a downhill track path.',
      name: 'uluCheporContent',
      desc: 'Description for Ulu Chepor Waterfall',
      args: [],
    );
  }

  /// `Sungai Lembing, Pahang`
  String get sungaiLembing {
    return Intl.message(
      'Sungai Lembing, Pahang',
      name: 'sungaiLembing',
      desc: 'Title for Sungai Lembing Waterfall',
      args: [],
    );
  }

  /// `Malaysia is endowed with a plethora of rainforests, which give way to breathtaking waterfalls. Rainbow waterfall is situated 45 kilometers northwest of Kuantan, Peninsular Malaysia, in the town of Sungei Lembing. The sun meets the falling water at the base of the falls every morning between 9 and 10 a.m., making a stunning rainbow. People fly from all over the world to make the one-and-a-half-hour trip to the falls only to see nature's beauty. Rainbow Waterfall is a large waterfall hidden in the Sungai Lembing rainforest area, accessible by 4WD vehicle ride and hiking.`
  String get sungaiLembingContent {
    return Intl.message(
      'Malaysia is endowed with a plethora of rainforests, which give way to breathtaking waterfalls. Rainbow waterfall is situated 45 kilometers northwest of Kuantan, Peninsular Malaysia, in the town of Sungei Lembing. The sun meets the falling water at the base of the falls every morning between 9 and 10 a.m., making a stunning rainbow. People fly from all over the world to make the one-and-a-half-hour trip to the falls only to see nature\'s beauty. Rainbow Waterfall is a large waterfall hidden in the Sungai Lembing rainforest area, accessible by 4WD vehicle ride and hiking.',
      name: 'sungaiLembingContent',
      desc: 'Description for Sungai Lembing Waterfall',
      args: [],
    );
  }

  /// `Seven Wells Waterfall, Kedah`
  String get sevenWellsWaterfall {
    return Intl.message(
      'Seven Wells Waterfall, Kedah',
      name: 'sevenWellsWaterfall',
      desc: 'Title for Seven Wells Waterfall',
      args: [],
    );
  }

  /// `The Seven Wells Waterfall, also known as Jalan Telaga Tujuh, is situated about a 20-minute walk from the famous Langkawi Sky Bridge and is one of the island's most stunning natural attractions. The waterfall cascades down Mount Mat Cincang, Langkawi's second-highest peak, and is a popular attraction for tourists and locals. The complete vertical fall is 91 metres high, but only a small section can be seen from the bottom. According to legend, this waterfall is home to fairies and the river has soothing properties. The waterfall looks magical because it is surrounded by nature, with rich flora and fauna.`
  String get sevenWellsContent {
    return Intl.message(
      'The Seven Wells Waterfall, also known as Jalan Telaga Tujuh, is situated about a 20-minute walk from the famous Langkawi Sky Bridge and is one of the island\'s most stunning natural attractions. The waterfall cascades down Mount Mat Cincang, Langkawi\'s second-highest peak, and is a popular attraction for tourists and locals. The complete vertical fall is 91 metres high, but only a small section can be seen from the bottom. According to legend, this waterfall is home to fairies and the river has soothing properties. The waterfall looks magical because it is surrounded by nature, with rich flora and fauna.',
      name: 'sevenWellsContent',
      desc: 'Description for Seven Wells Waterfall',
      args: [],
    );
  }

  /// `Broga Hill, Semenyih`
  String get brogaHill {
    return Intl.message(
      'Broga Hill, Semenyih',
      name: 'brogaHill',
      desc: 'Title for Broga Hill',
      args: [],
    );
  }

  /// `Broga Hill, also known as ‘Bukit Lalang' by the locals, is named after the ‘lalang,' a native species of grass that grows abundantly here. This 400-meter-high hill is located in a lush tropical forest in Semenyih at the edge of the Titiwangsa Range, 40 minutes from Kuala Lumpur on the trunk road to Broga. Its spectacular panoramic views, particularly at dawn, are well known to both locals and tourists. Its prominence is also due to its ease of access by foot. For first-timers, the climb up the first peak may be intimidating. Fortunately, there are cords attached to the trees to assist newcomers. The view that awaits you at the top will undoubtedly reward your efforts.`
  String get brogaHillContent {
    return Intl.message(
      'Broga Hill, also known as ‘Bukit Lalang\' by the locals, is named after the ‘lalang,\' a native species of grass that grows abundantly here. This 400-meter-high hill is located in a lush tropical forest in Semenyih at the edge of the Titiwangsa Range, 40 minutes from Kuala Lumpur on the trunk road to Broga. Its spectacular panoramic views, particularly at dawn, are well known to both locals and tourists. Its prominence is also due to its ease of access by foot. For first-timers, the climb up the first peak may be intimidating. Fortunately, there are cords attached to the trees to assist newcomers. The view that awaits you at the top will undoubtedly reward your efforts.',
      name: 'brogaHillContent',
      desc: 'Description for Broga Hill',
      args: [],
    );
  }

  /// `Mount Pulai, Johor`
  String get mountPulai {
    return Intl.message(
      'Mount Pulai, Johor',
      name: 'mountPulai',
      desc: 'Title for Mount Pulai',
      args: [],
    );
  }

  /// `Gunung Pulai is a 654-meter-tall mountain in Johor, Peninsular Malaysia. Due to its proximity and ease of entry, it is a popular hiking destination for Singaporeans and locals. The summit of Gunung Pulai is not open to the public as it is secured by the military and holds two communication towers. Mount Pulai is a 14.3-kilometer moderately trafficked loop trail near Kulai, Johor, Malaysia, with a waterfall and a difficulty rating. The trail is also used for camping, cycling, running, and taking nature walks.`
  String get mountPulaiContent {
    return Intl.message(
      'Gunung Pulai is a 654-meter-tall mountain in Johor, Peninsular Malaysia. Due to its proximity and ease of entry, it is a popular hiking destination for Singaporeans and locals. The summit of Gunung Pulai is not open to the public as it is secured by the military and holds two communication towers. Mount Pulai is a 14.3-kilometer moderately trafficked loop trail near Kulai, Johor, Malaysia, with a waterfall and a difficulty rating. The trail is also used for camping, cycling, running, and taking nature walks.',
      name: 'mountPulaiContent',
      desc: 'Description for Mount Pulai',
      args: [],
    );
  }

  /// `Panorama Hill, Sungai Lembing`
  String get panoramaHill {
    return Intl.message(
      'Panorama Hill, Sungai Lembing',
      name: 'panoramaHill',
      desc: 'Title for Panorama Hill',
      args: [],
    );
  }

  /// `Bukit Panorama is a hill in Sungai Lembing, 45 kilometres northwest of Kuantan. Standing at 271 metres tall, there is just one path up the slope. Start at the bottom of the stairwell and work your way up. The trail's key feature is a stairwell with railings; only a few short stretches are without the stairwell. When you hit the top of the hill, you will be able to see a panoramic view of the surrounding city. The visitor will usually take 30 to 45 minutes to walk up Bukit Panorama.`
  String get panoramaHillContent {
    return Intl.message(
      'Bukit Panorama is a hill in Sungai Lembing, 45 kilometres northwest of Kuantan. Standing at 271 metres tall, there is just one path up the slope. Start at the bottom of the stairwell and work your way up. The trail\'s key feature is a stairwell with railings; only a few short stretches are without the stairwell. When you hit the top of the hill, you will be able to see a panoramic view of the surrounding city. The visitor will usually take 30 to 45 minutes to walk up Bukit Panorama.',
      name: 'panoramaHillContent',
      desc: 'Description for Panorama Hill',
      args: [],
    );
  }

  /// `Mossy Forest, Cameron Highlands`
  String get mossyForest {
    return Intl.message(
      'Mossy Forest, Cameron Highlands',
      name: 'mossyForest',
      desc: 'Title for Mossy Forest',
      args: [],
    );
  }

  /// `The mossy forest is a natural ecosystem that only grows at the higher elevations of the Cameron Highlands and other Malaysian mountain ranges. Low-level clouds in the sky, driven by winds, blanket the trees in persistent mist and moisture, providing a perfect biotope for moss, ferns, lichen, and orchids. This moist tropical evergreen forest also acts as a refuge for a diverse variety of montane species, including butterflies, rodents, frogs, birds, and mammals that are only present in this cold climate.`
  String get mossyForestContent {
    return Intl.message(
      'The mossy forest is a natural ecosystem that only grows at the higher elevations of the Cameron Highlands and other Malaysian mountain ranges. Low-level clouds in the sky, driven by winds, blanket the trees in persistent mist and moisture, providing a perfect biotope for moss, ferns, lichen, and orchids. This moist tropical evergreen forest also acts as a refuge for a diverse variety of montane species, including butterflies, rodents, frogs, birds, and mammals that are only present in this cold climate.',
      name: 'mossyForestContent',
      desc: 'Description for Mossy Forest',
      args: [],
    );
  }

  /// `Penang National Park, Penang`
  String get penangNationalPark {
    return Intl.message(
      'Penang National Park, Penang',
      name: 'penangNationalPark',
      desc: 'Title for Penang National Park',
      args: [],
    );
  }

  /// `This is Malaysia's smallest national park, at 23 square kilometres, but its beach-fringed forests are home to silvered leaf monkeys, flying lemurs, leopard cats, and a plethora of lizard, amphibian, and reptile animals. Activities such as jungle walks and boat rides to serene golden-sand beaches will comfortably fill a day. There are two major trekking trails in the park: one that takes you down the coast, over headlands, to Monkey Beach, and another that takes you over the hills, through the jungle, to some of the more isolated beaches, where the Turtle Sanctuary is located.`
  String get penangNationalParkContent {
    return Intl.message(
      'This is Malaysia\'s smallest national park, at 23 square kilometres, but its beach-fringed forests are home to silvered leaf monkeys, flying lemurs, leopard cats, and a plethora of lizard, amphibian, and reptile animals. Activities such as jungle walks and boat rides to serene golden-sand beaches will comfortably fill a day. There are two major trekking trails in the park: one that takes you down the coast, over headlands, to Monkey Beach, and another that takes you over the hills, through the jungle, to some of the more isolated beaches, where the Turtle Sanctuary is located.',
      name: 'penangNationalParkContent',
      desc: 'Description for Penang National Park',
      args: [],
    );
  }

  /// `KKB Paragliding Park`
  String get kkbParaglidingPark {
    return Intl.message(
      'KKB Paragliding Park',
      name: 'kkbParaglidingPark',
      desc: 'Title for KKB Paragliding Park',
      args: [],
    );
  }

  /// `For those with an adventurous heart, Kuala Kubu Bharu presents the best of extreme sports. As you fly through the air, you will have the privilege to appreciate the wonders of nature that encompass Kuala Kubu Bharu from an aerial point of view.`
  String get kkbParaglidingParkContent {
    return Intl.message(
      'For those with an adventurous heart, Kuala Kubu Bharu presents the best of extreme sports. As you fly through the air, you will have the privilege to appreciate the wonders of nature that encompass Kuala Kubu Bharu from an aerial point of view.',
      name: 'kkbParaglidingParkContent',
      desc: 'Description for KKB Paragliding Park',
      args: [],
    );
  }

  /// `Whitewater Rafting Kuala Kubu Bharu`
  String get whitewaterRafting {
    return Intl.message(
      'Whitewater Rafting Kuala Kubu Bharu',
      name: 'whitewaterRafting',
      desc: 'Title for Whitewater Rafting Kuala Kubu Bharu',
      args: [],
    );
  }

  /// `White water rafting trips take place along the Hulu Selangor River. White water rafting brings a sense of excitement through an exhilarating drift at the end of the rafting trips with a beautiful view of nature along the banks of the river.`
  String get whitewaterRaftingContent {
    return Intl.message(
      'White water rafting trips take place along the Hulu Selangor River. White water rafting brings a sense of excitement through an exhilarating drift at the end of the rafting trips with a beautiful view of nature along the banks of the river.',
      name: 'whitewaterRaftingContent',
      desc: 'Description for Whitewater Rafting Kuala Kubu Bharu',
      args: [],
    );
  }

  /// `Jugra Hill`
  String get jugraHill {
    return Intl.message(
      'Jugra Hill',
      name: 'jugraHill',
      desc: 'Title for Jugra Hill',
      args: [],
    );
  }

  /// `At the observation of the Jugra Hill lighthouse, experience the thrill of paragliding. Depending on wind conditions, March to September tends to be the best time to do it.`
  String get jugraHillContent {
    return Intl.message(
      'At the observation of the Jugra Hill lighthouse, experience the thrill of paragliding. Depending on wind conditions, March to September tends to be the best time to do it.',
      name: 'jugraHillContent',
      desc: 'Description for Jugra Hill',
      args: [],
    );
  }

  /// `maps`
  String get maps {
    return Intl.message(
      'maps',
      name: 'maps',
      desc: 'title for maps',
      args: [],
    );
  }

  /// `january`
  String get january {
    return Intl.message(
      'january',
      name: 'january',
      desc: 'title for january',
      args: [],
    );
  }

  /// `february`
  String get february {
    return Intl.message(
      'february',
      name: 'february',
      desc: 'title for febraury',
      args: [],
    );
  }

  /// `march`
  String get march {
    return Intl.message(
      'march',
      name: 'march',
      desc: 'title for march',
      args: [],
    );
  }

  /// `april`
  String get april {
    return Intl.message(
      'april',
      name: 'april',
      desc: 'title for april',
      args: [],
    );
  }

  /// `may`
  String get may {
    return Intl.message(
      'may',
      name: 'may',
      desc: 'title for may',
      args: [],
    );
  }

  /// `june`
  String get june {
    return Intl.message(
      'june',
      name: 'june',
      desc: 'title for june',
      args: [],
    );
  }

  /// `july`
  String get july {
    return Intl.message(
      'july',
      name: 'july',
      desc: 'title for july',
      args: [],
    );
  }

  /// `august`
  String get august {
    return Intl.message(
      'august',
      name: 'august',
      desc: 'title for august',
      args: [],
    );
  }

  /// `august`
  String get september {
    return Intl.message(
      'august',
      name: 'september',
      desc: 'title for september',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'fil'),
      Locale.fromSubtags(languageCode: 'fr'),
      Locale.fromSubtags(languageCode: 'hi'),
      Locale.fromSubtags(languageCode: 'id'),
      Locale.fromSubtags(languageCode: 'ms'),
      Locale.fromSubtags(languageCode: 'pt'),
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'ta'),
      Locale.fromSubtags(languageCode: 'th'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
