class Landmark {
  final String id;
  final String name;
  final double lat;
  final double lng;
  final String blurb;

  const Landmark(this.id, this.name, this.lat, this.lng, this.blurb);
}

const landmarks = <Landmark>[
  Landmark('petronas','Petronas Twin Towers',3.1579,101.7115,
      'Iconic twin towers with a skybridge and mall (Suria KLCC).'),
  Landmark('kltower','KL Tower (Menara Kuala Lumpur)',3.1528,101.7037,
      '421m telecom tower with observation deck and revolving restaurant.'),
  Landmark('merdeka118','Merdeka 118',3.1390,101.6999,
      '678.9m supertall tower near Stadium Merdeka; tallest in SEA.'),
  Landmark('centralmarket','Central Market',3.1440,101.6958,
      'Heritage art market with handicrafts and local food.'),
];
