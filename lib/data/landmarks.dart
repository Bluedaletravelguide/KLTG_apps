// lib/data/landmarks.dart
class Landmark {
  final String name;
  final double lat;
  final double lng;
  final String blurb;

  const Landmark({
    required this.name,
    required this.lat,
    required this.lng,
    required this.blurb,
  });
}

// KL Landmarks list
final List<Landmark> landmarks = [
  const Landmark(
    name: 'Petronas Twin Towers',
    lat: 3.15785,
    lng: 101.71152,
    blurb:
        'Iconic twin skyscrapers and a major landmark of Kuala Lumpur. The towers are 451.9 meters tall.',
  ),
  const Landmark(
    name: 'KL Tower (Menara KL)',
    lat: 3.15278,
    lng: 101.70387,
    blurb:
        'Menara Kuala Lumpur - telecommunications tower with observation deck and panoramic views.',
  ),
  const Landmark(
    name: 'Merdeka 118',
    lat: 3.13949,
    lng: 101.70164,
    blurb:
        'Second tallest building in the world at 678.9 meters, located in Kuala Lumpur.',
  ),
  const Landmark(
    name: 'Merdeka Square (Dataran Merdeka)',
    lat: 3.14775,
    lng: 101.69460,
    blurb:
        'Historic square where Malaysian independence was declared on August 31, 1957.',
  ),
  const Landmark(
    name: 'Batu Caves',
    lat: 3.23794,
    lng: 101.68403,
    blurb:
        'Limestone hill with caves and Hindu temples. Famous for the 272 colorful steps and giant statue.',
  ),
  const Landmark(
    name: 'National Mosque (Masjid Negara)',
    lat: 3.14254,
    lng: 101.69124,
    blurb:
        'The national mosque of Malaysia, known for its distinctive modernist architecture.',
  ),
  const Landmark(
    name: 'Thean Hou Temple',
    lat: 3.11939,
    lng: 101.68670,
    blurb:
        'Six-tiered Chinese temple dedicated to the goddess Tian Hou (Mazu).',
  ),
  const Landmark(
    name: 'KL City Centre (KLCC)',
    lat: 3.15460,
    lng: 101.71430,
    blurb:
        'Major shopping and entertainment complex at the base of the Petronas Towers.',
  ),
  const Landmark(
    name: 'Bukit Bintang',
    lat: 3.14721,
    lng: 101.71036,
    blurb:
        'Famous shopping and entertainment district in the heart of Kuala Lumpur.',
  ),
  const Landmark(
    name: 'Central Market',
    lat: 3.14587,
    lng: 101.69530,
    blurb:
        'Historic landmark for Malaysian culture, arts and crafts since 1888.',
  ),
  const Landmark(
    name: 'Sultan Abdul Samad Building',
    lat: 3.14824,
    lng: 101.69476,
    blurb:
        'Iconic Moorish-style building with a copper-clad clock tower, facing Merdeka Square.',
  ),
  const Landmark(
    name: 'Pavilion KL',
    lat: 3.14929,
    lng: 101.71294,
    blurb:
        'Premier shopping mall in Bukit Bintang with over 450 retail outlets.',
  ),
  const Landmark(
    name: 'Aquaria KLCC',
    lat: 3.15313,
    lng: 101.71475,
    blurb:
        'State-of-the-art aquarium showcasing over 5,000 aquatic and land-bound creatures.',
  ),
  const Landmark(
    name: 'Perdana Botanical Garden',
    lat: 3.14450,
    lng: 101.68406,
    blurb:
        'KL\'s first large-scale recreational park, featuring lush greenery and various themed gardens.',
  ),
  const Landmark(
    name: 'Islamic Arts Museum',
    lat: 3.14136,
    lng: 101.68914,
    blurb:
        'Museum housing extensive collection of Islamic decorative arts from around the world.',
  ),
];
