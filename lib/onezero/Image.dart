// import 'package:flutter/material.dart';

// class ImageWidget extends StatelessWidget {
//   final String imagePath;
//   final double width;
//   final double height;
//   final String name;
//   final String grade;

//   const ImageWidget({
//     super.key,
//     required this.imagePath,
//     this.width = 190,
//     this.height = 300,
//     required this.name,
//     required this.grade,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         ClipRRect(
//           borderRadius: BorderRadius.circular(22),
//           child: Image.asset(
//             imagePath,
//             width: width,
//             height: height,
//           ),
//         ),
//         Text(
//           name,
//           style: const TextStyle(
//             fontSize: 18,
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//         Text(
//           grade,
//           style: const TextStyle(
//             fontSize: 15,
//           ),
//         )
//       ],
//     );
//   }
// }
