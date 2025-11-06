// // lib/data/travel_playbook.dart
// class QA {
//   final List<String> patterns; // keywords to trigger this answer
//   final String answer; // reply text
//   final List<String> quick; // optional quick-reply buttons
//   const QA  (
//       {required this.patterns, required this.answer, this.quick = const []});
// }

// const List<QA> kTravelQA = [
//   // ========== GENERAL GREETINGS ==========
//   QA(
//     patterns: ['hello', 'hi', 'hey', 'help', 'start'],
//     answer:
//         "Hi there! 👋 Welcome to Malaysia! I'm your friendly travel buddy here to help you explore.\n\n"
//         "Ask me anything about food, attractions, shopping, or planning your adventure!\n"
//         "Try: 'What should I do tonight?' or 'Best food near me'",
//     quick: ['First time tips', 'Best food spots', 'Top attractions'],
//   ),

//   // ========== ARRIVAL & FIRST IMPRESSIONS ==========
//   QA(
//     patterns: ['first time', 'first visit', 'new here', 'never been'],
//     answer: "Welcome to Malaysia! 🇲🇾 So excited you're here!\n\n"
//         "Must-do for first-timers:\n"
//         "• Try nasi lemak for breakfast\n"
//         "• Visit Petronas Twin Towers\n"
//         "• Explore Batu Caves\n"
//         "• Eat at Jalan Alor food street\n\n"
//         "The best months to visit are March-October for less rain. You'll love it here!",
//     quick: ['Airport tips', 'Hotel areas', 'Getting around'],
//   ),

//   QA(
//     patterns: ['airport', 'klia', 'arrived', 'landing', 'sim card'],
//     answer: "Welcome to KLIA! 🛬 Here's what you need:\n\n"
//         "📱 SIM cards: Available at airport kiosks (Celcom, Digi, Maxis)\n"
//         "🚗 Transport: Grab works great, or take KLIA Express train (28min to KL)\n"
//         "💰 Money: ATMs and currency exchange available\n\n"
//         "The airport is modern and easy to navigate. Staff speak English! 😊\n\n"
//         "💡 Want to plan your trip in detail?\n"
//         "Check out KL The Guide! 👇",
//     quick: ['Best transport', 'Hotel distance', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['weather', 'rain', 'hot', 'humid', 'temperature'],
//     answer: "Malaysia is warm year-round! 🌴\n\n"
//         "☀️ Expect: 25-33°C (77-91°F)\n"
//         "💧 Humidity: High (bring light clothes!)\n"
//         "🌧️ Best time: March-October\n\n"
//         "Quick rain is common, but it usually clears fast. Pack an umbrella or light jacket!\n\n"
//         "💡 Need more travel tips?\n"
//         "Visit KL The Guide for detailed guides! 👇",
//     quick: ['What to wear', 'Indoor activities', 'KL The Guide 🔗'],
//   ),
//   // ========== ACCOMMODATION ==========
//   QA(
//     patterns: ['hotel', 'stay', 'accommodation', 'where to stay', 'homestay'],
//     answer: "Great hotel areas in KL:\n\n"
//         "🏙️ Bukit Bintang: Shopping & nightlife (10 min to KLCC)\n"
//         "🏢 KLCC: Upscale, near Twin Towers\n"
//         "🎨 Chinatown: Budget-friendly, cultural\n"
//         "🌿 Bangsar: Trendy cafes & residential\n\n"
//         "Most hotels offer airport pickup! Prices are very affordable compared to western countries 😊\n\n"
//         "💡 Need detailed area guides?\n"
//         "Check KL The Guide for neighborhood reviews! 👇",
//     quick: ['Bukit Bintang hotels', 'Budget options', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['bukit bintang', 'bb', 'pavilion', 'tonight'],
//     answer: "Bukit Bintang is THE spot! 🌟 Here's your evening plan:\n\n"
//         "🍜 Jalan Alor (6-11pm): Legendary street food paradise\n"
//         "🛍️ Pavilion KL: Shopping + fountain show at 8pm\n"
//         "🍹 Changkat: Rooftop bars & nightlife\n"
//         "✨ TRX Exchange Park: Beautiful light displays\n\n"
//         "Everything is within walking distance! Safe to explore at night 🚶\n\n"
//         "💡 Want a complete Bukit Bintang guide?\n"
//         "Visit KL The Guide for more tips! 👇",
//     quick: ['Street food guide', 'Nightlife spots', 'KL The Guide 🔗'],
//   ),

// // ========== FOOD & DINING ==========
//   QA(
//     patterns: ['food', 'eat', 'hungry', 'restaurant', 'dishes'],
//     answer: "You're in food heaven! 😍🍜 Must-try Malaysian dishes:\n\n"
//         "🍚 Nasi Lemak (coconut rice - breakfast favorite!)\n"
//         "🍜 Laksa (spicy noodle soup)\n"
//         "🥖 Roti Canai (flaky flatbread with curry)\n"
//         "🍢 Satay (grilled meat skewers)\n"
//         "🍝 Char Kuey Teow (wok-fried noodles)\n\n"
//         "Pro tip: Penang has the BEST food scene in Malaysia!\n\n"
//         "💡 Want comprehensive food guides?\n"
//         "Explore KL The Guide for restaurant reviews! 👇",
//     quick: ['Where to eat', 'Halal options', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['street food', 'jalan alor', 'hawker', 'cheap food'],
//     answer: "Street food is where the magic happens! 🔥\n\n"
//         "🌟 Jalan Alor: KL's most famous food street\n"
//         "  • Grilled wings, satay, char kuey teow\n"
//         "  • Go 6-7pm to beat crowds\n"
//         "  • Budget: RM10-25 per meal\n\n"
//         "Other spots:\n"
//         "• Chow Kit Market (local breakfast)\n"
//         "• Imbi Market (curry laksa)\n"
//         "• Madras Lane (Hokkien mee)\n\n"
//         "Don't worry - food stalls are clean and safe! 👍\n\n"
//         "💡 Looking for more hidden food spots?\n"
//         "Check KL The Guide's local favorites! 👇",
//     quick: ['Penang food', 'Night markets', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['halal', 'muslim', 'pork free', 'islamic food'],
//     answer: "Malaysia is VERY halal-friendly! 🕌✨\n\n"
//         "Most restaurants are halal-certified. Look for the halal logo.\n"
//         "Non-halal places clearly display 'pork' or 'non-halal' signs.\n\n"
//         "Must-try halal spots:\n"
//         "• Nasi Kandar (Penang/KL)\n"
//         "• Banana Leaf Rice\n"
//         "• Roti Canai everywhere!\n\n"
//         "You'll have no problems finding amazing halal food anywhere 😊\n\n"
//         "💡 Need a complete halal dining guide?\n"
//         "Visit KL The Guide for certified restaurants! 👇",
//     quick: ['Halal restaurants', 'Malay cuisine', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['vegetarian', 'vegan', 'no meat', 'veggie'],
//     answer: "Vegetarian food is easy to find! 🥗🌱\n\n"
//         "Look for:\n"
//         "• Chinese vegetarian restaurants (素食)\n"
//         "• Indian banana leaf rice (ask for veg)\n"
//         "• Roti canai with dhal\n"
//         "• Nasi lemak (skip the anchovies)\n\n"
//         "Tell servers: 'Tak mahu daging' (no meat) or 'vegetarian'\n\n"
//         "Areas: Brickfields (Little India) has tons of veggie options!\n\n"
//         "💡 Want a vegan/vegetarian restaurant list?\n"
//         "Browse KL The Guide for plant-based spots! 👇",
//     quick: ['Vegan cafes', 'Indian veg', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['nasi lemak', 'breakfast', 'morning food'],
//     answer: "Nasi Lemak is Malaysia's PRIDE! 🇲🇾🍚\n\n"
//         "What is it? Fragrant coconut rice with:\n"
//         "• Sambal (spicy sauce)\n"
//         "• Fried anchovies & peanuts\n"
//         "• Boiled egg\n"
//         "• Cucumber slices\n"
//         "+ Optional: fried chicken, rendang, squid\n\n"
//         "Where to try:\n"
//         "• Village Park Restaurant (famous!)\n"
//         "• Any mamak stall\n"
//         "• Hotel breakfast buffets\n\n"
//         "Price: RM5-15. Eaten for breakfast but good anytime!\n\n"
//         "💡 Discover the best nasi lemak spots!\n"
//         "Check KL The Guide's foodie recommendations! 👇",
//     quick: ['Other breakfast', 'Best nasi lemak', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['drink', 'teh tarik', 'beverage', 'coffee', 'tea'],
//     answer: "Malaysian drinks are amazing! 🍹☕\n\n"
//         "Must-try:\n"
//         "☕ Teh Tarik: 'Pulled' milk tea (sweet & frothy)\n"
//         "🥥 Coconut shake: Fresh & cold\n"
//         "🍋 Limau ais: Fresh lime juice\n"
//         "🧊 Cendol: Sweet icy dessert drink\n"
//         "☕ White coffee: Ipoh specialty\n\n"
//         "Find them at: Mamak stalls, kopitiam (coffee shops), food courts.\n"
//         "Try teh tarik - it's our national drink! 😊\n\n"
//         "💡 Want more drink recommendations?\n"
//         "Check KL The Guide for cafe reviews! 👇",
//     quick: ['Where to find', 'Dessert drinks', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['penang food', 'penang', 'best food city'],
//     answer: "Penang is FOOD PARADISE! 🏝️😍\n\n"
//         "Why Penang wins:\n"
//         "• Char Kuey Teow (best in Malaysia!)\n"
//         "• Assam Laksa (sour spicy noodles)\n"
//         "• Hokkien Mee (prawn noodles)\n"
//         "• Nasi Kandar (24/7 rice buffet)\n\n"
//         "Where to eat:\n"
//         "• Gurney Drive hawker center\n"
//         "• Chulia Street night market\n"
//         "• New Lane (Lorong Baru)\n\n"
//         "Foodies say: KL is great, but Penang is LEGENDARY! 🔥\n\n"
//         "💡 Planning a Penang food trip?\n"
//         "Visit KL The Guide for detailed reviews! 👇",
//     quick: ['Best hawker centers', 'Must-try dishes', 'KL The Guide 🔗'],
//   ),

//   // ========== SHOPPING ==========
//   QA(
//     patterns: ['shopping', 'mall', 'buy', 'shop', 'souvenirs'],
//     answer: "Shopping in Malaysia is AMAZING! 🛍️✨\n\n"
//         "Top malls in KL:\n"
//         "🏢 Pavilion KL: Luxury brands\n"
//         "🌟 Suria KLCC: Below the Twin Towers!\n"
//         "🎪 Sunway Pyramid: Huge with ice rink\n"
//         "💎 TRX Exchange: Newest & fanciest\n"
//         "📦 Mid Valley: Massive selection\n\n"
//         "Budget tip: Visit during mega sales (March, Aug, Dec)!\n"
//         "Most malls open 10am-10pm 😊\n\n"
//         "💡 Need a complete shopping guide?\n"
//         "Check KL The Guide for mall reviews! 👇",
//     quick: ['Sale seasons', 'Mall locations', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['souvenir', 'gift', 'bring home', 'batik'],
//     answer: "Best Malaysian souvenirs! 🎁🇲🇾\n\n"
//         "🎨 Batik: Hand-painted fabric (shirts, scarves)\n"
//         "🍫 Chocolates: Beryl's, Vochelle\n"
//         "🍪 Pineapple tarts & cookies\n"
//         "🧴 Local products: tongkat ali, bird's nest\n"
//         "🎭 Pewter: Royal Selangor crafts\n"
//         "☕ Coffee: White coffee from Ipoh\n\n"
//         "Where to shop:\n"
//         "• Central Market (craft & batik)\n"
//         "• KLIA airport (last minute!)\n"
//         "• Petaling Street (bargain!)\n\n"
//         "Tax refund available at airport for purchases >RM300!\n\n"
//         "💡 Want more souvenir shopping tips?\n"
//         "Browse KL The Guide for recommendations! 👇",
//     quick: ['Where to buy', 'Price guide', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['electronics', 'gadget', 'phone', 'camera', 'tech'],
//     answer: "For electronics, head to:\n\n"
//         "💻 Plaza Low Yat: KL's tech hub!\n"
//         "  • 5 floors of gadgets\n"
//         "  • Competitive prices\n"
//         "  • Can bargain a bit\n\n"
//         "📱 Other spots:\n"
//         "• Digital Mall (near Low Yat)\n"
//         "• All-Asia (cameras)\n"
//         "• Airport duty-free\n\n"
//         "Tip: Compare prices! Warranty may differ from your country 📱\n\n"
//         "💡 Looking for tech shopping details?\n"
//         "Visit KL The Guide for store info! 👇",
//     quick: ['Shopping tips', 'Warranty info', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['night market', 'pasar malam', 'jonker walk', 'street market'],
//     answer: "Night markets are SO fun! 🌙✨\n\n"
//         "🎪 Popular ones:\n"
//         "• Jonker Walk (Melaka) - Fri-Sun\n"
//         "• Chow Kit - Daily\n"
//         "• Bangsar Sunday Market\n"
//         "• Taman Connaught (Thu) - longest!\n\n"
//         "What to expect:\n"
//         "🍜 Street food galore\n"
//         "👕 Cheap clothes & accessories\n"
//         "🎮 Games & toys\n"
//         "🌻 Fresh fruits\n\n"
//         "Bargaining is expected! Start at 50% of asking price 😄\n\n"
//         "💡 Need a complete market guide?\n"
//         "Check KL The Guide for schedules! 👇",
//     quick: ['Market schedules', 'What to buy', 'KL The Guide 🔗'],
//   ),

//   // ========== ATTRACTIONS & SIGHTSEEING ==========
//   QA(
//     patterns: ['attraction', 'see', 'visit', 'sights', 'landmarks', 'tourist'],
//     answer: "Top must-see attractions! 🌟\n\n"
//         "🏙️ KL Icons:\n"
//         "• Petronas Twin Towers (book early!)\n"
//         "• Batu Caves (free, stunning!)\n"
//         "• KL Tower (city views)\n"
//         "• Merdeka Square (heritage)\n\n"
//         "🏝️ Beyond KL:\n"
//         "• Langkawi (beaches & cable car)\n"
//         "• Penang (street art & food)\n"
//         "• Melaka (UNESCO heritage)\n"
//         "• Cameron Highlands (tea farms)\n\n"
//         "Which vibe interests you? 😊\n\n"
//         "💡 Want detailed attraction guides?\n"
//         "Explore KL The Guide for complete info! 👇",
//     quick: ['Top 10 must-see', 'Hidden gems', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['petronas', 'twin towers', 'klcc', 'towers'],
//     answer: "Petronas Twin Towers - Malaysia's ICON! 🏙️✨\n\n"
//         "📸 Best views:\n"
//         "• Skybridge (floor 41) + Observation Deck (86)\n"
//         "• Book online in advance!\n"
//         "• RM80-100 per person\n\n"
//         "⏰ Timings: 9am-9pm (closed Mon)\n\n"
//         "FREE alternatives:\n"
//         "• KLCC Park fountain show (8pm & 9pm)\n"
//         "• View from Traders Hotel Sky Bar\n"
//         "• Photos from Suria KLCC mall\n\n"
//         "Evening is magical with lights! 🌆\n\n"
//         "💡 Need more KLCC area tips?\n"
//         "Check KL The Guide for full details! 👇",
//     quick: ['Booking guide', 'Photo spots', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['batu caves', 'temple', 'stairs', 'monkey', 'hindu'],
//     answer: "Batu Caves - INCREDIBLE! 🕉️🐒\n\n"
//         "What to expect:\n"
//         "• 272 rainbow stairs\n"
//         "• Giant golden statue\n"
//         "• Hindu temple inside cave\n"
//         "• Cheeky monkeys (hold your belongings!)\n\n"
//         "📍 30min from KL (take KTM Komuter)\n"
//         "💰 FREE entry\n"
//         "⏰ 6am-9pm\n\n"
//         "Dress code: Cover shoulders & knees\n"
//         "Go early morning to beat heat & crowds! 🌅\n\n"
//         "💡 Planning your Batu Caves visit?\n"
//         "Visit KL The Guide for transport tips! 👇",
//     quick: ['Getting there', 'Best time', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['heritage', 'history', 'museum', 'culture', 'merdeka'],
//     answer: "Explore Malaysia's rich history! 🏛️📚\n\n"
//         "🏛️ KL Heritage Walk:\n"
//         "• Merdeka Square (Independence)\n"
//         "• Sultan Abdul Samad Building\n"
//         "• Masjid Jamek (mosque)\n"
//         "• Central Market (handicrafts)\n"
//         "• River of Life\n\n"
//         "🏙️ UNESCO Sites:\n"
//         "• George Town (Penang) - street art!\n"
//         "• Melaka - colonial history\n\n"
//         "Museums:\n"
//         "• Islamic Arts Museum (stunning!)\n"
//         "• National Museum\n\n"
//         "Most are walkable! Easy half-day tour 🚶\n\n"
//         "💡 Want a heritage walking route?\n"
//         "Browse KL The Guide for itineraries! 👇",
//     quick: ['Walking routes', 'Museum list', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['melaka', 'malacca', 'historic city', 'a famosa'],
//     answer: "Melaka (Malacca) - UNESCO Heritage City! 🏰\n\n"
//         "Must-see:\n"
//         "🏛️ A Famosa Fort (1511!)\n"
//         "⛪ St. Paul's Church (ruins on hill)\n"
//         "🎨 Jonker Walk (night market Fri-Sun)\n"
//         "🚤 Melaka River cruise (RM25)\n"
//         "🕌 Red Dutch Square\n\n"
//         "📍 2 hours from KL by bus\n"
//         "💰 RM10-15 one-way\n"
//         "⏰ Perfect as day trip or overnight\n\n"
//         "Don't miss: Chicken rice balls & Nyonya food! 🍚✨\n\n"
//         "💡 Planning a Melaka day trip?\n"
//         "Check KL The Guide for complete itinerary! 👇",
//     quick: ['Day trip plan', 'Food spots', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['penang', 'george town', 'street art', 'island'],
//     answer: "Penang - The Pearl of Orient! 🏝️🎨\n\n"
//         "Why visit:\n"
//         "🎨 Famous street art murals\n"
//         "🍜 BEST food in Malaysia!\n"
//         "🏛️ UNESCO heritage George Town\n"
//         "🏖️ Beaches (Batu Ferringhi)\n"
//         "🚡 Penang Hill cable car\n"
//         "🕉️ Kek Lok Si Temple (largest Buddhist temple)\n\n"
//         "📍 1-hour flight or 4-hour bus from KL\n"
//         "⏰ Need 2-3 days minimum\n\n"
//         "Rent a scooter to explore! 🛵\n\n"
//         "💡 Need a complete Penang guide?\n"
//         "Visit KL The Guide for everything! 👇",
//     quick: ['3-day itinerary', 'Best areas', 'KL The Guide 🔗'],
//   ),

//   // ========== NATURE & ADVENTURE ==========
//   QA(
//     patterns: ['nature', 'outdoor', 'hiking', 'trek', 'jungle', 'mountain'],
//     answer: "Malaysia's nature is STUNNING! 🌿🏔️\n\n"
//         "🏔️ Mountains & Hills:\n"
//         "• Mount Kinabalu (highest in SEA!)\n"
//         "• Broga Hill (sunrise hike, 2hr)\n"
//         "• Penang Hill (cable car up!)\n\n"
//         "🌲 Rainforests:\n"
//         "• Taman Negara (oldest jungle!)\n"
//         "• Cameron Highlands (tea plantations)\n"
//         "• Endau Rompin\n\n"
//         "🏝️ Islands:\n"
//         "• Langkawi, Perhentian, Tioman\n"
//         "• Sipadan (world-class diving!)\n\n"
//         "Adventure level? I can suggest! 😊\n\n"
//         "💡 Need outdoor adventure guides?\n"
//         "Visit KL The Guide for hiking tips! 👇",
//     quick: ['Beginner trails', 'Adventure tours', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['langkawi', 'island', 'beach', 'cable car', 'sky bridge'],
//     answer: "Langkawi - Island Paradise! 🏝️☀️\n\n"
//         "Must-do:\n"
//         "🚡 Cable Car + Sky Bridge (amazing views!)\n"
//         "🏖️ Pantai Cenang (main beach)\n"
//         "🦅 Eagle Square & boat tour\n"
//         "🌅 Sunset cruise\n"
//         "💦 Seven Wells Waterfall\n\n"
//         "📍 1-hour flight from KL\n"
//         "💰 Duty-free shopping (cheap chocolate!)\n"
//         "⏰ Need 3-4 days to enjoy\n\n"
//         "Rent a car - island is big! 🚗\n"
//         "Weather: Best Nov-March\n\n"
//         "💡 Planning a Langkawi trip?\n"
//         "Check KL The Guide for complete info! 👇",
//     quick: ['Island itinerary', 'Beach guide', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['cameron highlands', 'tea', 'strawberry', 'highland', 'cool'],
//     answer: "Cameron Highlands - Cool Mountain Retreat! 🍓☕\n\n"
//         "Perfect for:\n"
//         "🍵 Tea plantation tours (BOH Tea)\n"
//         "🍓 Strawberry farms (pick your own!)\n"
//         "🌺 Flower gardens\n"
//         "🥦 Fresh veggie markets\n"
//         "🥾 Jungle trails (Mossy Forest)\n\n"
//         "📍 3-4 hours from KL by bus\n"
//         "🌡️ 15-25°C (bring jacket!)\n"
//         "⏰ Perfect 2-day trip\n\n"
//         "Stay in Tanah Rata (main town).\n"
//         "Try steamboat & scones with cream! 😊\n\n"
//         "💡 Need a Cameron Highlands guide?\n"
//         "Browse KL The Guide for tour details! 👇",
//     quick: ['2-day itinerary', 'What to pack', 'KL The Guide 🔗'],
//   ),

//   // ========== TRANSPORTATION ==========
//   QA(
//     patterns: [
//       'transport',
//       'travel',
//       'getting around',
//       'how to get',
//       'move around'
//     ],
//     answer: "Getting around Malaysia! 🚇🚗\n\n"
//         "In KL:\n"
//         "🚇 LRT/MRT: Fast, cheap (RM1-5)\n"
//         "📱 Grab: Like Uber (safe & easy)\n"
//         "🚌 Go KL bus: FREE purple buses!\n"
//         "🚶 Walk: City center is walkable\n\n"
//         "Between cities:\n"
//         "✈️ Flights: AirAsia, MAS\n"
//         "🚌 Buses: Comfortable & cheap\n"
//         "🚂 Trains: KTM, ETS (to Penang/Ipoh)\n\n"
//         "Download: Grab, Google Maps, Moovit 📱\n\n"
//         "💡 Want detailed transport routes?\n"
//         "Check KL The Guide for travel tips! 👇",
//     quick: ['Train routes', 'Best apps', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['grab', 'taxi', 'uber', 'ride'],
//     answer: "Grab is your BEST FRIEND! 📱🚗\n\n"
//         "Why Grab:\n"
//         "✅ Safer than street taxis\n"
//         "✅ Fixed price (no haggling)\n"
//         "✅ Track your ride\n"
//         "✅ Cashless payment\n\n"
//         "Download Grab app before arriving!\n\n"
//         "💰 Price examples:\n"
//         "• Airport to city: RM60-90\n"
//         "• KLCC to Batu Caves: RM25-35\n"
//         "• Within city: RM8-20\n\n"
//         "Alternative: InDriver (sometimes cheaper!)\n\n"
//         "💡 Need more transport tips?\n"
//         "Visit KL The Guide for Grab hacks! 👇",
//     quick: ['Setup guide', 'Price estimates', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['train', 'lrt', 'mrt', 'monorail', 'rail', 'klia express'],
//     answer: "KL's trains are GREAT! 🚇💨\n\n"
//         "Types:\n"
//         "🚄 KLIA Express: Airport ↔️ City (28min, RM55)\n"
//         "🚇 LRT: Main city lines (Kelana Jaya, Ampang)\n"
//         "🚇 MRT: Newer, faster (SBK, Putrajaya)\n"
//         "🚝 Monorail: Through city center\n"
//         "🚂 KTM: Suburban (to Batu Caves!)\n\n"
//         "💳 Get MyRapid card (RM10 deposit)\n"
//         "💰 RM1-5 per trip\n"
//         "⏰ 6am-midnight\n\n"
//         "Very clean & safe! 😊\n\n"
//         "💡 Want a complete train guide?\n"
//         "Browse KL The Guide for route maps! 👇",
//     quick: ['Station map', 'Card guide', 'KL The Guide 🔗'],
//   ),

//   // ========== PLANNING & PRACTICAL ==========
//   QA(
//     patterns: ['plan', 'itinerary', 'schedule', 'how many days', 'trip plan'],
//     answer: "Let me help you plan! 📅✨\n\n"
//         "Perfect KL itinerary:\n\n"
//         "Day 1: KLCC → Batu Caves → Bukit Bintang\n"
//         "Day 2: Heritage walk → Central Market → KL Tower\n"
//         "Day 3: Day trip (Melaka or Genting)\n\n"
//         "With more time:\n"
//         "• 5-7 days: Add Penang or Langkawi\n"
//         "• 10-14 days: Cover East Malaysia (Sabah/Sarawak)\n\n"
//         "How long are you staying? I'll customize! 😊\n\n"
//         "💡 Need detailed day-by-day plans?\n"
//         "Check KL The Guide for full itineraries! 👇",
//     quick: ['3-day detailed', '7-day plan', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['budget', 'cost', 'expensive', 'cheap', 'money', 'price'],
//     answer: "Malaysia is VERY affordable! 💰✨\n\n"
//         "Daily budget:\n"
//         "🎒 Budget: RM100-150 (USD25-35)\n"
//         "  • Hostel, street food, local transport\n\n"
//         "🏨 Mid-range: RM250-400 (USD60-95)\n"
//         "  • Hotel, mix dining, Grab rides\n\n"
//         "💎 Comfort: RM500+ (USD120+)\n"
//         "  • Nice hotel, restaurants, tours\n\n"
//         "Free stuff:\n"
//         "• Parks, temples, heritage walks\n"
//         "• Go KL buses\n"
//         "• KLCC park fountain show\n\n"
//         "Your money goes FAR here! 😊\n\n"
//         "💡 Want budget travel hacks?\n"
//         "Visit KL The Guide for money tips! 👇",
//     quick: ['Budget breakdown', 'Free things', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['safe', 'safety', 'dangerous', 'secure', 'theft', 'crime'],
//     answer: "Malaysia is SAFE for tourists! ✅😊\n\n"
//         "Safety tips:\n"
//         "👍 Generally very safe\n"
//         "👍 Locals are friendly & helpful\n"
//         "👍 Low violent crime\n\n"
//         "⚠️ Watch out for:\n"
//         "• Pickpockets in crowded areas\n"
//         "• Bag snatchers (rare, but hold bags tight)\n"
//         "• Scam taxis (use Grab!)\n\n"
//         "✅ Safe to:\n"
//         "• Walk at night in busy areas\n"
//         "• Use public transport\n"
//         "• Eat street food\n\n"
//         "You'll feel very comfortable here! 🇲🇾\n\n"
//         "💡 Need complete safety guide?\n"
//         "Check KL The Guide for travel tips! 👇",
//     quick: ['Safety tips', 'Emergency info', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['wifi', 'internet', 'data', 'mobile', 'online'],
//     answer: "Staying connected is EASY! 📱💨\n\n"
//         "Best SIM cards (at airport):\n"
//         "📶 Celcom, Digi, Maxis, U Mobile\n"
//         "💰 RM35-50 for tourist packs\n"
//         "📊 Unlimited data + calls (7-30 days)\n\n"
//         "WiFi:\n"
//         "• Most hotels: Fast & free\n"
//         "• Malls & cafes: Free WiFi\n"
//         "• Grab/food apps: Work everywhere\n\n"
//         "Coverage is excellent in cities!\n"
//         "Get SIM at airport - easiest! 😊\n\n"
//         "💡 Need SIM card comparison?\n"
//         "Browse KL The Guide for details! 👇",
//     quick: ['Best SIM card', 'WiFi spots', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['language', 'english', 'speak', 'communicate', 'malay'],
//     answer: "Language in Malaysia 🗣️\n\n"
//         "Good news:\n"
//         "✅ English widely spoken in cities\n"
//         "✅ Hotels/restaurants all speak English\n"
//         "✅ Signs are bilingual\n\n"
//         "Useful Malay phrases:\n"
//         "• Hello: Selamat datang\n"
//         "• Thank you: Terima kasih\n"
//         "• Excuse me: Maaf\n"
//         "• How much: Berapa harga\n"
//         "• Delicious: Sedap!\n\n"
//         "Locals LOVE when you try Malay! 😊\n"
//         "You'll have zero problems communicating!\n\n"
//         "💡 Want more useful phrases?\n"
//         "Check KL The Guide for language tips! 👇",
//     quick: ['Common phrases', 'Translation help', 'KL The Guide 🔗'],
//   ),

//   // ========== MEDICAL TOURISM ==========
//   QA(
//     patterns: [
//       'medical',
//       'hospital',
//       'health',
//       'doctor',
//       'treatment',
//       'check up'
//     ],
//     answer: "Malaysia = World-Class Healthcare! 🏥✨\n\n"
//         "Top hospitals:\n"
//         "🏥 Prince Court Medical Centre\n"
//         "🏥 Gleneagles KL\n"
//         "🏥 Sunway Medical Centre\n"
//         "🏥 Pantai Hospital\n\n"
//         "Why Malaysia:\n"
//         "💰 60-80% cheaper than US/UK\n"
//         "👨‍⚕️ Doctors trained internationally\n"
//         "🗣️ English-speaking staff\n"
//         "✈️ Easy appointment booking\n\n"
//         "Popular: Health screenings, dental, cosmetic surgery.\n"
//         "Insurance paperwork? Hospitals help! 😊\n\n"
//         "💡 Need hospital recommendations?\n"
//         "Check KL The Guide for medical info! 👇",
//     quick: ['Hospital list', 'Cost guide', 'KL The Guide 🔗'],
//   ),

//   // ========== RELIGIOUS & CULTURE ==========
//   QA(
//     patterns: ['mosque', 'prayer', 'islam', 'muslim prayer', 'putra mosque'],
//     answer: "Beautiful mosques to visit! 🕌✨\n\n"
//         "Must-see:\n"
//         "🕌 Putra Mosque (Putrajaya) - Pink & stunning!\n"
//         "🕌 Masjid Negara (National Mosque)\n"
//         "🕌 Federal Territory Mosque\n"
//         "🕌 Crystal Mosque (Terengganu)\n\n"
//         "Visiting rules:\n"
//         "👗 Dress modestly (robes provided)\n"
//         "👟 Remove shoes\n"
//         "📸 Photos okay (be respectful)\n"
//         "🚫 Not during prayer times\n\n"
//         "⏰ Best time: 9am-5pm\n"
//         "💰 FREE entry\n\n"
//         "Non-Muslims welcome! Very peaceful 😊\n\n"
//         "💡 Planning a mosque tour?\n"
//         "Visit KL The Guide for visiting tips! 👇",
//     quick: ['How to visit', 'Prayer times', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['temple', 'chinese temple', 'buddhist', 'hindu temple'],
//     answer: "Amazing temples to explore! 🏯🕉️\n\n"
//         "Hindu Temples:\n"
//         "🕉️ Batu Caves (iconic!)\n"
//         "🕉️ Sri Mahamariamman (oldest in KL)\n\n"
//         "Buddhist/Chinese Temples:\n"
//         "🏯 Thean Hou Temple (6-tier, beautiful!)\n"
//         "🏯 Kek Lok Si (Penang - largest!)\n"
//         "🏯 Sin Sze Si Ya (oldest in KL)\n\n"
//         "Visiting tips:\n"
//         "👗 Dress modestly\n"
//         "👟 Shoes off inside\n"
//         "📸 Photos usually okay\n"
//         "🙏 Be respectful of worshippers\n\n"
//         "💰 FREE (donations welcome)\n"
//         "Experience Malaysia's diversity! 🌈\n\n"
//         "💡 Want a complete temple guide?\n"
//         "Browse KL The Guide for details! 👇",
//     quick: ['Temple locations', 'Etiquette guide', 'KL The Guide 🔗'],
//   ),

//   // ========== NIGHTLIFE & ENTERTAINMENT ==========
//   QA(
//     patterns: ['nightlife', 'bar', 'club', 'party', 'drink', 'night out'],
//     answer: "KL nightlife is VIBRANT! 🍹🌃\n\n"
//         "Top areas:\n"
//         "🍸 Changkat Bukit Bintang: Rooftop bars, pubs\n"
//         "🎉 TREC KL: Clubs & live music\n"
//         "🏙️ Skybar @ Traders Hotel: KLCC views!\n"
//         "🍺 Bangsar: Chill bars & cafes\n"
//         "🎶 Jalan P. Ramlee: Upscale clubs\n\n"
//         "Must-try:\n"
//         "• Heli Lounge Bar (rooftop helipad!)\n"
//         "• Marini's on 57 (fancy cocktails)\n"
//         "• Reggae Bar (live bands)\n\n"
//         "⏰ Opens 5pm, peaks 10pm-2am\n"
//         "💰 Drinks RM25-50\n\n"
//         "Very safe & fun! 🎉\n\n"
//         "💡 Looking for nightlife spots?\n"
//         "Check KL The Guide for bar reviews! 👇",
//     quick: ['Bar locations', 'Club events', 'KL The Guide 🔗'],
//   ),

//   // ========== PRACTICAL INFO ==========
//   QA(
//     patterns: ['currency', 'money', 'exchange', 'ringgit', 'atm', 'cash'],
//     answer: "Money matters! 💰🏦\n\n"
//         "Currency: Malaysian Ringgit (MYR/RM)\n"
//         "💵 USD 1 = RM 4-5 (approx)\n\n"
//         "Best ways to pay:\n"
//         "💳 Credit card widely accepted\n"
//         "🏧 ATMs everywhere (RM1-5 fee)\n"
//         "💵 Cash for street food/markets\n\n"
//         "Where to exchange:\n"
//         "✅ KL Sentral, Mid Valley (good rates)\n"
//         "❌ Avoid airport (poor rates)\n"
//         "❌ Hotels (worst rates)\n\n"
//         "Tip: Withdraw from ATM = best rate!\n"
//         "Most places accept card 😊\n\n"
//         "💡 Need money exchange tips?\n"
//         "Visit KL The Guide for details! 👇",
//     quick: ['Exchange spots', 'ATM guide', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['tip', 'tipping', 'service charge', 'gratuity'],
//     answer: "Tipping in Malaysia 💵\n\n"
//         "Short answer: NOT required! 😊\n\n"
//         "Details:\n"
//         "🍽️ Restaurants: 10% service charge already added\n"
//         "🚗 Grab/taxi: Not expected (round up if you want)\n"
//         "🏨 Hotels: RM5-10 for porter/housekeeping (optional)\n"
//         "💇 Spa/salon: 10% if excellent service\n\n"
//         "Locals don't usually tip.\n"
//         "If you do, it's a nice surprise! 😊\n\n"
//         "Service staff are paid properly here!\n\n"
//         "💡 Want complete etiquette guide?\n"
//         "Check KL The Guide for tips! 👇",
//     quick: ['Tipping guide', 'Local customs', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['visa', 'entry', 'passport', 'immigration', 'requirement'],
//     answer: "Visa requirements 🛂✈️\n\n"
//         "Good news: Most nationalities get\n"
//         "visa-FREE entry! 🎉\n\n"
//         "Common durations:\n"
//         "🇺🇸🇬🇧🇦🇺🇪🇺: 90 days\n"
//         "🇨🇳🇮🇳: 30 days (some need eVisa)\n"
//         "🇸🇬: 30 days\n\n"
//         "Requirements:\n"
//         "✅ Passport valid 6+ months\n"
//         "✅ Return/onward ticket\n"
//         "✅ Sufficient funds proof\n\n"
//         "Check: Malaysian Immigration website\n"
//         "for your country's specific rules 📱\n\n"
//         "💡 Need visa extension info?\n"
//         "Browse KL The Guide for guidance! 👇",
//     quick: ['Visa info', 'Requirements', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['emergency', 'police', 'ambulance', 'help', 'urgent'],
//     answer: "Emergency numbers in Malaysia! 🚨\n\n"
//         "📞 SAVE THESE:\n"
//         "• Police: 999\n"
//         "• Ambulance/Fire: 994\n"
//         "• Tourist Police: 03-2149 6590\n\n"
//         "Embassies:\n"
//         "Check your country's embassy number\n"
//         "when you arrive!\n\n"
//         "Lost/Stolen:\n"
//         "• Cards: Call bank immediately\n"
//         "• Passport: Contact embassy first\n"
//         "• Phone: Track via Find My Phone\n\n"
//         "Hospitals with 24/7 ER:\n"
//         "• Gleneagles, Pantai, Prince Court\n\n"
//         "Stay safe! Help is quick here 💙\n\n"
//         "💡 Need complete emergency guide?\n"
//         "Visit KL The Guide for all info! 👇",
//     quick: ['Emergency list', 'Hospital ER', 'KL The Guide 🔗'],
//   ),

//   // ========== WEATHER & SEASONS ==========
//   QA(
//     patterns: ['when to visit', 'best time', 'season', 'month', 'avoid'],
//     answer: "Best time to visit Malaysia 🌞🌧️\n\n"
//         "BEST months: March - October\n"
//         "✅ Less rain, sunny days\n"
//         "✅ Perfect beach weather\n"
//         "✅ Outdoor activities great\n\n"
//         "Monsoon season: Nov - Feb\n"
//         "🌧️ East Coast (Perhentian, Tioman): Heavy rain\n"
//         "☀️ West Coast (Langkawi, Penang): Still okay!\n"
//         "🌧️ KL: Rain possible but manageable\n\n"
//         "Peak tourist: June-Aug, Dec-Jan\n"
//         "💰 Prices higher, more crowded\n\n"
//         "Sweet spot: March-May, Sep-Oct\n"
//         "Great weather + fewer tourists! 😊\n\n"
//         "💡 Planning your travel dates?\n"
//         "Check KL The Guide for weather tips! 👇",
//     quick: ['Monthly weather', 'Best months', 'KL The Guide 🔗'],
//   ),

//   // ========== DAY TRIPS ==========
//   QA(
//     patterns: ['day trip', 'nearby', 'excursion', 'one day', 'genting'],
//     answer: "Awesome day trips from KL! 🚗💨\n\n"
//         "🎢 Genting Highlands (1hr)\n"
//         "  • Theme parks, casino, cool weather\n\n"
//         "🏛️ Melaka (2hrs)\n"
//         "  • UNESCO heritage, great food\n\n"
//         "🦅 Batu Caves (30min)\n"
//         "  • Hindu temple, monkeys, stairs!\n\n"
//         "🦀 Kuala Selangor (1.5hrs)\n"
//         "  • Fireflies boat tour at night\n\n"
//         "🍓 Cameron Highlands (3hrs)\n"
//         "  • Tea plantations (overnight better)\n\n"
//         "🏖️ Port Dickson (1.5hrs)\n"
//         "  • Beach escape\n\n"
//         "Easy to do yourself or book tours! 😊\n\n"
//         "💡 Want detailed day trip guides?\n"
//         "Visit KL The Guide for itineraries! 👇",
//     quick: ['Day trip plans', 'Tour booking', 'KL The Guide 🔗'],
//   ),

//   // ========== SPECIFIC EXPERIENCES ==========
//   QA(
//     patterns: ['spa', 'massage', 'relax', 'wellness', 'traditional massage'],
//     answer: "Relax & rejuvenate! 💆‍♀️✨\n\n"
//         "Traditional treatments:\n"
//         "🌿 Malay massage (full body)\n"
//         "🌺 Javanese lulur (body scrub)\n"
//         "🥥 Urut batin (traditional healing)\n\n"
//         "Where to go:\n"
//         "💎 Luxury: Mandara Spa, Spa Village\n"
//         "💰 Mid-range: Thai Odyssey, Bali Hai\n"
//         "💵 Budget: Local reflexology (RM50-80)\n\n"
//         "📍 Find them in malls & hotels\n"
//         "💰 RM100-400 for 1-2hrs\n"
//         "⏰ Book ahead for weekends\n\n"
//         "So affordable compared to home! 😊\n\n"
//         "💡 Looking for spa recommendations?\n"
//         "Check KL The Guide for reviews! 👇",
//     quick: ['Spa locations', 'Price ranges', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['rain', 'raining', 'wet', 'indoor', 'rainy day'],
//     answer: "Rainy day? No problem! ☔😊\n\n"
//         "Indoor fun:\n"
//         "🛍️ Mall hopping (all connected!)\n"
//         "🐠 Aquaria KLCC (underwater tunnel)\n"
//         "🔬 Petrosains Science Centre\n"
//         "🖼️ Museum of Illusions\n"
//         "🎭 Islamic Arts Museum\n"
//         "🍜 Food court marathon!\n"
//         "☕ Cozy cafe hopping\n"
//         "💆 Spa day\n\n"
//         "Pro tip:\n"
//         "Malls in KL are HUGE - you can spend\n"
//         "all day exploring, eating, & shopping\n"
//         "in air-con comfort! 🌈\n\n"
//         "💡 Need rainy day itinerary?\n"
//         "Browse KL The Guide for ideas! 👇",
//     quick: ['Indoor spots', 'Mall guide', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['photo', 'instagram', 'pictures', 'photogenic', 'spots'],
//     answer: "Instagram-worthy spots! 📸✨\n\n"
//         "📍 Must-photograph:\n"
//         "🌃 KLCC at night (from park)\n"
//         "🌈 Batu Caves rainbow stairs\n"
//         "💗 Putra Mosque (pink beauty!)\n"
//         "🎨 Penang street art murals\n"
//         "🌉 Saloma Link bridge at night\n"
//         "🏯 Thean Hou Temple sunset\n"
//         "🌊 Langkawi Sky Bridge\n"
//         "🏙️ KL Tower observation deck\n\n"
//         "Best times:\n"
//         "🌅 Sunrise: 7-8am\n"
//         "🌆 Blue hour: 7-7:30pm\n"
//         "🌃 Night lights: 8-10pm\n\n"
//         "Download: Google Photos (unlimited backup!) 📱\n\n"
//         "💡 Want more photo location ideas?\n"
//         "Visit KL The Guide for hidden spots! 👇",
//     quick: ['Photo locations', 'Best timing', 'KL The Guide 🔗'],
//   ),

//   // ========== FESTIVALS & EVENTS ==========
//   QA(
//     patterns: [
//       'festival',
//       'event',
//       'celebration',
//       'holiday',
//       'chinese new year'
//     ],
//     answer: "Malaysia's festivals are COLORFUL! 🎉🌈\n\n"
//         "Major celebrations:\n"
//         "🧧 Chinese New Year (Jan/Feb)\n"
//         "  • Red lanterns everywhere!\n"
//         "🕌 Hari Raya (Islamic)\n"
//         "  • After Ramadan fasting\n"
//         "🪔 Deepavali (Oct/Nov)\n"
//         "  • Festival of lights\n"
//         "🎄 Christmas (Dec)\n"
//         "  • Big decorations in malls\n\n"
//         "Special events:\n"
//         "• Malaysia Day (Sept 16)\n"
//         "• Merdeka Day (Aug 31)\n"
//         "• Thaipusam (Jan/Feb) - Batu Caves!\n\n"
//         "During festivals: expect crowds,\n"
//         "but AMAZING atmosphere! 🎊\n\n"
//         "💡 Planning around festivals?\n"
//         "Check KL The Guide for event calendar! 👇",
//     quick: ['Festival calendar', 'Event dates', 'KL The Guide 🔗'],
//   ),

//   // ========== FOOD DELIVERY & APPS ==========
//   QA(
//     patterns: ['delivery', 'food delivery', 'order food', 'grabfood', 'app'],
//     answer: "Food delivery is EVERYWHERE! 📱🍜\n\n"
//         "Top apps:\n"
//         "🚗 GrabFood (most popular!)\n"
//         "🛵 Foodpanda\n"
//         "🍔 ShopeeFood (cheap deals!)\n\n"
//         "Why so good:\n"
//         "✅ Super fast (20-40min)\n"
//         "✅ Cheap delivery (RM2-5)\n"
//         "✅ Promos daily!\n"
//         "✅ Track your order\n\n"
//         "💰 Payment: Card or cash\n"
//         "🕐 Available: 7am-2am (some 24hr!)\n\n"
//         "Perfect for lazy hotel nights! 😊\n"
//         "Download: Grab, Foodpanda, Shopee\n\n"
//         "💡 Want restaurant recommendations?\n"
//         "Browse KL The Guide for delivery spots! 👇",
//     quick: ['App setup', 'Best promos', 'KL The Guide 🔗'],
//   ),

//   // ========== FINAL CATCH-ALL & GOODBYES ==========
//   QA(
//     patterns: ['thanks', 'thank you', 'appreciate', 'helpful'],
//     answer: "You're so welcome! 🌟😊\n\n"
//         "Have an AMAZING time in Malaysia!\n"
//         "The food, the people, the sights -\n"
//         "you're going to love it here! 🇲🇾💕\n\n"
//         "Need anything else? Just ask!\n"
//         "I'm here to help make your trip\n"
//         "unforgettable! ✨\n\n"
//         "Selamat datang ke Malaysia! 🎉\n"
//         "(Welcome to Malaysia!)\n\n"
//         "💡 Want even more travel tips?\n"
//         "Visit KL The Guide for everything! 👇",
//     quick: ['More questions', 'Plan my trip', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['bye', 'goodbye', 'see you', 'done', 'finish'],
//     answer: "Safe travels, friend! 🌏✨\n\n"
//         "Enjoy every moment in Malaysia!\n"
//         "Eat lots, explore tons, and make\n"
//         "amazing memories! 📸🍜\n\n"
//         "Come back anytime you need help!\n\n"
//         "Selamat jalan! (Safe journey!) 🇲🇾💙\n\n"
//         "💡 Before you go, check out:\n"
//         "KL The Guide for complete travel info! 👇",
//     quick: ['One more question', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['recommend', 'suggestion', 'what should', 'advice'],
//     answer: "I'd love to help! 😊\n\n"
//         "Tell me more about what you like:\n"
//         "🍜 Foodie? → Best restaurants & street food\n"
//         "🏛️ History buff? → Heritage sites & museums\n"
//         "🏖️ Beach lover? → Island hopping\n"
//         "🛍️ Shopaholic? → Malls & markets\n"
//         "🌿 Nature person? → Hiking & parks\n"
//         "👨‍👩‍👧‍👦 Family trip? → Kid-friendly spots\n\n"
//         "Or ask specific things like:\n"
//         "'Best dinner spot near KLCC?'\n"
//         "'Easy hike with great views?'\n\n"
//         "💡 Need personalized recommendations?\n"
//         "Browse KL The Guide for curated lists! 👇",
//     quick: ['Food spots', 'Attractions', 'KL The Guide 🔗'],
//   ),

//   // ========== EXTENDED FALLBACK ==========
//   QA(
//     patterns: ['where', 'how', 'what', 'when', 'can you', 'tell me'],
//     answer: "I'd be happy to help! 🌟\n\n"
//         "I know about:\n"
//         "• Food & restaurants\n"
//         "• Attractions & sights\n"
//         "• Shopping & markets\n"
//         "• Transportation tips\n"
//         "• Hotels & areas\n"
//         "• Day trips & tours\n"
//         "• Practical travel info\n\n"
//         "Try asking something specific like:\n"
//         "'Best nasi lemak place?'\n"
//         "'How to get to Batu Caves?'\n"
//         "'What to do in Bukit Bintang tonight?'\n\n"
//         "💡 Want comprehensive guides?\n"
//         "Check KL The Guide for everything! 👇",
//     quick: ['Popular questions', 'Travel tips', 'KL The Guide 🔗'],
//   ),

//   // ========== LANDMARKS & MUST-VISIT SPOTS ==========
//   QA(
//     patterns: ['must visit', 'landmarks', 'must see', 'top places', 'iconic'],
//     answer: "Must-visit landmarks in KL! 🏙️✨\n\n"
//         "🌟 Top Icons:\n"
//         "• Petronas Twin Towers (book early!)\n"
//         "• KL Tower (amazing 360° views)\n"
//         "• Batu Caves (272 rainbow stairs!)\n"
//         "• Merdeka 118 (tallest in SEA!)\n"
//         "• Bukit Bintang (shopping & nightlife)\n\n"
//         "Pro tip: Visit KLCC and Batu Caves early morning\n"
//         "to beat the crowds and heat! 🌅\n\n"
//         "💡 Need a landmarks guide?\n"
//         "Visit KL The Guide for details! 👇",
//     quick: ['Ticket booking', 'Photo tips', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['city view', 'best view', 'skyline', 'panorama', 'observation'],
//     answer: "Best city views in KL! 🌆🔝\n\n"
//         "🏙️ Top Viewing Spots:\n"
//         "• KL Tower Sky Deck (421m high!)\n"
//         "  💰 RM52 | ⏰ 9am-10pm\n\n"
//         "• Banyan Tree Rooftop Bar\n"
//         "  🍹 Drinks with a view!\n\n"
//         "• Petronas Sky Bridge (floor 86)\n"
//         "  💰 RM80-100 | Book ahead!\n\n"
//         "• KLCC Park (free ground view!)\n"
//         "• Traders Hotel Sky Bar\n\n"
//         "Evening/night is MAGICAL with lights! ✨\n\n"
//         "💡 Looking for more viewing spots?\n"
//         "Check KL The Guide for recommendations! 👇",
//     quick: ['Rooftop bars', 'Best timing', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['family', 'kids', 'children', 'family friendly', 'with kids'],
//     answer: "Family-friendly fun in Malaysia! 👨‍👩‍👧‍👦💕\n\n"
//         "🎢 Top Attractions:\n"
//         "• Monkey Canopy (adventure park!)\n"
//         "• Gamuda Cove (eco-themed park)\n"
//         "• Sunway Lagoon (water park + theme park!)\n"
//         "  💰 RM180-220 | Full day fun!\n\n"
//         "• Aquaria KLCC (underwater tunnel 🐠)\n"
//         "• Zoo Negara (Giant Panda!)\n"
//         "• KL Bird Park (world's largest!)\n\n"
//         "🎪 More ideas:\n"
//         "• Petrosains Science Center\n"
//         "• Kidzania (role-play city)\n"
//         "• Farm In The City\n\n"
//         "Kids will LOVE Malaysia! 🌟\n\n"
//         "💡 Want a family itinerary?\n"
//         "Visit KL The Guide for kid-friendly plans! 👇",
//     quick: ['Age groups', 'Indoor options', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['cultural', 'culture', 'heritage', 'traditional', 'history'],
//     answer: "Explore Malaysia's rich culture! 🏛️🎨\n\n"
//         "🕌 Must-Visit Cultural Sites:\n"
//         "• Islamic Arts Museum (stunning!)\n"
//         "  💰 RM14 | Beautiful architecture\n\n"
//         "• Thean Hou Temple (6-tier Chinese)\n"
//         "• Melaka Old Town (UNESCO!)\n"
//         "  🏛️ A Famosa, Jonker Walk\n\n"
//         "• George Town, Penang (Street art!)\n"
//         "  🎨 UNESCO heritage murals\n\n"
//         "Other gems:\n"
//         "• Baba Nyonya Heritage Museum\n"
//         "• Sultan Abdul Samad Building\n"
//         "• Sri Mahamariamman Temple\n\n"
//         "History + Instagram = Perfect! 📸\n\n"
//         "💡 Want a cultural tour guide?\n"
//         "Browse KL The Guide for heritage routes! 👇",
//     quick: ['Heritage walk', 'Museum guide', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: [
//       'photo',
//       'instagram',
//       'pictures',
//       'photogenic',
//       'beautiful photos'
//     ],
//     answer: "Instagram-worthy spots in KL! 📸✨\n\n"
//         "🌟 Best Photo Locations:\n"
//         "🌉 Saloma Bridge (evening lights!)\n"
//         "  Best time: 7-9pm for colors\n\n"
//         "⛲ KLCC Park (fountain + towers)\n"
//         "  📍 Grab the iconic reflection shot!\n\n"
//         "🌺 Perdana Botanical Gardens\n"
//         "  🌳 Lush greenery & flowers\n\n"
//         "🏮 Petaling Street (Chinatown)\n"
//         "  Red lanterns everywhere!\n\n"
//         "Other spots:\n"
//         "• Batu Caves rainbow stairs\n"
//         "• Putra Mosque (pink beauty!)\n"
//         "• Thean Hou Temple sunset\n\n"
//         "Golden hour = Magic! 🌅\n\n"
//         "💡 Want more Instagrammable spots?\n"
//         "Check KL The Guide for photo locations! 👇",
//     quick: ['Hidden photo spots', 'Photography tips', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['island', 'beach', 'islands', 'beach destination', 'seaside'],
//     answer: "Top island destinations! 🏝️☀️\n\n"
//         "🌊 Must-Visit Islands:\n"
//         "🦅 Langkawi (duty-free paradise!)\n"
//         "  • Cable car, beaches, sunsets\n"
//         "  • ✈️ 1hr flight from KL\n\n"
//         "🐠 Perhentian Islands (crystal clear!)\n"
//         "  • Snorkeling, diving heaven\n"
//         "  • Budget-friendly\n\n"
//         "🌴 Tioman Island (jungle + beach)\n"
//         "  • Pristine nature\n\n"
//         "🤿 Sipadan (world's best diving!)\n"
//         "  • Sabah - bucket list!\n\n"
//         "🦀 Pangkor Island (laid-back vibes)\n"
//         "  • Easy from KL (3hrs)\n\n"
//         "Best season: March-October! 🌞\n\n"
//         "💡 Planning an island trip?\n"
//         "Visit KL The Guide for island guides! 👇",
//     quick: ['Island comparison', 'Best beaches', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: [
//       'highland',
//       'highlands',
//       'mountains',
//       'cool weather',
//       'hill station'
//     ],
//     answer: "Highland escapes - cool & beautiful! ⛰️🌿\n\n"
//         "🏔️ Top Highlands:\n"
//         "🍓 Cameron Highlands\n"
//         "  • Tea plantations, strawberries\n"
//         "  • 15-25°C (bring jacket!)\n"
//         "  • 📍 3-4hrs from KL\n\n"
//         "🎢 Genting Highlands\n"
//         "  • Theme parks, casino, cool air\n"
//         "  • 📍 1hr from KL (cable car up!)\n\n"
//         "🏰 Bukit Tinggi\n"
//         "  • French/Japanese villages\n"
//         "  • Perfect day trip\n\n"
//         "🌲 Fraser's Hill\n"
//         "  • Colonial charm, birdwatching\n"
//         "  • Less crowded!\n\n"
//         "Perfect weekend getaway! 🌤️\n\n"
//         "💡 Need highland travel tips?\n"
//         "Check KL The Guide for details! 👇",
//     quick: ['Accommodation', 'What to pack', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['rainforest', 'jungle', 'trekking', 'nature park', 'wildlife'],
//     answer: "Experience Malaysia's ancient rainforest! 🌳🦜\n\n"
//         "🌿 Top Rainforest Destinations:\n"
//         "🏞️ Taman Negara\n"
//         "  • 130 million years old!\n"
//         "  • Canopy walk, river cruise\n"
//         "  • Wildlife spotting\n"
//         "  • 📍 3-4hrs from KL\n\n"
//         "🏔️ Kinabalu Park (Sabah)\n"
//         "  • UNESCO World Heritage\n"
//         "  • Mount Kinabalu (4,095m!)\n"
//         "  • Unique flora & fauna\n"
//         "  • ✈️ Fly to Kota Kinabalu\n\n"
//         "What to expect:\n"
//         "• Guided jungle treks\n"
//         "• Night safaris\n"
//         "• River activities\n"
//         "• Authentic nature experience!\n\n"
//         "Hire local guides recommended! 🥾\n\n"
//         "💡 Want jungle adventure tips?\n"
//         "Browse KL The Guide for trekking info! 👇",
//     quick: ['Packing list', 'Tour operators', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: ['sunset', 'sunset view', 'golden hour', 'evening view'],
//     answer: "Best sunset spots in Malaysia! 🌅✨\n\n"
//         "🌇 Top Sunset Views:\n"
//         "🌉 Langkawi SkyBridge\n"
//         "  • 360° island & sea views\n"
//         "  • Absolutely stunning!\n\n"
//         "🏯 Kek Lok Si Temple Hill (Penang)\n"
//         "  • Temple + sunset combo\n"
//         "  • Magical atmosphere\n\n"
//         "🏖️ Tanjung Aru Beach (Sabah)\n"
//         "  • Famous sunset beach\n"
//         "  • Food stalls nearby\n\n"
//         "Other great spots:\n"
//         "• KLCC Park (city sunset)\n"
//         "• Putra Mosque lakeside\n"
//         "• Port Dickson beaches\n\n"
//         "⏰ Best time: 6:30-7:30pm\n"
//         "Bring your camera! 📸\n\n"
//         "💡 Looking for more sunset spots?\n"
//         "Visit KL The Guide for recommendations! 👇",
//     quick: ['Sunset timing', 'Nearby cafes', 'KL The Guide 🔗'],
//   ),

//   QA(
//     patterns: [
//       'hidden gem',
//       'underrated',
//       'secret spot',
//       'off beaten',
//       'lesser known'
//     ],
//     answer: "Hidden gems - locals' favorites! 💎🤫\n\n"
//         "🌟 5 Underrated Spots:\n"
//         "🌾 Sekinchan Rice Fields\n"
//         "  • Golden paddy views!\n"
//         "  • 📍 2hrs from KL\n"
//         "  • Fresh seafood too!\n\n"
//         "✨ Kuala Selangor Fireflies\n"
//         "  • Magical boat tour at night\n"
//         "  • Nature's light show! 🌙\n\n"
//         "🪞 Sasaran Sky Mirror\n"
//         "  • Bolivia-style reflection!\n"
//         "  • Seasonal (check timing)\n\n"
//         "🏔️ Kundasang (Sabah)\n"
//         "  • \"New Zealand of Malaysia\"\n"
//         "  • Dairy farms, cool air\n\n"
//         "🏝️ Kapas Island\n"
//         "  • Quiet, pristine beaches\n"
//         "  • Less touristy!\n\n"
//         "Escape the crowds! 🌿\n\n"
//         "💡 Want more secret spots?\n"
//         "Check KL The Guide for local favorites! 👇",
//     quick: ['More hidden gems', 'Local tips', 'KL The Guide 🔗'],
//   ),
// ];

// lib/data/travel_playbook_hybrid.dart

// ============================================
// HELPER FUNCTIONS FOR DYNAMIC ANSWERS
// ============================================

class QueryAnalyzer {
  // Extract number from query (e.g., "top 10" -> 10)
  static int? extractNumber(String query) {
    final numbers = {
      'one': 1,
      'two': 2,
      'three': 3,
      'four': 4,
      'five': 5,
      'six': 6,
      'seven': 7,
      'eight': 8,
      'nine': 9,
      'ten': 10,
      '1': 1,
      '2': 2,
      '3': 3,
      '4': 4,
      '5': 5,
      '6': 6,
      '7': 7,
      '8': 8,
      '9': 9,
      '10': 10,
      '15': 15,
      '20': 20
    };

    for (var entry in numbers.entries) {
      if (query.toLowerCase().contains(entry.key)) {
        return entry.value;
      }
    }
    return null;
  }

  // Extract location from query
  static String extractLocation(String query) {
    final q = query.toLowerCase();
    if (q.contains('klcc') || q.contains('twin tower')) return 'klcc';
    if (q.contains('bukit bintang') || q.contains('bb')) return 'bukit_bintang';
    if (q.contains('chinatown') || q.contains('petaling')) return 'chinatown';
    if (q.contains('bangsar')) return 'bangsar';
    if (q.contains('penang')) return 'penang';
    if (q.contains('melaka') || q.contains('malacca')) return 'melaka';
    if (q.contains('langkawi')) return 'langkawi';
    return 'general';
  }

  // Extract time preference
  static String extractTime(String query) {
    final q = query.toLowerCase();
    if (q.contains('morning') || q.contains('breakfast')) return 'morning';
    if (q.contains('lunch') || q.contains('afternoon')) return 'afternoon';
    if (q.contains('dinner') || q.contains('evening')) return 'evening';
    if (q.contains('night') || q.contains('tonight')) return 'night';
    return 'anytime';
  }

  // Extract budget (in RM)
  static int? extractBudget(String query) {
    final q = query.toLowerCase();
    if (q.contains('cheap') || q.contains('budget')) return 50;
    if (q.contains('under 50') || q.contains('below 50')) return 50;
    if (q.contains('under 100') || q.contains('below 100')) return 100;
    if (q.contains('under 200')) return 200;
    if (q.contains('expensive') || q.contains('luxury')) return 999;
    return null;
  }

  // Check if asking for list
  static bool isListRequest(String query) {
    final q = query.toLowerCase();
    return q.contains('list') ||
        q.contains('top ') ||
        extractNumber(query) != null;
  }
}

// ============================================
// ENHANCED QA CLASS
// ============================================

class QA {
  final List<String> patterns;
  final String? staticAnswer;
  final String Function(String query)? dynamicAnswer;
  final List<String> quick;
  final String answerType; // 'static', 'dynamic', 'list'

  const QA({
    required this.patterns,
    this.staticAnswer,
    this.dynamicAnswer,
    this.quick = const [],
    this.answerType = 'static',
  });

  String getAnswer(String query) {
    if (answerType == 'dynamic' && dynamicAnswer != null) {
      return dynamicAnswer!(query);
    }
    return staticAnswer ?? "I'm here to help! What would you like to know?";
  }
}

// ============================================
// DYNAMIC ANSWER GENERATORS
// ============================================

class AnswerGenerators {
  // Generator for attractions
  static String attractionsAnswer(String query) {
    final count = QueryAnalyzer.extractNumber(query) ?? 5;
    final location = QueryAnalyzer.extractLocation(query);

    final attractions = {
      'general': [
        {
          'name': 'Petronas Twin Towers',
          'desc': 'Iconic 452m towers with skybridge',
          'time': '2-3 hrs'
        },
        {
          'name': 'Batu Caves',
          'desc': '272 rainbow stairs, Hindu temple',
          'time': '2 hrs'
        },
        {
          'name': 'KL Tower',
          'desc': '421m observation deck views',
          'time': '1-2 hrs'
        },
        {
          'name': 'Merdeka Square',
          'desc': 'Historic independence site',
          'time': '1 hr'
        },
        {
          'name': 'KLCC Park',
          'desc': 'Free fountain show at 8pm',
          'time': '1 hr'
        },
        {
          'name': 'Central Market',
          'desc': 'Art & handicraft shopping',
          'time': '1-2 hrs'
        },
        {
          'name': 'Islamic Arts Museum',
          'desc': 'Stunning architecture & exhibits',
          'time': '2 hrs'
        },
        {
          'name': 'Thean Hou Temple',
          'desc': '6-tier Chinese temple',
          'time': '1 hr'
        },
        {
          'name': 'Bukit Bintang',
          'desc': 'Shopping & nightlife district',
          'time': '3-4 hrs'
        },
        {
          'name': 'Perdana Botanical Garden',
          'desc': '92-hectare green oasis',
          'time': '2-3 hrs'
        },
      ],
      'penang': [
        {
          'name': 'Street Art Murals',
          'desc': 'Famous Georgetown art',
          'time': '2-3 hrs'
        },
        {
          'name': 'Kek Lok Si Temple',
          'desc': 'Largest Buddhist temple',
          'time': '2 hrs'
        },
        {
          'name': 'Penang Hill',
          'desc': 'Cable car & panoramic views',
          'time': '3 hrs'
        },
        {
          'name': 'Clan Jetties',
          'desc': 'Historic waterfront villages',
          'time': '1 hr'
        },
        {
          'name': 'Fort Cornwallis',
          'desc': '1786 British fort',
          'time': '1 hr'
        },
      ],
    };

    final items = attractions[location] ?? attractions['general']!;
    final limitedItems = items.take(count).toList();

    String result = "Top $count attractions";
    if (location != 'general') {
      result += " in ${location.replaceAll('_', ' ').toUpperCase()}";
    }
    result += "! 🌟✨\n\n";

    for (int i = 0; i < limitedItems.length; i++) {
      final item = limitedItems[i];
      result += "${i + 1}. ${item['name']}\n";
      result += "   ${item['desc']}\n";
      result += "   ⏰ ${item['time']}\n\n";
    }

    result += "💡 Want detailed guides for any of these?\n";
    result += "Check KL The Guide for complete info! 👇";

    return result;
  }

  // Generator for food recommendations
  static String foodAnswer(String query) {
    final location = QueryAnalyzer.extractLocation(query);
    final time = QueryAnalyzer.extractTime(query);
    final count = QueryAnalyzer.extractNumber(query) ?? 5;
    final isBudget = query.toLowerCase().contains('cheap') ||
        query.toLowerCase().contains('budget');

    final restaurants = {
      'klcc_morning': [
        {'name': 'VCR', 'dish': 'Aussie breakfast', 'price': 'RM35-50'},
        {
          'name': 'Feeka Coffee',
          'dish': 'Waffles & coffee',
          'price': 'RM25-40'
        },
        {'name': 'Delicious', 'dish': 'Western brunch', 'price': 'RM30-45'},
      ],
      'klcc_evening': [
        {
          'name': 'Jalan Alor',
          'dish': 'Street food paradise',
          'price': 'RM15-30'
        },
        {'name': 'Madam Kwan\'s', 'dish': 'Nasi lemak', 'price': 'RM20-35'},
        {
          'name': 'Lot 10 Hutong',
          'dish': 'Food court classics',
          'price': 'RM15-25'
        },
      ],
      'bukit_bintang_evening': [
        {
          'name': 'Jalan Alor',
          'dish': 'Grilled seafood, satay',
          'price': 'RM20-40'
        },
        {
          'name': 'Lot 10 Hutong',
          'dish': 'KL best hawker food',
          'price': 'RM15-30'
        },
        {'name': 'Imbi Market', 'dish': 'Curry laksa', 'price': 'RM10-15'},
      ],
      'general_budget': [
        {
          'name': 'Mamak Stalls',
          'dish': 'Roti canai, nasi lemak',
          'price': 'RM5-15'
        },
        {
          'name': 'Food Courts',
          'dish': 'Mixed local dishes',
          'price': 'RM8-20'
        },
        {
          'name': 'Chow Kit Market',
          'dish': 'Local breakfast',
          'price': 'RM5-12'
        },
      ],
      'general': [
        {
          'name': 'Nasi Lemak',
          'dish': 'Coconut rice breakfast',
          'price': 'RM8-25'
        },
        {
          'name': 'Char Kuey Teow',
          'dish': 'Wok-fried noodles',
          'price': 'RM8-15'
        },
        {'name': 'Satay', 'dish': 'Grilled meat skewers', 'price': 'RM12-20'},
        {'name': 'Roti Canai', 'dish': 'Flaky flatbread', 'price': 'RM3-8'},
        {'name': 'Laksa', 'dish': 'Spicy noodle soup', 'price': 'RM10-18'},
      ],
    };

    String key = isBudget
        ? 'general_budget'
        : location != 'general'
        ? '${location}_$time'
        : 'general';

    final items = restaurants[key] ?? restaurants['general']!;
    final limitedItems = items.take(count).toList();

    String result = "🍜 Top $count food spots";
    if (time != 'anytime') result += " for $time";
    if (location != 'general')
      result += " near ${location.replaceAll('_', ' ')}";
    result += "! 😋\n\n";

    for (int i = 0; i < limitedItems.length; i++) {
      final item = limitedItems[i];
      result += "${i + 1}. ${item['name']}\n";
      result += "   🍽️ ${item['dish']}\n";
      result += "   💰 ${item['price']}\n\n";
    }

    result += "All spots are safe & delicious! 👍\n\n";
    result += "💡 Want more foodie recommendations?\n";
    result += "Check KL The Guide for complete reviews! 👇";

    return result;
  }

  // Generator for shopping
  static String shoppingAnswer(String query) {
    final budget = QueryAnalyzer.extractBudget(query);
    final count = QueryAnalyzer.extractNumber(query) ?? 5;

    final malls = [
      {
        'name': 'Pavilion KL',
        'type': 'Luxury brands',
        'area': 'Bukit Bintang',
        'budget': 'High'
      },
      {
        'name': 'Suria KLCC',
        'type': 'Premium shopping',
        'area': 'KLCC',
        'budget': 'High'
      },
      {
        'name': 'TRX Exchange',
        'type': 'Newest & fanciest',
        'area': 'TRX',
        'budget': 'High'
      },
      {
        'name': 'Mid Valley',
        'type': 'Massive selection',
        'area': 'Mid Valley',
        'budget': 'Mid'
      },
      {
        'name': 'Sunway Pyramid',
        'type': 'Family entertainment',
        'area': 'Sunway',
        'budget': 'Mid'
      },
      {
        'name': 'Central Market',
        'type': 'Souvenirs & crafts',
        'area': 'Chinatown',
        'budget': 'Low'
      },
      {
        'name': 'Petaling Street',
        'type': 'Bargain shopping',
        'area': 'Chinatown',
        'budget': 'Low'
      },
      {
        'name': '1 Utama',
        'type': 'Huge mall with rainforest',
        'area': 'PJ',
        'budget': 'Mid'
      },
    ];

    final filtered = budget != null && budget < 100
        ? malls
        .where((m) => m['budget'] == 'Low' || m['budget'] == 'Mid')
        .toList()
        : malls;

    final limitedItems = filtered.take(count).toList();

    String result = "🛍️ Top $count shopping destinations! ✨\n\n";

    for (int i = 0; i < limitedItems.length; i++) {
      final mall = limitedItems[i];
      result += "${i + 1}. ${mall['name']}\n";
      result += "   ${mall['type']}\n";
      result += "   📍 ${mall['area']} | Budget: ${mall['budget']}\n\n";
    }

    result += "⏰ Most malls: 10am-10pm\n";
    result += "🎉 Mega sales: March, August, December\n\n";
    result += "💡 Need mall details & directions?\n";
    result += "Check KL The Guide for shopping guides! 👇";

    return result;
  }

  // Generator for transport
  static String transportAnswer(String query) {
    final from = query.toLowerCase().contains('airport')
        ? 'airport'
        : query.toLowerCase().contains('klcc')
        ? 'klcc'
        : 'general';
    final to = QueryAnalyzer.extractLocation(query);

    if (from == 'airport') {
      return "🛬 From KLIA Airport to city! 🚇\n\n"
          "Best options:\n\n"
          "1. KLIA Express Train 🚄\n"
          "   • 28 minutes to KL Sentral\n"
          "   • RM55 one-way\n"
          "   • Every 15-20 mins\n"
          "   • Most convenient!\n\n"
          "2. Grab Car 🚗\n"
          "   • 45-60 mins (traffic dependent)\n"
          "   • RM60-90 to city center\n"
          "   • Door-to-door\n\n"
          "3. Airport Bus 🚌\n"
          "   • RM10-12\n"
          "   • 1-1.5 hours\n"
          "   • Budget option\n\n"
          "💡 Pro tip: KLIA Express + Grab to hotel = best combo!\n\n"
          "Need detailed transport routes?\n"
          "Check KL The Guide for all options! 👇";
    }

    return "Getting around KL is EASY! 🚇🚗\n\n"
        "📱 Best options:\n\n"
        "1. Grab (like Uber)\n"
        "   • Safest & easiest\n"
        "   • RM8-30 within city\n"
        "   • Download app first!\n\n"
        "2. LRT/MRT Trains\n"
        "   • RM1-5 per trip\n"
        "   • Fast & clean\n"
        "   • 6am-midnight\n\n"
        "3. FREE Go KL Bus\n"
        "   • Purple buses in city\n"
        "   • Completely free!\n\n"
        "4. Walking 🚶\n"
        "   • City center is walkable\n"
        "   • 15-20 min between malls\n\n"
        "💡 Want train maps & routes?\n"
        "Visit KL The Guide for transport details! 👇";
  }

  // Generator for budget planning
  static String budgetAnswer(String query) {
    final days = QueryAnalyzer.extractNumber(query) ?? 3;
    final isBudget = query.toLowerCase().contains('budget') ||
        query.toLowerCase().contains('cheap');
    final isLuxury = query.toLowerCase().contains('luxury') ||
        query.toLowerCase().contains('expensive');

    String result = "💰 ${days}-Day Malaysia Budget Guide! ✨\n\n";

    if (isBudget) {
      result += "🎒 BUDGET TRAVELER:\n\n";
      result += "Per Day: RM100-150 (USD25-35)\n";
      result += "• Hostel: RM30-50\n";
      result += "• Food: RM30-50 (street food)\n";
      result += "• Transport: RM10-20 (LRT/bus)\n";
      result += "• Activities: RM20-30 (free sites + 1 paid)\n\n";
      result += "${days} Days Total: RM${100 * days}-${150 * days}\n";
      result += "≈ USD${25 * days}-${35 * days}\n\n";
      result += "💡 Budget tips:\n";
      result += "• Eat at hawker centers\n";
      result += "• Use public transport\n";
      result += "• Visit free attractions\n";
      result += "• Stay in Chinatown area\n";
    } else if (isLuxury) {
      result += "💎 LUXURY TRAVELER:\n\n";
      result += "Per Day: RM800+ (USD190+)\n";
      result += "• 5-star hotel: RM400-600\n";
      result += "• Fine dining: RM200-300\n";
      result += "• Private transport: RM150-200\n";
      result += "• Premium activities: RM100-150\n\n";
      result += "${days} Days Total: RM${800 * days}+\n";
      result += "≈ USD${190 * days}+\n\n";
      result += "💡 Luxury perks:\n";
      result += "• Rooftop bars with views\n";
      result += "• Private tours available\n";
      result += "• Spa & wellness centers\n";
      result += "• KLCC/Bangsar hotels\n";
    } else {
      result += "🏨 MID-RANGE TRAVELER:\n\n";
      result += "Per Day: RM250-400 (USD60-95)\n";
      result += "• Hotel: RM120-200\n";
      result += "• Food: RM80-120 (mix of restaurants)\n";
      result += "• Transport: RM30-50 (Grab)\n";
      result += "• Activities: RM50-80\n\n";
      result += "${days} Days Total: RM${250 * days}-${400 * days}\n";
      result += "≈ USD${60 * days}-${95 * days}\n\n";
      result += "💡 Sweet spot for comfort!\n";
      result += "• 3-star hotels\n";
      result += "• Mix street food & restaurants\n";
      result += "• Grab for convenience\n";
      result += "• All major attractions\n";
    }

    result += "\n💡 Want detailed budget breakdown?\n";
    result += "Check KL The Guide for money tips! 👇";

    return result;
  }
}

// ============================================
// FULL QA DATABASE WITH DYNAMIC ANSWERS
// ============================================

final List<QA> kTravelQA = [
  // ========== GREETINGS ==========
  QA(
    patterns: ['hello', 'hi', 'hey', 'help', 'start'],
    staticAnswer:
    "Hi there! 👋 Welcome to Malaysia! I'm your friendly travel buddy here to help you explore.\n\n"
        "Ask me anything about food, attractions, shopping, or planning your adventure!\n"
        "Try: 'What should I do tonight?' or 'Best food near me'",
    quick: ['First time tips', 'Best food spots', 'Top attractions'],
  ),

  // ========== ATTRACTIONS (DYNAMIC) ==========
  QA(
    patterns: [
      'attraction',
      'see',
      'visit',
      'sights',
      'landmarks',
      'tourist',
      'top places',
      'must see'
    ],
    answerType: 'dynamic',
    dynamicAnswer: AnswerGenerators.attractionsAnswer,
    quick: ['Top 10 must-see', 'Hidden gems', 'KL The Guide 🔗'],
  ),

  // ========== FOOD (DYNAMIC) ==========
  QA(
    patterns: [
      'food',
      'eat',
      'hungry',
      'restaurant',
      'dishes',
      'breakfast',
      'lunch',
      'dinner'
    ],
    answerType: 'dynamic',
    dynamicAnswer: AnswerGenerators.foodAnswer,
    quick: ['Where to eat', 'Halal options', 'KL The Guide 🔗'],
  ),

  // ========== SHOPPING (DYNAMIC) ==========
  QA(
    patterns: ['shopping', 'mall', 'buy', 'shop', 'souvenirs', 'where to buy'],
    answerType: 'dynamic',
    dynamicAnswer: AnswerGenerators.shoppingAnswer,
    quick: ['Sale seasons', 'Mall locations', 'KL The Guide 🔗'],
  ),

  // ========== TRANSPORT (DYNAMIC) ==========
  QA(
    patterns: [
      'transport',
      'travel',
      'getting around',
      'how to get',
      'move around',
      'grab',
      'taxi'
    ],
    answerType: 'dynamic',
    dynamicAnswer: AnswerGenerators.transportAnswer,
    quick: ['Train routes', 'Best apps', 'KL The Guide 🔗'],
  ),

  // ========== BUDGET (DYNAMIC) ==========
  QA(
    patterns: [
      'budget',
      'cost',
      'expensive',
      'cheap',
      'money',
      'price',
      'how much'
    ],
    answerType: 'dynamic',
    dynamicAnswer: AnswerGenerators.budgetAnswer,
    quick: ['Budget breakdown', 'Free things', 'KL The Guide 🔗'],
  ),

  // ========== FIRST TIME VISITORS ==========
  QA(
    patterns: ['first time', 'first visit', 'new here', 'never been'],
    staticAnswer: "Welcome to Malaysia! 🇲🇾 So excited you're here!\n\n"
        "Must-do for first-timers:\n"
        "• Try nasi lemak for breakfast\n"
        "• Visit Petronas Twin Towers\n"
        "• Explore Batu Caves\n"
        "• Eat at Jalan Alor food street\n\n"
        "The best months to visit are March-October for less rain. You'll love it here!",
    quick: ['Airport tips', 'Hotel areas', 'Getting around'],
  ),

  // ========== AIRPORT & ARRIVAL ==========
  QA(
    patterns: ['airport', 'klia', 'arrived', 'landing', 'sim card'],
    staticAnswer: "Welcome to KLIA! 🛬 Here's what you need:\n\n"
        "📱 SIM cards: Available at airport kiosks (Celcom, Digi, Maxis)\n"
        "🚗 Transport: Grab works great, or take KLIA Express train (28min to KL)\n"
        "💰 Money: ATMs and currency exchange available\n\n"
        "The airport is modern and easy to navigate. Staff speak English! 😊\n\n"
        "💡 Want to plan your trip in detail?\n"
        "Check out KL The Guide! 👇",
    quick: ['Best transport', 'Hotel distance', 'KL The Guide 🔗'],
  ),

  // ========== WEATHER ==========
  QA(
    patterns: [
      'weather',
      'rain',
      'hot',
      'humid',
      'temperature',
      'when to visit',
      'best time'
    ],
    staticAnswer: "Malaysia is warm year-round! 🌴\n\n"
        "☀️ Temperature: 25-33°C (77-91°F)\n"
        "💧 Humidity: High (bring light clothes!)\n"
        "🌧️ Best months: March-October\n"
        "🌊 Monsoon: November-February (East Coast)\n\n"
        "Quick rain is common, but clears fast. Pack an umbrella!\n\n"
        "💡 Need more travel tips?\n"
        "Visit KL The Guide for detailed guides! 👇",
    quick: ['What to wear', 'Indoor activities', 'KL The Guide 🔗'],
  ),

  // ========== ACCOMMODATION ==========
  QA(
    patterns: ['hotel', 'stay', 'accommodation', 'where to stay', 'homestay'],
    staticAnswer: "Great hotel areas in KL:\n\n"
        "🏙️ Bukit Bintang: Shopping & nightlife (10 min to KLCC)\n"
        "🏢 KLCC: Upscale, near Twin Towers\n"
        "🎨 Chinatown: Budget-friendly, cultural\n"
        "🌿 Bangsar: Trendy cafes & residential\n\n"
        "Most hotels offer airport pickup! Prices are very affordable 😊\n\n"
        "💡 Need detailed area guides?\n"
        "Check KL The Guide for neighborhood reviews! 👇",
    quick: ['Bukit Bintang hotels', 'Budget options', 'KL The Guide 🔗'],
  ),

  // ========== SPECIFIC AREAS ==========
  QA(
    patterns: ['bukit bintang', 'bb', 'pavilion', 'tonight'],
    staticAnswer: "Bukit Bintang is THE spot! 🌟 Here's your evening plan:\n\n"
        "🍜 Jalan Alor (6-11pm): Legendary street food paradise\n"
        "🛍️ Pavilion KL: Shopping + fountain show at 8pm\n"
        "🍹 Changkat: Rooftop bars & nightlife\n"
        "✨ TRX Exchange Park: Beautiful light displays\n\n"
        "Everything is within walking distance! Safe to explore at night 🚶\n\n"
        "💡 Want a complete Bukit Bintang guide?\n"
        "Visit KL The Guide for more tips! 👇",
    quick: ['Street food guide', 'Nightlife spots', 'KL The Guide 🔗'],
  ),

  // ========== STREET FOOD ==========
  QA(
    patterns: ['street food', 'jalan alor', 'hawker', 'cheap food'],
    staticAnswer: "Street food is where the magic happens! 🔥\n\n"
        "🌟 Jalan Alor: KL's most famous food street\n"
        "  • Grilled wings, satay, char kuey teow\n"
        "  • Go 6-7pm to beat crowds\n"
        "  • Budget: RM10-25 per meal\n\n"
        "Other spots:\n"
        "• Chow Kit Market (local breakfast)\n"
        "• Imbi Market (curry laksa)\n"
        "• Madras Lane (Hokkien mee)\n\n"
        "Don't worry - food stalls are clean and safe! 👍\n\n"
        "💡 Looking for more hidden food spots?\n"
        "Check KL The Guide's local favorites! 👇",
    quick: ['Penang food', 'Night markets', 'KL The Guide 🔗'],
  ),

  // ========== HALAL FOOD ==========
  QA(
    patterns: ['halal', 'muslim', 'pork free', 'islamic food'],
    staticAnswer: "Malaysia is VERY halal-friendly! 🕌✨\n\n"
        "Most restaurants are halal-certified. Look for the halal logo.\n"
        "Non-halal places clearly display 'pork' or 'non-halal' signs.\n\n"
        "Must-try halal spots:\n"
        "• Nasi Kandar (Penang/KL)\n"
        "• Banana Leaf Rice\n"
        "• Roti Canai everywhere!\n\n"
        "You'll have no problems finding amazing halal food anywhere 😊\n\n"
        "💡 Need a complete halal dining guide?\n"
        "Visit KL The Guide for certified restaurants! 👇",
    quick: ['Halal restaurants', 'Malay cuisine', 'KL The Guide 🔗'],
  ),

  // ========== VEGETARIAN ==========
  QA(
    patterns: ['vegetarian', 'vegan', 'no meat', 'veggie'],
    staticAnswer: "Vegetarian food is easy to find! 🥗🌱\n\n"
        "Look for:\n"
        "• Chinese vegetarian restaurants (素食)\n"
        "• Indian banana leaf rice (ask for veg)\n"
        "• Roti canai with dhal\n"
        "• Nasi lemak (skip the anchovies)\n\n"
        "Tell servers: 'Tak mahu daging' (no meat) or 'vegetarian'\n\n"
        "Areas: Brickfields (Little India) has tons of veggie options!\n\n"
        "💡 Want a vegan/vegetarian restaurant list?\n"
        "Browse KL The Guide for plant-based spots! 👇",
    quick: ['Vegan cafes', 'Indian veg', 'KL The Guide 🔗'],
  ),

  // ========== NASI LEMAK ==========
  QA(
    patterns: ['nasi lemak', 'national dish', 'coconut rice'],
    staticAnswer: "Nasi Lemak is Malaysia's PRIDE! 🇲🇾🍚\n\n"
        "What is it? Fragrant coconut rice with:\n"
        "• Sambal (spicy sauce)\n"
        "• Fried anchovies & peanuts\n"
        "• Boiled egg\n"
        "• Cucumber slices\n"
        "+ Optional: fried chicken, rendang, squid\n\n"
        "Where to try:\n"
        "• Village Park Restaurant (famous!)\n"
        "• Any mamak stall\n"
        "• Hotel breakfast buffets\n\n"
        "Price: RM5-15. Eaten for breakfast but good anytime!\n\n"
        "💡 Discover the best nasi lemak spots!\n"
        "Check KL The Guide's foodie recommendations! 👇",
    quick: ['Other breakfast', 'Best nasi lemak', 'KL The Guide 🔗'],
  ),

  // ========== DRINKS ==========
  QA(
    patterns: ['drink', 'teh tarik', 'beverage', 'coffee', 'tea'],
    staticAnswer: "Malaysian drinks are amazing! 🍹☕\n\n"
        "Must-try:\n"
        "☕ Teh Tarik: 'Pulled' milk tea (sweet & frothy)\n"
        "🥥 Coconut shake: Fresh & cold\n"
        "🍋 Limau ais: Fresh lime juice\n"
        "🧊 Cendol: Sweet icy dessert drink\n"
        "☕ White coffee: Ipoh specialty\n\n"
        "Find them at: Mamak stalls, kopitiam (coffee shops), food courts.\n"
        "Try teh tarik - it's our national drink! 😊\n\n"
        "💡 Want more drink recommendations?\n"
        "Check KL The Guide for cafe reviews! 👇",
    quick: ['Where to find', 'Dessert drinks', 'KL The Guide 🔗'],
  ),

  // ========== PENANG FOOD ==========
  QA(
    patterns: ['penang food', 'penang', 'best food city', 'char kuey teow'],
    staticAnswer: "Penang is FOOD PARADISE! 🏝️😍\n\n"
        "Why Penang wins:\n"
        "• Char Kuey Teow (best in Malaysia!)\n"
        "• Assam Laksa (sour spicy noodles)\n"
        "• Hokkien Mee (prawn noodles)\n"
        "• Nasi Kandar (24/7 rice buffet)\n\n"
        "Where to eat:\n"
        "• Gurney Drive hawker center\n"
        "• Chulia Street night market\n"
        "• New Lane (Lorong Baru)\n\n"
        "Foodies say: KL is great, but Penang is LEGENDARY! 🔥\n\n"
        "💡 Planning a Penang food trip?\n"
        "Visit KL The Guide for detailed reviews! 👇",
    quick: ['Best hawker centers', 'Must-try dishes', 'KL The Guide 🔗'],
  ),

  // ========== SOUVENIRS ==========
  QA(
    patterns: ['souvenir', 'gift', 'bring home', 'batik', 'what to buy'],
    staticAnswer: "Best Malaysian souvenirs! 🎁🇲🇾\n\n"
        "🎨 Batik: Hand-painted fabric (shirts, scarves)\n"
        "🍫 Chocolates: Beryl's, Vochelle\n"
        "🍪 Pineapple tarts & cookies\n"
        "🧴 Local products: tongkat ali, bird's nest\n"
        "🎭 Pewter: Royal Selangor crafts\n"
        "☕ Coffee: White coffee from Ipoh\n\n"
        "Where to shop:\n"
        "• Central Market (craft & batik)\n"
        "• KLIA airport (last minute!)\n"
        "• Petaling Street (bargain!)\n\n"
        "Tax refund available at airport for purchases >RM300!\n\n"
        "💡 Want more souvenir shopping tips?\n"
        "Browse KL The Guide for recommendations! 👇",
    quick: ['Where to buy', 'Price guide', 'KL The Guide 🔗'],
  ),

  // ========== ELECTRONICS ==========
  QA(
    patterns: ['electronics', 'gadget', 'phone', 'camera', 'tech'],
    staticAnswer: "For electronics, head to:\n\n"
        "💻 Plaza Low Yat: KL's tech hub!\n"
        "  • 5 floors of gadgets\n"
        "  • Competitive prices\n"
        "  • Can bargain a bit\n\n"
        "📱 Other spots:\n"
        "• Digital Mall (near Low Yat)\n"
        "• All-Asia (cameras)\n"
        "• Airport duty-free\n\n"
        "Tip: Compare prices! Warranty may differ from your country 📱\n\n"
        "💡 Looking for tech shopping details?\n"
        "Visit KL The Guide for store info! 👇",
    quick: ['Shopping tips', 'Warranty info', 'KL The Guide 🔗'],
  ),

  // ========== NIGHT MARKETS ==========
  QA(
    patterns: ['night market', 'pasar malam', 'jonker walk', 'street market'],
    staticAnswer: "Night markets are SO fun! 🌙✨\n\n"
        "🎪 Popular ones:\n"
        "• Jonker Walk (Melaka) - Fri-Sun\n"
        "• Chow Kit - Daily\n"
        "• Bangsar Sunday Market\n"
        "• Taman Connaught (Thu) - longest!\n\n"
        "What to expect:\n"
        "🍜 Street food galore\n"
        "👕 Cheap clothes & accessories\n"
        "🎮 Games & toys\n"
        "🌻 Fresh fruits\n\n"
        "Bargaining is expected! Start at 50% of asking price 😄\n\n"
        "💡 Need a complete market guide?\n"
        "Check KL The Guide for schedules! 👇",
    quick: ['Market schedules', 'What to buy', 'KL The Guide 🔗'],
  ),

  // ========== PETRONAS TOWERS ==========
  QA(
    patterns: ['petronas', 'twin towers', 'klcc', 'towers'],
    staticAnswer: "Petronas Twin Towers - Malaysia's ICON! 🏙️✨\n\n"
        "📸 Best views:\n"
        "• Skybridge (floor 41) + Observation Deck (86)\n"
        "• Book online in advance!\n"
        "• RM80-100 per person\n\n"
        "⏰ Timings: 9am-9pm (closed Mon)\n\n"
        "FREE alternatives:\n"
        "• KLCC Park fountain show (8pm & 9pm)\n"
        "• View from Traders Hotel Sky Bar\n"
        "• Photos from Suria KLCC mall\n\n"
        "Evening is magical with lights! 🌆\n\n"
        "💡 Need more KLCC area tips?\n"
        "Check KL The Guide for full details! 👇",
    quick: ['Booking guide', 'Photo spots', 'KL The Guide 🔗'],
  ),

  // ========== BATU CAVES ==========
  QA(
    patterns: ['batu caves', 'temple', 'stairs', 'monkey', 'hindu'],
    staticAnswer: "Batu Caves - INCREDIBLE! 🕉️🐒\n\n"
        "What to expect:\n"
        "• 272 rainbow stairs\n"
        "• Giant golden statue\n"
        "• Hindu temple inside cave\n"
        "• Cheeky monkeys (hold your belongings!)\n\n"
        "📍 30min from KL (take KTM Komuter)\n"
        "💰 FREE entry\n"
        "⏰ 6am-9pm\n\n"
        "Dress code: Cover shoulders & knees\n"
        "Go early morning to beat heat & crowds! 🌅\n\n"
        "💡 Planning your Batu Caves visit?\n"
        "Visit KL The Guide for transport tips! 👇",
    quick: ['Getting there', 'Best time', 'KL The Guide 🔗'],
  ),

  // ========== HERITAGE ==========
  QA(
    patterns: ['heritage', 'history', 'museum', 'culture', 'merdeka'],
    staticAnswer: "Explore Malaysia's rich history! 🏛️📚\n\n"
        "🏛️ KL Heritage Walk:\n"
        "• Merdeka Square (Independence)\n"
        "• Sultan Abdul Samad Building\n"
        "• Masjid Jamek (mosque)\n"
        "• Central Market (handicrafts)\n"
        "• River of Life\n\n"
        "🏙️ UNESCO Sites:\n"
        "• George Town (Penang) - street art!\n"
        "• Melaka - colonial history\n\n"
        "Museums:\n"
        "• Islamic Arts Museum (stunning!)\n"
        "• National Museum\n\n"
        "Most are walkable! Easy half-day tour 🚶\n\n"
        "💡 Want a heritage walking route?\n"
        "Browse KL The Guide for itineraries! 👇",
    quick: ['Walking routes', 'Museum list', 'KL The Guide 🔗'],
  ),

  // ========== MELAKA ==========
  QA(
    patterns: ['melaka', 'malacca', 'historic city', 'a famosa'],
    staticAnswer: "Melaka (Malacca) - UNESCO Heritage City! 🏰\n\n"
        "Must-see:\n"
        "🏛️ A Famosa Fort (1511!)\n"
        "⛪ St. Paul's Church (ruins on hill)\n"
        "🎨 Jonker Walk (night market Fri-Sun)\n"
        "🚤 Melaka River cruise (RM25)\n"
        "🕌 Red Dutch Square\n\n"
        "📍 2 hours from KL by bus\n"
        "💰 RM10-15 one-way\n"
        "⏰ Perfect as day trip or overnight\n\n"
        "Don't miss: Chicken rice balls & Nyonya food! 🍚✨\n\n"
        "💡 Planning a Melaka day trip?\n"
        "Check KL The Guide for complete itinerary! 👇",
    quick: ['Day trip plan', 'Food spots', 'KL The Guide 🔗'],
  ),

  // ========== PENANG ISLAND ==========
  QA(
    patterns: ['penang island', 'george town', 'street art', 'penang hill'],
    staticAnswer: "Penang - The Pearl of Orient! 🏝️🎨\n\n"
        "Why visit:\n"
        "🎨 Famous street art murals\n"
        "🍜 BEST food in Malaysia!\n"
        "🏛️ UNESCO heritage George Town\n"
        "🏖️ Beaches (Batu Ferringhi)\n"
        "🚡 Penang Hill cable car\n"
        "🕉️ Kek Lok Si Temple (largest Buddhist temple)\n\n"
        "📍 1-hour flight or 4-hour bus from KL\n"
        "⏰ Need 2-3 days minimum\n\n"
        "Rent a scooter to explore! 🛵\n\n"
        "💡 Need a complete Penang guide?\n"
        "Visit KL The Guide for everything! 👇",
    quick: ['3-day itinerary', 'Best areas', 'KL The Guide 🔗'],
  ),

  // ========== NATURE ==========
  QA(
    patterns: ['nature', 'outdoor', 'hiking', 'trek', 'jungle', 'mountain'],
    staticAnswer: "Malaysia's nature is STUNNING! 🌿🏔️\n\n"
        "🏔️ Mountains & Hills:\n"
        "• Mount Kinabalu (highest in SEA!)\n"
        "• Broga Hill (sunrise hike, 2hr)\n"
        "• Penang Hill (cable car up!)\n\n"
        "🌲 Rainforests:\n"
        "• Taman Negara (oldest jungle!)\n"
        "• Cameron Highlands (tea plantations)\n"
        "• Endau Rompin\n\n"
        "🏝️ Islands:\n"
        "• Langkawi, Perhentian, Tioman\n"
        "• Sipadan (world-class diving!)\n\n"
        "Adventure level? I can suggest! 😊\n\n"
        "💡 Need outdoor adventure guides?\n"
        "Visit KL The Guide for hiking tips! 👇",
    quick: ['Beginner trails', 'Adventure tours', 'KL The Guide 🔗'],
  ),

  // ========== LANGKAWI ==========
  QA(
    patterns: ['langkawi', 'island paradise', 'cable car', 'sky bridge'],
    staticAnswer: "Langkawi - Island Paradise! 🏝️☀️\n\n"
        "Must-do:\n"
        "🚡 Cable Car + Sky Bridge (amazing views!)\n"
        "🏖️ Pantai Cenang (main beach)\n"
        "🦅 Eagle Square & boat tour\n"
        "🌅 Sunset cruise\n"
        "💦 Seven Wells Waterfall\n\n"
        "📍 1-hour flight from KL\n"
        "💰 Duty-free shopping (cheap chocolate!)\n"
        "⏰ Need 3-4 days to enjoy\n\n"
        "Rent a car - island is big! 🚗\n"
        "Weather: Best Nov-March\n\n"
        "💡 Planning a Langkawi trip?\n"
        "Check KL The Guide for complete info! 👇",
    quick: ['Island itinerary', 'Beach guide', 'KL The Guide 🔗'],
  ),

  // ========== CAMERON HIGHLANDS ==========
  QA(
    patterns: [
      'cameron highlands',
      'tea',
      'strawberry',
      'highland',
      'cool weather'
    ],
    staticAnswer: "Cameron Highlands - Cool Mountain Retreat! 🍓☕\n\n"
        "Perfect for:\n"
        "🍵 Tea plantation tours (BOH Tea)\n"
        "🍓 Strawberry farms (pick your own!)\n"
        "🌺 Flower gardens\n"
        "🥦 Fresh veggie markets\n"
        "🥾 Jungle trails (Mossy Forest)\n\n"
        "📍 3-4 hours from KL by bus\n"
        "🌡️ 15-25°C (bring jacket!)\n"
        "⏰ Perfect 2-day trip\n\n"
        "Stay in Tanah Rata (main town).\n"
        "Try steamboat & scones with cream! 😊\n\n"
        "💡 Need a Cameron Highlands guide?\n"
        "Browse KL The Guide for tour details! 👇",
    quick: ['2-day itinerary', 'What to pack', 'KL The Guide 🔗'],
  ),

  // ========== TRAINS ==========
  QA(
    patterns: ['train', 'lrt', 'mrt', 'monorail', 'rail', 'klia express'],
    staticAnswer: "KL's trains are GREAT! 🚇💨\n\n"
        "Types:\n"
        "🚄 KLIA Express: Airport ↔️ City (28min, RM55)\n"
        "🚇 LRT: Main city lines (Kelana Jaya, Ampang)\n"
        "🚇 MRT: Newer, faster (SBK, Putrajaya)\n"
        "🚝 Monorail: Through city center\n"
        "🚂 KTM: Suburban (to Batu Caves!)\n\n"
        "💳 Get MyRapid card (RM10 deposit)\n"
        "💰 RM1-5 per trip\n"
        "⏰ 6am-midnight\n\n"
        "Very clean & safe! 😊\n\n"
        "💡 Want a complete train guide?\n"
        "Browse KL The Guide for route maps! 👇",
    quick: ['Station map', 'Card guide', 'KL The Guide 🔗'],
  ),

  // ========== PLANNING ==========
  QA(
    patterns: ['plan', 'itinerary', 'schedule', 'how many days', 'trip plan'],
    staticAnswer: "Let me help you plan! 📅✨\n\n"
        "Perfect KL itinerary:\n\n"
        "Day 1: KLCC → Batu Caves → Bukit Bintang\n"
        "Day 2: Heritage walk → Central Market → KL Tower\n"
        "Day 3: Day trip (Melaka or Genting)\n\n"
        "With more time:\n"
        "• 5-7 days: Add Penang or Langkawi\n"
        "• 10-14 days: Cover East Malaysia (Sabah/Sarawak)\n\n"
        "How long are you staying? I'll customize! 😊\n\n"
        "💡 Need detailed day-by-day plans?\n"
        "Check KL The Guide for full itineraries! 👇",
    quick: ['3-day detailed', '7-day plan', 'KL The Guide 🔗'],
  ),

  // ========== SAFETY ==========
  QA(
    patterns: ['safe', 'safety', 'dangerous', 'secure', 'theft', 'crime'],
    staticAnswer: "Malaysia is SAFE for tourists! ✅😊\n\n"
        "Safety tips:\n"
        "👍 Generally very safe\n"
        "👍 Locals are friendly & helpful\n"
        "👍 Low violent crime\n\n"
        "⚠️ Watch out for:\n"
        "• Pickpockets in crowded areas\n"
        "• Bag snatchers (rare, but hold bags tight)\n"
        "• Scam taxis (use Grab!)\n\n"
        "✅ Safe to:\n"
        "• Walk at night in busy areas\n"
        "• Use public transport\n"
        "• Eat street food\n\n"
        "You'll feel very comfortable here! 🇲🇾\n\n"
        "💡 Need complete safety guide?\n"
        "Check KL The Guide for travel tips! 👇",
    quick: ['Safety tips', 'Emergency info', 'KL The Guide 🔗'],
  ),

  // ========== INTERNET ==========
  QA(
    patterns: ['wifi', 'internet', 'data', 'mobile', 'online', 'sim'],
    staticAnswer: "Staying connected is EASY! 📱💨\n\n"
        "Best SIM cards (at airport):\n"
        "📶 Celcom, Digi, Maxis, U Mobile\n"
        "💰 RM35-50 for tourist packs\n"
        "📊 Unlimited data + calls (7-30 days)\n\n"
        "WiFi:\n"
        "• Most hotels: Fast & free\n"
        "• Malls & cafes: Free WiFi\n"
        "• Grab/food apps: Work everywhere\n\n"
        "Coverage is excellent in cities!\n"
        "Get SIM at airport - easiest! 😊\n\n"
        "💡 Need SIM card comparison?\n"
        "Browse KL The Guide for details! 👇",
    quick: ['Best SIM card', 'WiFi spots', 'KL The Guide 🔗'],
  ),

  // ========== LANGUAGE ==========
  QA(
    patterns: ['language', 'english', 'speak', 'communicate', 'malay'],
    staticAnswer: "Language in Malaysia 🗣️\n\n"
        "Good news:\n"
        "✅ English widely spoken in cities\n"
        "✅ Hotels/restaurants all speak English\n"
        "✅ Signs are bilingual\n\n"
        "Useful Malay phrases:\n"
        "• Hello: Selamat datang\n"
        "• Thank you: Terima kasih\n"
        "• Excuse me: Maaf\n"
        "• How much: Berapa harga\n"
        "• Delicious: Sedap!\n\n"
        "Locals LOVE when you try Malay! 😊\n"
        "You'll have zero problems communicating!\n\n"
        "💡 Want more useful phrases?\n"
        "Check KL The Guide for language tips! 👇",
    quick: ['Common phrases', 'Translation help', 'KL The Guide 🔗'],
  ),

  // ========== MEDICAL ==========
  QA(
    patterns: [
      'medical',
      'hospital',
      'health',
      'doctor',
      'treatment',
      'check up'
    ],
    staticAnswer: "Malaysia = World-Class Healthcare! 🏥✨\n\n"
        "Top hospitals:\n"
        "🏥 Prince Court Medical Centre\n"
        "🏥 Gleneagles KL\n"
        "🏥 Sunway Medical Centre\n"
        "🏥 Pantai Hospital\n\n"
        "Why Malaysia:\n"
        "💰 60-80% cheaper than US/UK\n"
        "👨‍⚕️ Doctors trained internationally\n"
        "🗣️ English-speaking staff\n"
        "✈️ Easy appointment booking\n\n"
        "Popular: Health screenings, dental, cosmetic surgery.\n"
        "Insurance paperwork? Hospitals help! 😊\n\n"
        "💡 Need hospital recommendations?\n"
        "Check KL The Guide for medical info! 👇",
    quick: ['Hospital list', 'Cost guide', 'KL The Guide 🔗'],
  ),

  // ========== MOSQUES ==========
  QA(
    patterns: ['mosque', 'prayer', 'islam', 'muslim prayer', 'putra mosque'],
    staticAnswer: "Beautiful mosques to visit! 🕌✨\n\n"
        "Must-see:\n"
        "🕌 Putra Mosque (Putrajaya) - Pink & stunning!\n"
        "🕌 Masjid Negara (National Mosque)\n"
        "🕌 Federal Territory Mosque\n"
        "🕌 Crystal Mosque (Terengganu)\n\n"
        "Visiting rules:\n"
        "👗 Dress modestly (robes provided)\n"
        "👟 Remove shoes\n"
        "📸 Photos okay (be respectful)\n"
        "🚫 Not during prayer times\n\n"
        "⏰ Best time: 9am-5pm\n"
        "💰 FREE entry\n\n"
        "Non-Muslims welcome! Very peaceful 😊\n\n"
        "💡 Planning a mosque tour?\n"
        "Visit KL The Guide for visiting tips! 👇",
    quick: ['How to visit', 'Prayer times', 'KL The Guide 🔗'],
  ),

  // ========== TEMPLES ==========
  QA(
    patterns: ['temple', 'chinese temple', 'buddhist', 'hindu temple'],
    staticAnswer: "Amazing temples to explore! 🏯🕉️\n\n"
        "Hindu Temples:\n"
        "🕉️ Batu Caves (iconic!)\n"
        "🕉️ Sri Mahamariamman (oldest in KL)\n\n"
        "Buddhist/Chinese Temples:\n"
        "🏯 Thean Hou Temple (6-tier, beautiful!)\n"
        "🏯 Kek Lok Si (Penang - largest!)\n"
        "🏯 Sin Sze Si Ya (oldest in KL)\n\n"
        "Visiting tips:\n"
        "👗 Dress modestly\n"
        "👟 Shoes off inside\n"
        "📸 Photos usually okay\n"
        "🙏 Be respectful of worshippers\n\n"
        "💰 FREE (donations welcome)\n"
        "Experience Malaysia's diversity! 🌈\n\n"
        "💡 Want a complete temple guide?\n"
        "Browse KL The Guide for details! 👇",
    quick: ['Temple locations', 'Etiquette guide', 'KL The Guide 🔗'],
  ),

  // ========== NIGHTLIFE ==========
  QA(
    patterns: ['nightlife', 'bar', 'club', 'party', 'night out'],
    staticAnswer: "KL nightlife is VIBRANT! 🍹🌃\n\n"
        "Top areas:\n"
        "🍸 Changkat Bukit Bintang: Rooftop bars, pubs\n"
        "🎉 TREC KL: Clubs & live music\n"
        "🏙️ Skybar @ Traders Hotel: KLCC views!\n"
        "🍺 Bangsar: Chill bars & cafes\n"
        "🎶 Jalan P. Ramlee: Upscale clubs\n\n"
        "Must-try:\n"
        "• Heli Lounge Bar (rooftop helipad!)\n"
        "• Marini's on 57 (fancy cocktails)\n"
        "• Reggae Bar (live bands)\n\n"
        "⏰ Opens 5pm, peaks 10pm-2am\n"
        "💰 Drinks RM25-50\n\n"
        "Very safe & fun! 🎉\n\n"
        "💡 Looking for nightlife spots?\n"
        "Check KL The Guide for bar reviews! 👇",
    quick: ['Bar locations', 'Club events', 'KL The Guide 🔗'],
  ),

  // ========== CURRENCY ==========
  QA(
    patterns: ['currency', 'exchange', 'ringgit', 'atm', 'cash'],
    staticAnswer: "Money matters! 💰🏦\n\n"
        "Currency: Malaysian Ringgit (MYR/RM)\n"
        "💵 USD 1 = RM 4-5 (approx)\n\n"
        "Best ways to pay:\n"
        "💳 Credit card widely accepted\n"
        "🏧 ATMs everywhere (RM1-5 fee)\n"
        "💵 Cash for street food/markets\n\n"
        "Where to exchange:\n"
        "✅ KL Sentral, Mid Valley (good rates)\n"
        "❌ Avoid airport (poor rates)\n"
        "❌ Hotels (worst rates)\n\n"
        "Tip: Withdraw from ATM = best rate!\n"
        "Most places accept card 😊\n\n"
        "💡 Need money exchange tips?\n"
        "Visit KL The Guide for details! 👇",
    quick: ['Exchange spots', 'ATM guide', 'KL The Guide 🔗'],
  ),

  // ========== TIPPING ==========
  QA(
    patterns: ['tip', 'tipping', 'service charge', 'gratuity'],
    staticAnswer: "Tipping in Malaysia 💵\n\n"
        "Short answer: NOT required! 😊\n\n"
        "Details:\n"
        "🍽️ Restaurants: 10% service charge already added\n"
        "🚗 Grab/taxi: Not expected (round up if you want)\n"
        "🏨 Hotels: RM5-10 for porter/housekeeping (optional)\n"
        "💇 Spa/salon: 10% if excellent service\n\n"
        "Locals don't usually tip.\n"
        "If you do, it's a nice surprise! 😊\n\n"
        "Service staff are paid properly here!\n\n"
        "💡 Want complete etiquette guide?\n"
        "Check KL The Guide for tips! 👇",
    quick: ['Tipping guide', 'Local customs', 'KL The Guide 🔗'],
  ),

  // ========== VISA ==========
  QA(
    patterns: ['visa', 'entry', 'passport', 'immigration', 'requirement'],
    staticAnswer: "Visa requirements 🛂✈️\n\n"
        "Good news: Most nationalities get\n"
        "visa-FREE entry! 🎉\n\n"
        "Common durations:\n"
        "🇺🇸🇬🇧🇦🇺🇪🇺: 90 days\n"
        "🇨🇳🇮🇳: 30 days (some need eVisa)\n"
        "🇸🇬: 30 days\n\n"
        "Requirements:\n"
        "✅ Passport valid 6+ months\n"
        "✅ Return/onward ticket\n"
        "✅ Sufficient funds proof\n\n"
        "Check: Malaysian Immigration website\n"
        "for your country's specific rules 📱\n\n"
        "💡 Need visa extension info?\n"
        "Browse KL The Guide for guidance! 👇",
    quick: ['Visa info', 'Requirements', 'KL The Guide 🔗'],
  ),

  // ========== EMERGENCY ==========
  QA(
    patterns: ['emergency', 'police', 'ambulance', 'help urgent'],
    staticAnswer: "Emergency numbers in Malaysia! 🚨\n\n"
        "📞 SAVE THESE:\n"
        "• Police: 999\n"
        "• Ambulance/Fire: 994\n"
        "• Tourist Police: 03-2149 6590\n\n"
        "Embassies:\n"
        "Check your country's embassy number\n"
        "when you arrive!\n\n"
        "Lost/Stolen:\n"
        "• Cards: Call bank immediately\n"
        "• Passport: Contact embassy first\n"
        "• Phone: Track via Find My Phone\n\n"
        "Hospitals with 24/7 ER:\n"
        "• Gleneagles, Pantai, Prince Court\n\n"
        "Stay safe! Help is quick here 💙\n\n"
        "💡 Need complete emergency guide?\n"
        "Visit KL The Guide for all info! 👇",
    quick: ['Emergency list', 'Hospital ER', 'KL The Guide 🔗'],
  ),

  // ========== DAY TRIPS ==========
  QA(
    patterns: ['day trip', 'nearby', 'excursion', 'one day', 'genting'],
    staticAnswer: "Awesome day trips from KL! 🚗💨\n\n"
        "🎢 Genting Highlands (1hr)\n"
        "  • Theme parks, casino, cool weather\n\n"
        "🏛️ Melaka (2hrs)\n"
        "  • UNESCO heritage, great food\n\n"
        "🦅 Batu Caves (30min)\n"
        "  • Hindu temple, monkeys, stairs!\n\n"
        "🦀 Kuala Selangor (1.5hrs)\n"
        "  • Fireflies boat tour at night\n\n"
        "🍓 Cameron Highlands (3hrs)\n"
        "  • Tea plantations (overnight better)\n\n"
        "🏖️ Port Dickson (1.5hrs)\n"
        "  • Beach escape\n\n"
        "Easy to do yourself or book tours! 😊\n\n"
        "💡 Want detailed day trip guides?\n"
        "Visit KL The Guide for itineraries! 👇",
    quick: ['Day trip plans', 'Tour booking', 'KL The Guide 🔗'],
  ),

  // ========== SPA & MASSAGE ==========
  QA(
    patterns: ['spa', 'massage', 'relax', 'wellness', 'traditional massage'],
    staticAnswer: "Relax & rejuvenate! 💆‍♀️✨\n\n"
        "Traditional treatments:\n"
        "🌿 Malay massage (full body)\n"
        "🌺 Javanese lulur (body scrub)\n"
        "🥥 Urut batin (traditional healing)\n\n"
        "Where to go:\n"
        "💎 Luxury: Mandara Spa, Spa Village\n"
        "💰 Mid-range: Thai Odyssey, Bali Hai\n"
        "💵 Budget: Local reflexology (RM50-80)\n\n"
        "📍 Find them in malls & hotels\n"
        "💰 RM100-400 for 1-2hrs\n"
        "⏰ Book ahead for weekends\n\n"
        "So affordable compared to home! 😊\n\n"
        "💡 Looking for spa recommendations?\n"
        "Check KL The Guide for reviews! 👇",
    quick: ['Spa locations', 'Price ranges', 'KL The Guide 🔗'],
  ),

  // ========== RAINY DAY ==========
  QA(
    patterns: ['rain', 'raining', 'wet', 'indoor', 'rainy day'],
    staticAnswer: "Rainy day? No problem! ☔😊\n\n"
        "Indoor fun:\n"
        "🛍️ Mall hopping (all connected!)\n"
        "🐠 Aquaria KLCC (underwater tunnel)\n"
        "🔬 Petrosains Science Centre\n"
        "🖼️ Museum of Illusions\n"
        "🎭 Islamic Arts Museum\n"
        "🍜 Food court marathon!\n"
        "☕ Cozy cafe hopping\n"
        "💆 Spa day\n\n"
        "Pro tip:\n"
        "Malls in KL are HUGE - you can spend\n"
        "all day exploring, eating, & shopping\n"
        "in air-con comfort! 🌈\n\n"
        "💡 Need rainy day itinerary?\n"
        "Browse KL The Guide for ideas! 👇",
    quick: ['Indoor spots', 'Mall guide', 'KL The Guide 🔗'],
  ),

  // ========== PHOTO SPOTS ==========
  QA(
    patterns: [
      'photo',
      'instagram',
      'pictures',
      'photogenic',
      'beautiful photos'
    ],
    staticAnswer: "Instagram-worthy spots in KL! 📸✨\n\n"
        "🌟 Best Photo Locations:\n"
        "🌉 Saloma Bridge (evening lights!)\n"
        "  Best time: 7-9pm for colors\n\n"
        "⛲ KLCC Park (fountain + towers)\n"
        "  📍 Grab the iconic reflection shot!\n\n"
        "🌺 Perdana Botanical Gardens\n"
        "  🌳 Lush greenery & flowers\n\n"
        "🏮 Petaling Street (Chinatown)\n"
        "  Red lanterns everywhere!\n\n"
        "Other spots:\n"
        "• Batu Caves rainbow stairs\n"
        "• Putra Mosque (pink beauty!)\n"
        "• Thean Hou Temple sunset\n\n"
        "Golden hour = Magic! 🌅\n\n"
        "💡 Want more Instagrammable spots?\n"
        "Check KL The Guide for photo locations! 👇",
    quick: ['Hidden photo spots', 'Photography tips', 'KL The Guide 🔗'],
  ),

  // ========== FESTIVALS ==========
  QA(
    patterns: [
      'festival',
      'event',
      'celebration',
      'holiday',
      'chinese new year'
    ],
    staticAnswer: "Malaysia's festivals are COLORFUL! 🎉🌈\n\n"
        "Major celebrations:\n"
        "🧧 Chinese New Year (Jan/Feb)\n"
        "  • Red lanterns everywhere!\n"
        "🕌 Hari Raya (Islamic)\n"
        "  • After Ramadan fasting\n"
        "🪔 Deepavali (Oct/Nov)\n"
        "  • Festival of lights\n"
        "🎄 Christmas (Dec)\n"
        "  • Big decorations in malls\n\n"
        "Special events:\n"
        "• Malaysia Day (Sept 16)\n"
        "• Merdeka Day (Aug 31)\n"
        "• Thaipusam (Jan/Feb) - Batu Caves!\n\n"
        "During festivals: expect crowds,\n"
        "but AMAZING atmosphere! 🎊\n\n"
        "💡 Planning around festivals?\n"
        "Check KL The Guide for event calendar! 👇",
    quick: ['Festival calendar', 'Event dates', 'KL The Guide 🔗'],
  ),

  // ========== FOOD DELIVERY ==========
  QA(
    patterns: ['delivery', 'food delivery', 'order food', 'grabfood', 'app'],
    staticAnswer: "Food delivery is EVERYWHERE! 📱🍜\n\n"
        "Top apps:\n"
        "🚗 GrabFood (most popular!)\n"
        "🛵 Foodpanda\n"
        "🍔 ShopeeFood (cheap deals!)\n\n"
        "Why so good:\n"
        "✅ Super fast (20-40min)\n"
        "✅ Cheap delivery (RM2-5)\n"
        "✅ Promos daily!\n"
        "✅ Track your order\n\n"
        "💰 Payment: Card or cash\n"
        "🕐 Available: 7am-2am (some 24hr!)\n\n"
        "Perfect for lazy hotel nights! 😊\n"
        "Download: Grab, Foodpanda, Shopee\n\n"
        "💡 Want restaurant recommendations?\n"
        "Browse KL The Guide for delivery spots! 👇",
    quick: ['App setup', 'Best promos', 'KL The Guide 🔗'],
  ),

  // ========== FAMILY WITH KIDS ==========
  QA(
    patterns: ['family', 'kids', 'children', 'family friendly', 'with kids'],
    staticAnswer: "Family-friendly fun in Malaysia! 👨‍👩‍👧‍👦💕\n\n"
        "🎢 Top Attractions:\n"
        "• Sunway Lagoon (water park + theme park!)\n"
        "  💰 RM180-220 | Full day fun!\n\n"
        "• Aquaria KLCC (underwater tunnel 🐠)\n"
        "• Zoo Negara (Giant Panda!)\n"
        "• KL Bird Park (world's largest!)\n\n"
        "🎪 More ideas:\n"
        "• Petrosains Science Center\n"
        "• Kidzania (role-play city)\n"
        "• Farm In The City\n"
        "• Legoland (Johor)\n\n"
        "Kids will LOVE Malaysia! 🌟\n\n"
        "💡 Want a family itinerary?\n"
        "Visit KL The Guide for kid-friendly plans! 👇",
    quick: ['Age groups', 'Indoor options', 'KL The Guide 🔗'],
  ),

  // ========== ISLANDS & BEACHES ==========
  QA(
    patterns: ['island', 'beach', 'islands', 'beach destination', 'seaside'],
    staticAnswer: "Top island destinations! 🏝️☀️\n\n"
        "🌊 Must-Visit Islands:\n"
        "🦅 Langkawi (duty-free paradise!)\n"
        "  • Cable car, beaches, sunsets\n"
        "  • ✈️ 1hr flight from KL\n\n"
        "🐠 Perhentian Islands (crystal clear!)\n"
        "  • Snorkeling, diving heaven\n"
        "  • Budget-friendly\n\n"
        "🌴 Tioman Island (jungle + beach)\n"
        "  • Pristine nature\n\n"
        "🤿 Sipadan (world's best diving!)\n"
        "  • Sabah - bucket list!\n\n"
        "🦀 Pangkor Island (laid-back vibes)\n"
        "  • Easy from KL (3hrs)\n\n"
        "Best season: March-October! 🌞\n\n"
        "💡 Planning an island trip?\n"
        "Visit KL The Guide for island guides! 👇",
    quick: ['Island comparison', 'Best beaches', 'KL The Guide 🔗'],
  ),

  // ========== HIDDEN GEMS ==========
  QA(
    patterns: [
      'hidden gem',
      'underrated',
      'secret spot',
      'off beaten',
      'lesser known'
    ],
    staticAnswer: "Hidden gems - locals' favorites! 💎🤫\n\n"
        "🌟 5 Underrated Spots:\n"
        "🌾 Sekinchan Rice Fields\n"
        "  • Golden paddy views!\n"
        "  • 📍 2hrs from KL\n"
        "  • Fresh seafood too!\n\n"
        "✨ Kuala Selangor Fireflies\n"
        "  • Magical boat tour at night\n"
        "  • Nature's light show! 🌙\n\n"
        "🪞 Sasaran Sky Mirror\n"
        "  • Bolivia-style reflection!\n"
        "  • Seasonal (check timing)\n\n"
        "🏔️ Kundasang (Sabah)\n"
        "  • \"New Zealand of Malaysia\"\n"
        "  • Dairy farms, cool air\n\n"
        "🏝️ Kapas Island\n"
        "  • Quiet, pristine beaches\n"
        "  • Less touristy!\n\n"
        "Escape the crowds! 🌿\n\n"
        "💡 Want more secret spots?\n"
        "Check KL The Guide for local favorites! 👇",
    quick: ['More hidden gems', 'Local tips', 'KL The Guide 🔗'],
  ),

  // ========== SUNSET VIEWS ==========
  QA(
    patterns: ['sunset', 'sunset view', 'golden hour', 'evening view'],
    staticAnswer: "Best sunset spots in Malaysia! 🌅✨\n\n"
        "🌇 Top Sunset Views:\n"
        "🌉 Langkawi SkyBridge\n"
        "  • 360° island & sea views\n"
        "  • Absolutely stunning!\n\n"
        "🏯 Kek Lok Si Temple Hill (Penang)\n"
        "  • Temple + sunset combo\n"
        "  • Magical atmosphere\n\n"
        "🏖️ Tanjung Aru Beach (Sabah)\n"
        "  • Famous sunset beach\n"
        "  • Food stalls nearby\n\n"
        "Other great spots:\n"
        "• KLCC Park (city sunset)\n"
        "• Putra Mosque lakeside\n"
        "• Port Dickson beaches\n\n"
        "⏰ Best time: 6:30-7:30pm\n"
        "Bring your camera! 📸\n\n"
        "💡 Looking for more sunset spots?\n"
        "Visit KL The Guide for recommendations! 👇",
    quick: ['Sunset timing', 'Nearby cafes', 'KL The Guide 🔗'],
  ),

  // ========== RAINFOREST & TREKKING ==========
  QA(
    patterns: ['rainforest', 'jungle', 'trekking', 'nature park', 'wildlife'],
    staticAnswer: "Experience Malaysia's ancient rainforest! 🌳🦜\n\n"
        "🌿 Top Rainforest Destinations:\n"
        "🏞️ Taman Negara\n"
        "  • 130 million years old!\n"
        "  • Canopy walk, river cruise\n"
        "  • Wildlife spotting\n"
        "  • 📍 3-4hrs from KL\n\n"
        "🏔️ Kinabalu Park (Sabah)\n"
        "  • UNESCO World Heritage\n"
        "  • Mount Kinabalu (4,095m!)\n"
        "  • Unique flora & fauna\n"
        "  • ✈️ Fly to Kota Kinabalu\n\n"
        "What to expect:\n"
        "• Guided jungle treks\n"
        "• Night safaris\n"
        "• River activities\n"
        "• Authentic nature experience!\n\n"
        "Hire local guides recommended! 🥾\n\n"
        "💡 Want jungle adventure tips?\n"
        "Browse KL The Guide for trekking info! 👇",
    quick: ['Packing list', 'Tour operators', 'KL The Guide 🔗'],
  ),

  // ========== CITY VIEWS ==========
  QA(
    patterns: ['city view', 'best view', 'skyline', 'panorama', 'observation'],
    staticAnswer: "Best city views in KL! 🌆🔝\n\n"
        "🏙️ Top Viewing Spots:\n"
        "• KL Tower Sky Deck (421m high!)\n"
        "  💰 RM52 | ⏰ 9am-10pm\n\n"
        "• Banyan Tree Rooftop Bar\n"
        "  🍹 Drinks with a view!\n\n"
        "• Petronas Sky Bridge (floor 86)\n"
        "  💰 RM80-100 | Book ahead!\n\n"
        "• KLCC Park (free ground view!)\n"
        "• Traders Hotel Sky Bar\n\n"
        "Evening/night is MAGICAL with lights! ✨\n\n"
        "💡 Looking for more viewing spots?\n"
        "Check KL The Guide for recommendations! 👇",
    quick: ['Rooftop bars', 'Best timing', 'KL The Guide 🔗'],
  ),

  // ========== THANKS & GOODBYES ==========
  QA(
    patterns: ['thanks', 'thank you', 'appreciate', 'helpful'],
    staticAnswer: "You're so welcome! 🌟😊\n\n"
        "Have an AMAZING time in Malaysia!\n"
        "The food, the people, the sights -\n"
        "you're going to love it here! 🇲🇾💕\n\n"
        "Need anything else? Just ask!\n"
        "I'm here to help make your trip\n"
        "unforgettable! ✨\n\n"
        "Selamat datang ke Malaysia! 🎉\n"
        "(Welcome to Malaysia!)\n\n"
        "💡 Want even more travel tips?\n"
        "Visit KL The Guide for everything! 👇",
    quick: ['More questions', 'Plan my trip', 'KL The Guide 🔗'],
  ),

  QA(
    patterns: ['bye', 'goodbye', 'see you', 'done', 'finish'],
    staticAnswer: "Safe travels, friend! 🌏✨\n\n"
        "Enjoy every moment in Malaysia!\n"
        "Eat lots, explore tons, and make\n"
        "amazing memories! 📸🍜\n\n"
        "Come back anytime you need help!\n\n"
        "Selamat jalan! (Safe journey!) 🇲🇾💙\n\n"
        "💡 Before you go, check out:\n"
        "KL The Guide for complete travel info! 👇",
    quick: ['One more question', 'KL The Guide 🔗'],
  ),

  // ========== RECOMMENDATIONS ==========
  QA(
    patterns: ['recommend', 'suggestion', 'what should', 'advice'],
    staticAnswer: "I'd love to help! 😊\n\n"
        "Tell me more about what you like:\n"
        "🍜 Foodie? → Best restaurants & street food\n"
        "🏛️ History buff? → Heritage sites & museums\n"
        "🏖️ Beach lover? → Island hopping\n"
        "🛍️ Shopaholic? → Malls & markets\n"
        "🌿 Nature person? → Hiking & parks\n"
        "👨‍👩‍👧‍👦 Family trip? → Kid-friendly spots\n\n"
        "Or ask specific things like:\n"
        "'Best dinner spot near KLCC?'\n"
        "'Easy hike with great views?'\n\n"
        "💡 Need personalized recommendations?\n"
        "Browse KL The Guide for curated lists! 👇",
    quick: ['Food spots', 'Attractions', 'KL The Guide 🔗'],
  ),

  // ========== FALLBACK ==========
  QA(
    patterns: ['where', 'how', 'what', 'when', 'can you', 'tell me', 'show me'],
    staticAnswer: "I'd be happy to help! 🌟\n\n"
        "I know about:\n"
        "• Food & restaurants 🍜\n"
        "• Attractions & sights 🏛️\n"
        "• Shopping & markets 🛍️\n"
        "• Transportation tips 🚇\n"
        "• Hotels & areas 🏨\n"
        "• Day trips & tours 🚗\n"
        "• Practical travel info 📱\n\n"
        "Try asking something specific like:\n"
        "'Top 5 attractions in KL?'\n"
        "'Best breakfast near Bukit Bintang?'\n"
        "'How to get to Batu Caves?'\n\n"
        "💡 Want comprehensive guides?\n"
        "Check KL The Guide for everything! 👇",
    quick: ['Popular questions', 'Travel tips', 'KL The Guide 🔗'],
  ),
];

// ============================================
// MATCHING ENGINE
// ============================================

class QAMatcher {
  static QA? findBestMatch(String query, List<QA> qaList) {
    final lowerQuery = query.toLowerCase();

    // Try exact pattern match first
    for (var qa in qaList) {
      for (var pattern in qa.patterns) {
        if (lowerQuery.contains(pattern.toLowerCase())) {
          return qa;
        }
      }
    }

    // Return fallback if no match
    return qaList.last; // The fallback QA
  }

  static String getAnswer(String query, List<QA> qaList) {
    final match = findBestMatch(query, qaList);
    if (match != null) {
      return match.getAnswer(query);
    }
    return "I'm here to help! What would you like to know about Malaysia? 😊";
  }
}

// ============================================
// USAGE EXAMPLE
// ============================================

void main() {
  // Example queries
  final queries = [
    "What are the top 10 attractions in KL?",
    "Best breakfast near KLCC",
    "Cheap shopping in Kuala Lumpur",
    "How to get from airport to city?",
    "3 day budget for Malaysia",
  ];

  for (var query in queries) {
    print("Q: $query");
    print("A: ${QAMatcher.getAnswer(query, kTravelQA)}");
    print("\n" + "=" * 50 + "\n");
  }
}
