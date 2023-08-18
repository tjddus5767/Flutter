import 'package:flutter/material.dart';
import 'package:toonflix/onezero/navigationbar class two.dart';

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
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                    size: 45,
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
        body: const ImageWidget2(
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
