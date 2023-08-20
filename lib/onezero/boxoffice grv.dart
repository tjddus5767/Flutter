import 'package:flutter/material.dart';
import 'package:toonflix/onezero/boxoffice%20grv%20class.dart';

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
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
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
