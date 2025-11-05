import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:url_launcher/url_launcher.dart';
import 'generated/l10n.dart';

// Model class for Voucher Data
class VoucherData {
  final String voucher;
  final String title;
  final String image;
  final String expiryDate;

  VoucherData({
    required this.voucher,
    required this.title,
    required this.image,
    required this.expiryDate,
  });

  factory VoucherData.fromJson(Map<String, dynamic> json) {
    return VoucherData(
      voucher: json['voucher'] ?? '',
      title: json['voucher_title'] ?? '',
      image: json['voucher_image'] ?? '',
      expiryDate: json['voucher_expiry_date'] ?? '',
    );
  }
}

// Fallback voucher data in case the server is unreachable
List<VoucherData> fallbackVoucherData = [
  VoucherData(
    voucher: 'Voucher 1',
    title: 'Stand a chance to win complimentary vouchers. Click participate.',
    image: 'assets/images/voucher_1.jpg',
    expiryDate: '30 November 2024',
  ),
  VoucherData(
    voucher: 'Voucher 2',
    title: 'Stand a chance to win complimentary vouchers. Click participate.',
    image: 'assets/images/voucher_2.jpg',
    expiryDate: '30 November 2024',
  ),
];

// Function to fetch data from the API
Future<List<VoucherData>> fetchVouchers() async {
  final response = await http.post(
    Uri.parse('https://www.kltheguide.com.my/admin/functions.php'),
    body: {'fetch_vouchers': 'true'},
  );

  if (response.statusCode == 200) {
    final List<dynamic> jsonData = jsonDecode(response.body);
    return jsonData.map((json) => VoucherData.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load vouchers');
  }
}

// Widget to display voucher data in a card format
class VoucherCardList extends StatelessWidget {
  final List<VoucherData> data;

  const VoucherCardList({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: data.length,
      itemBuilder: (context, index) {
        final item = data[index];
        String fallbackImage = index % 2 == 0
            ? 'assets/images/voucher_1.jpg'
            : 'assets/images/voucher_2.jpg';

        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color.fromARGB(255, 0, 71, 133),
                  const Color.fromARGB(255, 0, 95, 175),
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 0, 71, 133).withOpacity(0.3),
                  blurRadius: 20,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Stack(
                children: [
                  // Background pattern
                  Positioned.fill(
                    child: Opacity(
                      opacity: 0.1,
                      child: CustomPaint(
                        painter: VoucherPatternPainter(),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Voucher image with special styling
                      Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 15,
                                  offset: const Offset(0, 5),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: CachedNetworkImage(
                                imageUrl:
                                    item.image.isNotEmpty ? item.image : '',
                                fit: BoxFit.cover,
                                height: 180,
                                width: double.infinity,
                                errorWidget: (context, url, error) =>
                                    Image.asset(
                                  fallbackImage,
                                  fit: BoxFit.cover,
                                  height: 180,
                                  width: double.infinity,
                                ),
                                placeholder: (context, url) => Container(
                                  height: 180,
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
                              ),
                            ),
                          ),
                          // Special offer badge
                          Positioned(
                            top: 24,
                            right: 24,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFFFF6B6B),
                                    Color(0xFFFF8E53),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.red.withOpacity(0.4),
                                    blurRadius: 12,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Icon(
                                    Icons.local_offer,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    'SPECIAL',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Content section
                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Title
                            Text(
                              item.title,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                height: 1.3,
                              ),
                            ),
                            const SizedBox(height: 12),
                            // Voucher code section
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.3),
                                  width: 1,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.confirmation_number_outlined,
                                    color: Colors.white.withOpacity(0.9),
                                    size: 20,
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      item.voucher,
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.95),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 12),
                            // Expiry date
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time,
                                  color: Colors.white.withOpacity(0.8),
                                  size: 16,
                                ),
                                const SizedBox(width: 6),
                                Text(
                                  "Expires: ${item.expiryDate}",
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.85),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            // Claim button
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  _launchURL();
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor:
                                      const Color.fromARGB(255, 0, 71, 133),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 14),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  elevation: 0,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Claim Voucher',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Icon(Icons.arrow_forward, size: 18),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  // Function to launch the URL
  void _launchURL() async {
    const url =
        'https://docs.google.com/forms/d/e/1FAIpQLScg1O4jn8bJk8B2Rr5rYQIUNkEI0K8Abz2ann19HYG6_GSUMA/viewform?usp=sharing';
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: false, forceWebView: false);
    } else {
      throw 'Could not launch $url';
    }
  }
}

// Custom painter for voucher pattern background
class VoucherPatternPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    // Draw diagonal lines pattern
    for (double i = -size.height; i < size.width; i += 30) {
      canvas.drawLine(
        Offset(i, 0),
        Offset(i + size.height, size.height),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

// Main widget to display the vouchers
class VoucherScreen extends StatefulWidget {
  const VoucherScreen({Key? key}) : super(key: key);

  @override
  _VoucherScreenState createState() => _VoucherScreenState();
}

class _VoucherScreenState extends State<VoucherScreen> {
  late Future<List<VoucherData>> _data = fetchVouchers();
  List<VoucherData> _previousData = [];

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  void _fetchData() {
    _data = fetchVouchers();
    _data.then((newData) {
      if (_previousData.isNotEmpty && newData.length > _previousData.length) {
        Navigator.pop(context, true);
      }
      setState(() {
        _previousData = newData;
      });
    }).catchError((error) {
      Navigator.pop(context, false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text(
          S.of(context).vouchers,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 71, 133),
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: FutureBuilder<List<VoucherData>>(
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
                    'Loading vouchers...',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            );
          } else if (snapshot.hasError) {
            return VoucherCardList(data: fallbackVoucherData);
          } else if (snapshot.hasData) {
            final newData = snapshot.data ?? [];
            _previousData = newData;
            return VoucherCardList(data: newData);
          } else {
            return VoucherCardList(data: fallbackVoucherData);
          }
        },
      ),
    );
  }
}
  