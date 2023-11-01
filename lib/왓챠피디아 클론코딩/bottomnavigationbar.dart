import 'package:flutter/material.dart';
import 'package:toonflix/%EC%99%93%EC%B1%A0%ED%94%BC%EB%94%94%EC%95%84%20%ED%81%B4%EB%A1%A0%EC%BD%94%EB%94%A9/navigationbar.dart';
import 'news.dart';
import 'Intro.dart';
import 'Information.dart';

void main() {
  runApp(const BottomNavigationBarApp());
}

class BottomNavigationBarApp extends StatefulWidget {
  const BottomNavigationBarApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return BottomNavigationBarAppState();
  }
}

class BottomNavigationBarAppState extends State<BottomNavigationBarApp> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _buildPage(_selectedIndex), // 선택된 인덱스에 따른 페이지 생성
        bottomNavigationBar: SizedBox(
          height: 100,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex, // 선택된 인덱스 설정
            onTap: (int index) {
              setState(() {
                _selectedIndex = index; // 선택된 인덱스 업데이트
              });
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
            unselectedItemColor: Colors.grey, // 선택되지 않은 아이템의 아이콘 색상
          ),
        ),
      ),
    );
  }

  // 선택된 인덱스에 따라 다른 페이지를 생성하는 함수
  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return const Ngb();
      case 1:
        return Container(color: Colors.black);
      case 2:
        return Container(color: Colors.blue);
      case 3:
        return const News();
      case 4:
        return const Information();
      default:
        return Container(color: Colors.red);
    }
  }
}
