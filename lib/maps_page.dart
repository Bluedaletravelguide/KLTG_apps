import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({super.key});

  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  final _controller = TextEditingController();

  Future<void> _openMaps({String? query, double? lat, double? lng}) async {
    // Try native maps app first (Android/iOS), then fall back to web
    Uri? primary;
    if (lat != null && lng != null) {
      primary = Uri.parse('geo:$lat,$lng'); // native intent
    } else if (query != null && query.trim().isNotEmpty) {
      final q = Uri.encodeComponent(query.trim());
      primary = Uri.parse('geo:0,0?q=$q'); // native intent with search
    }

    if (primary != null && await canLaunchUrl(primary)) {
      final ok = await launchUrl(primary, mode: LaunchMode.externalApplication);
      if (ok) return;
    }

    // Fallback: Google Maps website
    final web = Uri.parse(
      query != null && query.trim().isNotEmpty
          ? 'https://www.google.com/maps/search/?api=1&query=${Uri.encodeComponent(query.trim())}'
          : 'https://www.google.com/maps',
    );
    await launchUrl(web, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Maps',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _controller,
            decoration: const InputDecoration(
              hintText: 'Search place (e.g. Petronas Twin Towers)',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.search),
            ),
            onSubmitted: (v) => _openMaps(query: v),
          ),
          const SizedBox(height: 12),
          FilledButton.icon(
            onPressed: () => _openMaps(query: _controller.text),
            icon: const Icon(Icons.map),
            label: const Text('Open in Maps'),
          ),
          const SizedBox(height: 8),
          TextButton(
            onPressed: () => _openMaps(), // just open maps home
            child: const Text('Open Maps Home'),
          ),
        ],
      ),
    );
  }
}
