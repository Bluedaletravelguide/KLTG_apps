// lib/pages/travel_buddy_page.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../services/travel_buddy.dart';

class TravelBuddyPage extends StatefulWidget {
  const TravelBuddyPage({super.key});
  @override
  State<TravelBuddyPage> createState() => _TravelBuddyPageState();
}

class _TravelBuddyPageState extends State<TravelBuddyPage> {
  final _ctrl = TextEditingController();
  final _scrollCtrl = ScrollController();
  final _msgs = <_Msg>[
    _Msg(
      text:
          "Hi there! 👋 I'm KL Buddy, your friendly travel guide! Ask me about KL's amazing food, exciting sights, or help you plan your perfect day!",
      fromBot: true,
      quickReplies: ['Top attractions', 'Best food', 'Getting around'],
    ),
  ];

  void _send(String text) {
    if (text.trim().isEmpty) return;
    setState(() => _msgs.add(_Msg(text: text, fromBot: false)));
    _ctrl.clear();

    // Scroll to bottom after user message
    Future.delayed(const Duration(milliseconds: 100), () {
      _scrollToBottom();
    });

    // Simulate typing delay for more natural feel
    Future.delayed(const Duration(milliseconds: 500), () {
      final reply = respondTo(text, isNight: _isNightNow());
      final quickReplies = getQuickReplies(text);

      setState(() => _msgs.add(_Msg(
            text: reply,
            fromBot: true,
            quickReplies: quickReplies,
          )));

      // Scroll to bottom after bot reply
      Future.delayed(const Duration(milliseconds: 100), () {
        _scrollToBottom();
      });
    });
  }

  void _handleQuickReply(String text) {
    // Check if it's a link button
    if (text.contains('🔗')) {
      // Extract the link text and open URL
      if (text.contains('KL The Guide')) {
        _launchURL('https://www.kltheguide.com.my/');
      }
    } else {
      // Send as normal message
      _send(text);
    }
  }

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      // Show error if can't launch
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Could not open link')),
        );
      }
    }
  }

  void _scrollToBottom() {
    if (_scrollCtrl.hasClients) {
      _scrollCtrl.animateTo(
        _scrollCtrl.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  bool _isNightNow() {
    final h = DateTime.now().hour;
    return h >= 19 || h <= 5;
  }

  @override
  void dispose() {
    _ctrl.dispose();
    _scrollCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF004785),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          children: [
            // Mascot Avatar
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(4),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/KLbuddy.png',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(
                      Icons.person,
                      color: Color(0xFF004785),
                      size: 24,
                    );
                  },
                ),
              ),
            ),
            const SizedBox(width: 12),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "KL Buddy",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Always here to help! 😊",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
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
        child: Column(
          children: [
            // Decorative header wave
            Container(
              height: 20,
              decoration: const BoxDecoration(
                color: Color(0xFF004785),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
            ),

            // Messages area
            Expanded(
              child: ListView.builder(
                controller: _scrollCtrl,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                itemCount: _msgs.length,
                itemBuilder: (_, i) {
                  final m = _msgs[i];
                  return Column(
                    children: [
                      _buildMessageBubble(m),
                      // Show quick reply buttons only for last bot message
                      if (m.fromBot &&
                          m.quickReplies.isNotEmpty &&
                          i == _msgs.length - 1)
                        _buildQuickReplies(m.quickReplies),
                    ],
                  );
                },
              ),
            ),

            // Input area
            _buildInputArea(),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageBubble(_Msg msg) {
    final align = msg.fromBot ? Alignment.centerLeft : Alignment.centerRight;

    return Align(
      alignment: align,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Bot avatar (left side)
          if (msg.fromBot) ...[
            Container(
              width: 32,
              height: 32,
              margin: const EdgeInsets.only(right: 8, top: 4),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(4),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/KLbuddy.png',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(
                      Icons.smart_toy,
                      color: Color(0xFF004785),
                      size: 18,
                    );
                  },
                ),
              ),
            ),
          ],

          // Message bubble
          Flexible(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 4),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                gradient: msg.fromBot
                    ? LinearGradient(
                        colors: [
                          Colors.white,
                          Colors.grey[50]!,
                        ],
                      )
                    : const LinearGradient(
                        colors: [
                          Color(0xFF004785),
                          Color(0xFF0059A3),
                        ],
                      ),
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(20),
                  topRight: const Radius.circular(20),
                  bottomLeft: msg.fromBot
                      ? const Radius.circular(4)
                      : const Radius.circular(20),
                  bottomRight: msg.fromBot
                      ? const Radius.circular(20)
                      : const Radius.circular(4),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Text(
                msg.text,
                style: TextStyle(
                  color: msg.fromBot ? Colors.black87 : Colors.white,
                  fontSize: 15,
                  height: 1.4,
                ),
              ),
            ),
          ),

          // User avatar (right side)
          if (!msg.fromBot) ...[
            Container(
              width: 32,
              height: 32,
              margin: const EdgeInsets.only(left: 8, top: 4),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF004785),
                    Color(0xFF0059A3),
                  ],
                ),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: const Icon(
                Icons.person,
                color: Colors.white,
                size: 18,
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildQuickReplies(List<String> replies) {
    return Padding(
      padding: const EdgeInsets.only(left: 48, top: 8, bottom: 8),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: replies.map((text) {
          final isLink = text.contains('🔗');

          return InkWell(
            onTap: () => _handleQuickReply(text),
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: isLink ? Colors.blue[50] : Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: isLink ? Colors.blue[300]! : const Color(0xFF004785),
                  width: 1.5,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (isLink)
                    const Icon(
                      Icons.link,
                      size: 16,
                      color: Colors.blue,
                    ),
                  if (isLink) const SizedBox(width: 4),
                  Text(
                    text,
                    style: TextStyle(
                      color:
                          isLink ? Colors.blue[700] : const Color(0xFF004785),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildInputArea() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.grey[300]!,
                    width: 1,
                  ),
                ),
                child: TextField(
                  controller: _ctrl,
                  onSubmitted: _send,
                  maxLines: null,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    hintText: "Ask about food, places, or activities...",
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 14,
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF004785),
                    Color(0xFF0059A3),
                  ],
                ),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF004785).withOpacity(0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: IconButton(
                icon: const Icon(Icons.send_rounded, color: Colors.white),
                onPressed: () => _send(_ctrl.text),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Msg {
  final String text;
  final bool fromBot;
  final List<String> quickReplies;

  _Msg({
    required this.text,
    required this.fromBot,
    this.quickReplies = const [],
  });
}
