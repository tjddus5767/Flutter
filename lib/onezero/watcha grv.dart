import 'package:flutter/material.dart';
import 'package:toonflix/onezero/boxoffice%20grv%20class.dart';

class WatchaGrv extends StatefulWidget {
  const WatchaGrv({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return WatchaGridState();
  }
}

class WatchaGridState extends State<WatchaGrv> {
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
                '왓챠 Top 10 영화',
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
                          '왓챠 Top 10 영화',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const ImageWidget2(
                category: '왓챠 TOP 10 영화',
                imagePath: 'images/시멘틱에러.jpg',
                imagePath2: 'images/스파이더맨.jpg',
                imagePath3: 'images/아가씨.jpg',
                imagePath4: 'images/메멘토.jpg',
                imagePath5: 'images/너의 이름은.jpg',
                name: '시멘틱 에러: 더 무비',
                name2: '스파이더맨: 뉴 유니',
                name3: '아가씨',
                name4: '메멘토',
                name5: '너의 이름은',
                grade: '평균★4.2',
                grade2: '평균★4.2',
                grade3: '평균★3.8',
                grade4: '평균★4.1',
                grade5: '평균★4.0',
                rank: '1',
                rank2: '2',
                rank3: '3',
                rank4: '4',
                rank5: '5',
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
