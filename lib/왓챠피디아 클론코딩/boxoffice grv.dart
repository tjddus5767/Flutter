import 'package:flutter/material.dart';
import 'package:toonflix/%EC%99%93%EC%B1%A0%ED%94%BC%EB%94%94%EC%95%84%20%ED%81%B4%EB%A1%A0%EC%BD%94%EB%94%A9/Netflix%20grv.dart';
import 'package:toonflix/%EC%99%93%EC%B1%A0%ED%94%BC%EB%94%94%EC%95%84%20%ED%81%B4%EB%A1%A0%EC%BD%94%EB%94%A9/boxoffice%20grv%20class.dart';
import 'package:toonflix/%EC%99%93%EC%B1%A0%ED%94%BC%EB%94%94%EC%95%84%20%ED%81%B4%EB%A1%A0%EC%BD%94%EB%94%A9/watcha%20grv.dart';

class Grv extends StatefulWidget {
  const Grv({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return GridState();
  }
}

class GridState extends State<Grv> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                    size: 34,
                  )),
              const Text(
                '박스오피스 순위',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 45,
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(
                            10,
                          ),
                        ),
                      ),
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 330,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.popUntil(context,
                                            ModalRoute.withName('/ngv'));
                                      },
                                      child: const Text(
                                        '취소',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      '정렬 기준',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 60,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const Grv()));
                                  },
                                  child: const Text(
                                    '박스오피스 순위',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                Divider(
                                    color: Colors.grey.withOpacity(0.5),
                                    thickness: 0.5),
                                const SizedBox(
                                  height: 7,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const WatchaGrv()));
                                  },
                                  child: const Text(
                                    '왓챠 Top10 영화',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                Divider(
                                    color: Colors.grey.withOpacity(0.5),
                                    thickness: 0.5),
                                const SizedBox(
                                  height: 7,
                                ),
                                const Text(
                                  '왓챠 실시간 급상승 Top 30',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                Divider(
                                    color: Colors.grey.withOpacity(0.5),
                                    thickness: 0.5),
                                const SizedBox(
                                  height: 7,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const NetflixGrv()));
                                  },
                                  child: const Text(
                                    '넷플릭스 영화 순위',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                  ),
                  child: Container(
                    height: 60,
                    color: const Color(0xFFF2F2F2), // 배경색 설정

                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/역삼각형.png',
                          color: Colors.grey,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          '박스오피스 순위',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const ImageWidget2(
                category: '박스오피스 순위',
                imagePath: 'images/오펜하이머.jpg',
                imagePath2: 'images/콘크.jpg',
                imagePath3: 'images/달짝지근.jpg',
                imagePath4: 'images/밀수.jpg',
                imagePath5: 'images/엘리멘탈.jpg',
                name: '오펜하이머',
                name2: '콘크리트 유토피아',
                name3: '달짝지근해: 7510',
                name4: '밀수',
                name5: '엘리멘탈',
                grade: '평균★4.1',
                grade2: '평균★3.6',
                grade3: '평균★3.0',
                grade4: '평균★3.3',
                grade5: '평균★3.9',
                rank2: '2',
                rank3: '3',
                rank4: '4',
                rank5: '5',
                rank: '1',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
