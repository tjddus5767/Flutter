import 'package:flutter/material.dart';

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  static const IconData access_alarms_outlined =
      IconData(0xee2b, fontFamily: 'MaterialIcons');
  onPressed() {
    print('hello flutter');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Practice',
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Colors.red,
                  Colors.blue,
                  Colors.black,
                ],
              ),
            ),
          ),
        ),
        /* body: Stack(
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
              width: 300,
              height: 300,
            ),
            Container(
              color: Colors.yellow,
              width: 150,
              height: 150,
            ),
          ],
        ), */
        body: IndexedStack(
          //인덱스 번호 설정
          index: 1,
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
              width: 300,
              height: 300,
            ),
            Container(
              color: Colors.yellow,
              width: 150,
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
