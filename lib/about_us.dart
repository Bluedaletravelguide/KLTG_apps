import 'package:flutter/material.dart';
import 'package:kltheguide/main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'generated/l10n.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          S.of(context).aboutUs,
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo Section with enhanced styling
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color.fromARGB(255, 0, 71, 133),
                      const Color.fromARGB(255, 0, 100, 180),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        'assets/images/Logo_100x50.png',
                        height: 50,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'KL The Guide',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.5,
                        shadows: [
                          Shadow(
                            color: Colors.black.withOpacity(0.3),
                            offset: const Offset(0, 2),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Your Gateway to Kuala Lumpur',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white.withOpacity(0.9),
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
              ),

              // Company Section
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    _buildSectionHeader(
                      icon: Icons.business_rounded,
                      title: S.of(context).ourCompany,
                      color: const Color.fromARGB(255, 0, 71, 133),
                    ),
                    const SizedBox(height: 16),
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
                      child: Text(
                        S.of(context).ourCompanyDescription,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.6,
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Social Media Section
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.blue.shade50,
                      Colors.purple.shade50,
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    _buildSectionHeader(
                      icon: Icons.share_rounded,
                      title: S.of(context).findUs,
                      color: const Color.fromARGB(255, 0, 71, 133),
                    ),
                    const SizedBox(height: 24),
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 16,
                      runSpacing: 16,
                      children: [
                        _buildSocialMediaButton(
                          icon: Icons.facebook_sharp,
                          color: Colors.blue,
                          label: 'Facebook',
                          url: 'https://www.facebook.com/kltheguide/',
                        ),
                        _buildSocialMediaButton(
                          icon: MyFlutterApp.instagram_1,
                          color: Colors.pink,
                          label: 'Instagram',
                          url: 'https://www.instagram.com/kltheguide/',
                        ),
                        _buildSocialMediaButton(
                          icon: Icons.tiktok,
                          color: Colors.black,
                          label: 'TikTok',
                          url: 'https://www.tiktok.com/@kltheguide',
                        ),
                        _buildSocialMediaButton(
                          icon: Icons.public,
                          color: const Color.fromARGB(255, 0, 71, 133),
                          label: 'Website',
                          url: 'https://www.kltheguide.com.my/',
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Version Section
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Colors.grey.shade200,
                      width: 1,
                    ),
                  ),
                  child: FutureBuilder<PackageInfo>(
                    future: PackageInfo.fromPlatform(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.error_outline,
                                color: Colors.red.shade400),
                            const SizedBox(width: 8),
                            Text(
                              S.of(context).errorLoadingVersion,
                              style: TextStyle(color: Colors.red.shade400),
                            ),
                          ],
                        );
                      } else {
                        String appVersion = snapshot.data!.version;
                        String buildNumber = snapshot.data!.buildNumber;

                        return Column(
                          children: [
                            Icon(
                              Icons.info_outline_rounded,
                              color: const Color.fromARGB(255, 0, 71, 133),
                              size: 32,
                            ),
                            const SizedBox(height: 12),
                            Text(
                              '${S.of(context).appVersion} $appVersion',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade800,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Build $buildNumber',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ],
                        );
                      }
                    },
                  ),
                ),
              ),

              // Footer
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                ),
                child: Column(
                  children: [
                    Text(
                      '© 2024 KL The Guide',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'All Rights Reserved',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade600,
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

  Widget _buildSectionHeader({
    required IconData icon,
    required String title,
    required Color color,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            color: color,
            size: 24,
          ),
        ),
        const SizedBox(width: 12),
        Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade800,
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }

  Widget _buildSocialMediaButton({
    required IconData icon,
    required Color color,
    required String label,
    required String url,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => _launchURL(url),
        borderRadius: BorderRadius.circular(16),
        child: Container(
          width: 140,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: color.withOpacity(0.2),
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  color: color,
                  size: 32,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                label,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade800,
                ),
              ),
            ],
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
