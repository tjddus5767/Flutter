import 'package:flutter/material.dart';

void main() {
  runApp(const Watcha());
}

class Watcha extends StatefulWidget {
  const Watcha({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<Watcha> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          // SingleChildScrollView 추가
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'images/로그인 창 이미지.jpg',
                        fit: BoxFit.fill,
                        height: 1152,
                      ),
                    ],
                  ),
                  Positioned(
                    left: 20,
                    top: 20,
                    child: Image.asset(
                      'images/WATCHA_PEDIA_Logo_Main2.png',
                      width: 200,
                      height: 100,
                    ),
                  ),
                  Positioned(
                    bottom: 200,
                    width: MediaQuery.of(context).size.width,
                    child: const Center(
                      child: Text(
                        '영화 | 드라마 | 예능 | 키즈 | 스포츠 생중계',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 130,
                    right: 70,
                    child: Center(
                      child: Text(
                        '무제한 콘텐츠 플레이',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 35),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/ngv');
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/왓챠 로고.png',
                                width: 70,
                                height: 30,
                              ),
                              const Text(
                                '왓챠플레이로 로그인하기',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.white.withOpacity(0.7),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
