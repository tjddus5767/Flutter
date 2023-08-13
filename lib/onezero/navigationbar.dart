import 'package:flutter/material.dart';

class Ngb extends StatefulWidget {
  const Ngb({Key? key}) : super(key: key);

  @override
  _NgbState createState() => _NgbState();
}

class _NgbState extends State<Ngb> {
  int _selectedTextIndex = 0; // 선택된 텍스트의 인덱스를 저장

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 90, left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  buildSelectableText(0, '영화'),
                  const SizedBox(
                    width: 20,
                  ),
                  buildSelectableText(1, '티비'),
                  const SizedBox(
                    width: 20,
                  ),
                  buildSelectableText(2, '책'),
                  const SizedBox(
                    width: 20,
                  ),
                  buildSelectableText(3, '웹툰'),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 70,
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
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "나의 왓챠"),
              ],
              selectedItemColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSelectableText(int index, String text) {
    final isSelected = _selectedTextIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedTextIndex = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: isSelected ? Colors.black : Colors.grey, // 선택 여부에 따라 색상 조절
        ),
      ),
    );
  }
}
