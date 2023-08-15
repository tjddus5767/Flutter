import 'package:flutter/material.dart';
import 'package:toonflix/onezero/screen.dart';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottom: TabBar(
          controller: controller,
          labelStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          labelColor: Colors.black,
          tabs: const <Widget>[
            Tab(
              text: '영화',
            ),
            Tab(text: 'TV'),
            Tab(text: '책'),
            Tab(text: '웹툰'),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '박스오피스 순위',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ImageWidget(
                            imagePath: 'images/오펜하이머.jpg',
                            name: '오펜하이머',
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ImageWidget(
                            imagePath: 'images/콘크.jpg',
                            name: '콘크리트 유토피아',
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ImageWidget(
                            imagePath: 'images/달짝지근.jpg',
                            name: '달짝지근해: 7510',
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ImageWidget(
                            imagePath: 'images/밀수.jpg',
                            name: '밀수',
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ImageWidget(
                            imagePath: 'images/엘리멘탈.jpg',
                            name: '엘리멘탈',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.green,
            child: const Center(
              child: Text('TV 컨텐츠'),
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
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: '검색'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: "평가"),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "소식"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "나의 왓챠"),
          ],
          selectedItemColor: Colors.black,
        ),
      ),
    );
  }
}
