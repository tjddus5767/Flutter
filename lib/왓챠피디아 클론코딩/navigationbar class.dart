import 'package:flutter/material.dart';
import 'package:toonflix/%EC%99%93%EC%B1%A0%ED%94%BC%EB%94%94%EC%95%84%20%ED%81%B4%EB%A1%A0%EC%BD%94%EB%94%A9/Netflix%20grv.dart';
import 'package:toonflix/%EC%99%93%EC%B1%A0%ED%94%BC%EB%94%94%EC%95%84%20%ED%81%B4%EB%A1%A0%EC%BD%94%EB%94%A9/boxoffice%20grv.dart';
import 'package:toonflix/%EC%99%93%EC%B1%A0%ED%94%BC%EB%94%94%EC%95%84%20%ED%81%B4%EB%A1%A0%EC%BD%94%EB%94%A9/watcha%20grv.dart';

class ImageWidget extends StatelessWidget {
  final String category;
  final String imagePath;
  final String imagePath2;
  final String imagePath3;
  final String imagePath4;
  final String imagePath5;
  final double width;
  final double height;
  final String name;
  final String name2;
  final String name3;
  final String name4;
  final String name5;
  final String grade;
  final String grade2;
  final String grade3;
  final String grade4;
  final String grade5;

  const ImageWidget({
    super.key,
    required this.category,
    required this.imagePath,
    required this.imagePath2,
    required this.imagePath3,
    required this.imagePath4,
    required this.imagePath5,
    this.width = 190,
    this.height = 300,
    required this.name,
    required this.name2,
    required this.name3,
    required this.name4,
    required this.name5,
    required this.grade,
    required this.grade2,
    required this.grade3,
    required this.grade4,
    required this.grade5,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        top: 25,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            behavior: HitTestBehavior.translucent, //공백 tap 가능
            onTap: () {
              if (category == '왓챠 TOP 10 영화') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const WatchaGrv()));
              } else if (category == '박스오피스 순위') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Grv()));
              } else if (category == '넷플릭스 영화 순위') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NetflixGrv()));
              }
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  category,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 36,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(22),
                      child: Image.asset(
                        imagePath,
                        width: width,
                        height: height,
                      ),
                    ),
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      grade,
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 13,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(22),
                      child: Image.asset(
                        imagePath2,
                        width: width,
                        height: height,
                      ),
                    ),
                    Text(
                      name2,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      grade2,
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 13,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(22),
                      child: Image.asset(
                        imagePath3,
                        width: width,
                        height: height,
                      ),
                    ),
                    Text(
                      name3,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      grade3,
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 13,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(22),
                      child: Image.asset(
                        imagePath4,
                        width: width,
                        height: height,
                      ),
                    ),
                    Text(
                      name4,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      grade4,
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 13,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(22),
                      child: Image.asset(
                        imagePath5,
                        width: width,
                        height: height,
                      ),
                    ),
                    Text(
                      name5,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      grade5,
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
