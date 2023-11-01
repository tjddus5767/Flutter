import 'package:flutter/material.dart';
import 'package:toonflix/%EC%99%93%EC%B1%A0%ED%94%BC%EB%94%94%EC%95%84%20%ED%81%B4%EB%A1%A0%EC%BD%94%EB%94%A9/boxoffice%20grv%20class.dart';
import 'package:toonflix/%EC%99%93%EC%B1%A0%ED%94%BC%EB%94%94%EC%95%84%20%ED%81%B4%EB%A1%A0%EC%BD%94%EB%94%A9/boxoffice%20grv.dart';
import 'package:toonflix/%EC%99%93%EC%B1%A0%ED%94%BC%EB%94%94%EC%95%84%20%ED%81%B4%EB%A1%A0%EC%BD%94%EB%94%A9/watcha%20grv.dart';

class NetflixGrv extends StatefulWidget {
  const NetflixGrv({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return NetflixGridState();
  }
}

class NetflixGridState extends State<NetflixGrv> {
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
                    Navigator.popUntil(context, ModalRoute.withName('/ngv'));
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                    size: 34,
                  )),
              const Text(
                '넷플릭스 영화 순위',
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
                          '넷플릭스 영화 순위',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const ImageWidget2(
                category: '넷플릭스 영화 순위',
                imagePath: 'images/하트 오브 스톤.jpg',
                imagePath2: 'images/드림.jpg',
                imagePath3: 'images/패러다잇.jpg',
                imagePath4: 'images/트리플 엑스 리턴즈.jpg',
                imagePath5: 'images/오토라는 남자.jpg',
                name: '하트 오브 스톤',
                name2: '드림',
                name3: '패러다이스',
                name4: '트리플 엑스 리턴즈',
                name5: '오토라는 남자',
                grade: '평균★2.6',
                grade2: '평균★2.5',
                grade3: '평균★2.8',
                grade4: '평균★2.7',
                grade5: '평균★3.7',
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
