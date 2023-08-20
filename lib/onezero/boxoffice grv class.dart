import 'package:flutter/material.dart';

class ImageWidget2 extends StatelessWidget {
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
  final String rank;
  final String rank2;
  final String rank3;
  final String rank4;
  final String rank5;
  const ImageWidget2({
    super.key,
    required this.category,
    required this.imagePath,
    required this.imagePath2,
    required this.imagePath3,
    required this.imagePath4,
    required this.imagePath5,
    this.width = 130,
    this.height = 240,
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
    required this.rank,
    required this.rank2,
    required this.rank3,
    required this.rank4,
    required this.rank5,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Column(
              children: [
                Row(
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
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 40,
                        left: 15,
                      ),
                      child: Text(
                        rank,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 36),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                    ),
                  ],
                ),
                Divider(color: Colors.grey.withOpacity(0.7), thickness: 0.8),
                Row(
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
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 40,
                        left: 15,
                      ),
                      child: Text(
                        rank2,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 36),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                    ),
                  ],
                ),
                Divider(color: Colors.grey.withOpacity(0.7), thickness: 0.8),
                Row(
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
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 40,
                        left: 15,
                      ),
                      child: Text(
                        rank3,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 36),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                    ),
                  ],
                ),
                Divider(color: Colors.grey.withOpacity(0.7), thickness: 0.8),
                Row(
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
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 40,
                        left: 15,
                      ),
                      child: Text(
                        rank4,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 36),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                    ),
                  ],
                ),
                Divider(color: Colors.grey.withOpacity(0.7), thickness: 0.8),
                Row(
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
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 40,
                        left: 15,
                      ),
                      child: Text(
                        rank5,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 36),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                      ),
                    ),
                  ],
                ),
                Divider(color: Colors.grey.withOpacity(0.7), thickness: 0.8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
