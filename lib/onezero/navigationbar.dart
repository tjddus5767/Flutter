import 'package:flutter/material.dart';
import 'package:toonflix/onezero/navigationbar class.dart';

void main() {
  runApp(const Ngb());
}

class Ngb extends StatefulWidget {
  const Ngb({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return NgbState();
  }
}

class NgbState extends State<Ngb> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: Align(
              child: Row(
                children: [
                  TabBar(
                    isScrollable: true,
                    indicatorColor: Colors.white,
                    controller: controller,
                    labelStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    labelColor: Colors.black,
                    tabs: const <Widget>[
                      Tab(
                        child: Text(
                          '영화',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          '티비',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          '책',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          '웹툰',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                    labelPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: controller,
          children: <Widget>[
            const SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ImageWidget(
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
                  ),
                  ImageWidget(
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
                  ),
                  ImageWidget(
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
                  )
                ],
              ),
            ),
            const SingleChildScrollView(
              child: Column(
                children: [
                  ImageWidget(
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
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.red,
              child: const Center(
                child: Text('책 컨텐츠'),
              ),
            ),
            Container(
              color: Colors.orange,
              child: const Center(
                child: Text('웹툰 컨텐츠'),
              ),
            ),
          ],
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
