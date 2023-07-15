import 'package:flutter/material.dart';

class MyApp4 extends StatelessWidget {
  const MyApp4({super.key});

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
        body: Stack(
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.blue,
              width: 300,
              height: 300,
            ),
            Positioned(
              top: 30,
              right: 40,
              child: Container(
                color: Colors.pink,
                height: 150,
                width: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
