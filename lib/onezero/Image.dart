// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:html/parser.dart' as parser;

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Box Office Ranking'),
//         ),
//         body: const BoxOfficeScreen(),
//       ),
//     );
//   }
// }

// class BoxOfficeScreen extends StatefulWidget {
//   const BoxOfficeScreen({Key? key}) : super(key: key);

//   @override
//   _BoxOfficeScreenState createState() => _BoxOfficeScreenState();
// }

// class _BoxOfficeScreenState extends State<BoxOfficeScreen> {
//   Future<List<String>> fetchBoxOfficeRanking() async {
//     final response =
//         await http.get(Uri.parse('https://pedia.watcha.com/ko-KR/(index)'));
//     if (response.statusCode == 200) {
//       final document = parser.parse(response.body);

//       final rankingElements =
//           document.querySelectorAll('.css-xe2hu1'); // 예시 CSS 선택자
//       final List<String> rankingTexts =
//           rankingElements.map((element) => element.text).toList();

//       return rankingTexts;
//     } else {
//       throw Exception('Failed to load box office ranking');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<List<String>>(
//       future: fetchBoxOfficeRanking(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const CircularProgressIndicator();
//         } else if (snapshot.hasError) {
//           return Text('Error: ${snapshot.error}');
//         } else {
//           final ranking = snapshot.data ?? [];
//           return ListView.builder(
//             itemCount: ranking.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 title: Text(ranking[index]),
//               );
//             },
//           );
//         }
//       },
//     );
//   }
// }
