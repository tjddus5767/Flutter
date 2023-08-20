import 'package:flutter/material.dart';
import 'package:toonflix/onezero/boxoffice%20grv%20class.dart';

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
                    Navigator.pop(context);
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
                            child: GestureDetector(
                              onTap: () {
                                String pressedText = '박스오피스 순위';
                                String pressedText2 = '왓챠 Top10 영화';
                                String pressedText3 = '넷플릭스 영화 순위';
                                String cancel = '취소';
                                if (pressedText == '박스오피스 순위') {
                                  Navigator.pushReplacementNamed(
                                      context, '/GridView');
                                } else if (pressedText2 == '왓챠 Top10 영화') {
                                  Navigator.pushReplacementNamed(
                                      context, '/watcha grv');
                                } else if (pressedText3 == '넷플릭스 영화 순위') {
                                  Navigator.pushReplacementNamed(
                                      context, '/neflix grv');
                                } else if (cancel == "취소") {
                                  Navigator.pop(context);
                                }
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '취소',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        '정렬 기준',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 60,
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text(
                                    '박스오피스 순위',
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
                                  const Text(
                                    '왓챠 Top10 영화',
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
                                  const Text(
                                    '넷플릭스 영화 순위',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
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

                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.rectangle,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
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
        bottomNavigationBar: SizedBox(
          height: 100,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: (int index) {
              switch (index) {
                case 0:
                  break;
                case 1:
                  break;
                case 2:
                  break;
                case 3:
                  break;
                case 4:
                  break;
                default:
              }
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    size: 40,
                  ),
                  label: '홈'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    size: 40,
                  ),
                  label: '검색'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.star,
                    size: 40,
                  ),
                  label: "평가"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.chat,
                    size: 40,
                  ),
                  label: "소식"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    size: 40,
                  ),
                  label: "나의 왓챠"),
            ],
            selectedItemColor: Colors.black,
          ),
        ),
      ),
    );
  }
}
