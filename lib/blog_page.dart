import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:intl/intl.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:kltheguide/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vibration/vibration.dart';
import 'package:kltheguide/bookmarks_page.dart';

class BlogListScreen extends StatefulWidget {
  const BlogListScreen({super.key});

  @override
  State<BlogListScreen> createState() => _BlogListScreenState();
}

class _BlogListScreenState extends State<BlogListScreen> {
  List<dynamic> blogPosts = [];
  String? nextPageToken;
  int maxResults = 10;
  bool isLoading = false;
  late SharedPreferences prefs;

  DefaultCacheManager cacheManager = DefaultCacheManager();

  @override
  void initState() {
    super.initState();
    _fetchInitialBlogPosts();
    initPrefs();
  }

  @override
  void dispose() {
    cacheManager.dispose();
    super.dispose();
  }

  String formatDate(String rawDate) {
    final parsedDate = DateTime.parse(rawDate);
    final formattedDate = DateFormat('d MMMM y').format(parsedDate);
    return formattedDate;
  }

  Future<void> _fetchInitialBlogPosts() async {
    if (isLoading) return;

    setState(() {
      isLoading = true;
    });

    const apiKey = 'AIzaSyASiRcIRFUAMCXCGK-DRFKkwo6NLGNdNqc';
    const blogId = '1732826187557117921';
    final apiUrl = 'https://www.googleapis.com/blogger/v3/blogs/$blogId/posts?'
        'key=$apiKey'
        '&maxResults=$maxResults'
        '&fetchImages=true';

    final response = await cacheManager.getSingleFile(apiUrl);

    final String jsonData = await response.readAsString();
    final Map<String, dynamic> data = json.decode(jsonData);
    setState(() {
      blogPosts = data['items'];
      nextPageToken = data['nextPageToken'];
      isLoading = false;
    });
  }

  Future<void> _fetchMoreBlogPosts() async {
    if (isLoading || nextPageToken == null) return;

    setState(() {
      isLoading = true;
    });

    const apiKey = 'AIzaSyC7NA9vDhkVtk4lWisJxGW--fYXLIeM__w';
    const blogId = '1732826187557117921';
    final apiUrl = 'https://www.googleapis.com/blogger/v3/blogs/$blogId/posts?'
        'key=$apiKey'
        '&maxResults=$maxResults'
        '&pageToken=$nextPageToken'
        '&fetchImages=true';

    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      setState(() {
        blogPosts.addAll(data['items']);
        nextPageToken = data['nextPageToken'];
        isLoading = false;
      });
    }
  }

  void showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Row(
        children: [
          Icon(
            message.contains('added') ? Icons.bookmark : Icons.bookmark_border,
            color: Colors.white,
          ),
          const SizedBox(width: 12),
          Text(message),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 0, 71, 133),
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.all(16),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  Future<void> initPrefs() async {
    prefs = await SharedPreferences.getInstance();
  }

  bool isBookmarked(dynamic post) {
    final postId = post['id'].toString();
    return prefs.getBool(postId) ?? false;
  }

  void toggleBookmark(dynamic post) {
    final postId = post['id'].toString();
    final isBookmarked = prefs.getBool(postId) ?? false;
    Vibration.vibrate(duration: 100);
    setState(() {
      if (isBookmarked) {
        removeBookmark(post);
        prefs.setBool(postId, false);
        showSnackBar(context, 'Bookmark removed');
      } else {
        addBookmark(post);
        prefs.setBool(postId, true);
        showSnackBar(context, 'Bookmark added');
      }
    });
  }

  void addBookmark(dynamic post) async {
    final postId = post['id']?.toString();
    if (postId == null) return;

    final bookmarkStrings = prefs.getStringList('bookmarks') ?? <String>[];
    // Parse once and check for existing id
    final parsed = bookmarkStrings.map((s) => json.decode(s)).toList();
    final already = parsed.any((p) => (p['id']?.toString() ?? '') == postId);
    if (already) return;

    bookmarkStrings.add(json.encode(post));
    await prefs.setStringList('bookmarks', bookmarkStrings);
  }

  void removeBookmark(dynamic post) async {
    List<String>? bookmarkStrings = prefs.getStringList('bookmarks') ?? [];
    String bookmarkJson = json.encode(post);

    if (bookmarkStrings.contains(bookmarkJson)) {
      bookmarkStrings.remove(bookmarkJson);
      await prefs.setStringList('bookmarks', bookmarkStrings);
    }
  }

  void _navigateToArticlePage(dynamic article) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ArticlePage(article: article),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      floatingActionButton: FloatingActionButton.small(
        tooltip: 'Saved Blogs',
        backgroundColor: const Color.fromARGB(255, 0, 71, 133),
        child: const Icon(Icons.bookmarks_outlined, color: Colors.white),
        onPressed: () async {
          // Open Saved (BookmarkPage)
          await Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => const BookmarkPage()),
          );
          // Refresh UI on return (updates bookmark icons/count, etc.)
          if (mounted) setState(() {});
        },
      ),
      body: blogPosts.isEmpty && isLoading
          ? Center(
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
                    'Loading articles...',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: blogPosts.length + 1,
              itemBuilder: (context, index) {
                if (index == blogPosts.length) {
                  if (isLoading) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32),
                      child: Center(
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            const Color.fromARGB(255, 0, 71, 133),
                          ),
                        ),
                      ),
                    );
                  } else if (nextPageToken != null) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Center(
                        child: Material(
                          elevation: 2,
                          borderRadius: BorderRadius.circular(30),
                          child: InkWell(
                            onTap: _fetchMoreBlogPosts,
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 12,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text(
                                    'Load More',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromARGB(255, 0, 71, 133),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Icon(
                                    Icons.expand_circle_down_outlined,
                                    color:
                                        const Color.fromARGB(255, 0, 71, 133),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                }

                final post = blogPosts[index];
                final imageUrl = post['images'][0]['url'];
                final formattedPublishedDate = formatDate(post['published']);
                final bookmarked = isBookmarked(post);

                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: GestureDetector(
                    onTap: () => _navigateToArticlePage(post),
                    onLongPress: () => toggleBookmark(post),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 20,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                child: CachedNetworkImage(
                                  imageUrl: imageUrl,
                                  fit: BoxFit.cover,
                                  height: 220,
                                  width: double.infinity,
                                  placeholder: (context, url) => Container(
                                    height: 220,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.grey[200]!,
                                          Colors.grey[100]!,
                                        ],
                                      ),
                                    ),
                                    child: Center(
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          const Color.fromARGB(255, 0, 71, 133),
                                        ),
                                      ),
                                    ),
                                  ),
                                  errorWidget: (context, url, error) =>
                                      Container(
                                    height: 220,
                                    color: Colors.grey[200],
                                    child: const Icon(
                                      Icons.broken_image_outlined,
                                      size: 48,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 12,
                                right: 12,
                                child: Material(
                                  color: Colors.white.withOpacity(0.95),
                                  borderRadius: BorderRadius.circular(25),
                                  elevation: 4,
                                  child: InkWell(
                                    onTap: () => toggleBookmark(post),
                                    borderRadius: BorderRadius.circular(25),
                                    child: Container(
                                      padding: const EdgeInsets.all(10),
                                      child: Icon(
                                        bookmarked
                                            ? Icons.bookmark
                                            : Icons.bookmark_border,
                                        color: bookmarked
                                            ? const Color.fromARGB(
                                                255, 0, 71, 133)
                                            : Colors.grey[600],
                                        size: 22,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  post['title'],
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 0, 71, 133),
                                    height: 1.3,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 12),
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 6,
                                      ),
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                                255, 0, 71, 133)
                                            .withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.calendar_today_outlined,
                                            size: 14,
                                            color: const Color.fromARGB(
                                                255, 0, 71, 133),
                                          ),
                                          const SizedBox(width: 6),
                                          Text(
                                            formattedPublishedDate,
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: const Color.fromARGB(
                                                  255, 0, 71, 133),
                                              fontWeight: FontWeight.w500,
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
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}

class ArticlePage extends StatefulWidget {
  final dynamic article;

  const ArticlePage({super.key, required this.article});

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  double deviceWidth = 0.0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        deviceWidth = MediaQuery.of(context).size.width;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    String plainText = widget.article['content'];

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          "Blog Details",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 71, 133),
        elevation: 0,
        actions: const <Widget>[
          AppBarMore(),
        ],
      ),
      body: InAppWebView(
        onWebViewCreated: (controller) {},
        onLoadStop: (controller, url) async {},
        initialData: InAppWebViewInitialData(
          data: '''
      <!DOCTYPE html>
      <html>
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <style>
            img {
              width: 100%;
              height: auto;
              border-radius: 12px;
              margin: 16px 0;
            }
            body {
              word-wrap: break-word;
              padding: 20px;
              font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
              line-height: 1.6;
              color: #333;
            }
            p {
              margin-bottom: 16px;
            }
            h1, h2, h3, h4, h5, h6 {
              color: #004785;
              margin-top: 24px;
              margin-bottom: 12px;
            }
            a {
              color: #004785;
            }
          </style>
        </head>
        <body>
          $plainText
        </body>
      </html>
        ''',
          mimeType: 'text/html',
        ),
      ),
    );
  }
}
