// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'dart:convert';
// import 'blog_page.dart';
//
// class BookmarkPage extends StatefulWidget {
//   @override
//   _BookmarkPageState createState() => _BookmarkPageState();
// }
//
// class _BookmarkPageState extends State<BookmarkPage> {
//   late SharedPreferences prefs;
//   List<dynamic> bookmarks = [];
//
//   @override
//   void initState() {
//     super.initState();
//     loadBookmarks();
//   }
//
//   Future<void> loadBookmarks() async {
//     final SharedPreferences prefs = await SharedPreferences.getInstance();
//     final List<String>? bookmarkStrings = prefs.getStringList('bookmarks');
//
//     if (bookmarkStrings != null) {
//       bookmarks =
//           bookmarkStrings.map((bookmark) => json.decode(bookmark)).toList();
//       setState(() {
//         // Update the state to trigger a rebuild with the loaded bookmarks
//       });
//     }
//   }
//
//   void _navigateToArticlePage(dynamic article) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => ArticlePage(article: article),
//       ),
//     );
//   }
//
//   String formatDate(String rawDate) {
//     final parsedDate = DateTime.parse(rawDate);
//     final formattedDate = DateFormat('d MMMM y').format(parsedDate);
//     return formattedDate;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: bookmarks.length,
//         itemBuilder: (context, index) {
//           final post = bookmarks[index];
//           final imageUrl = post['images'][0]['url'];
//           final formattedPublishedDate = formatDate(post['published']);
//
//           return GestureDetector(
//             onTap: () => _navigateToArticlePage(post),
//             child: Card(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   Image.network(
//                     imageUrl,
//                     fit: BoxFit.cover,
//                     height: 200,
//
//                   ),
//                   ListTile(
//                     title: Text(post['title']),
//                     subtitle: Text(formattedPublishedDate),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
