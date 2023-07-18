import 'package:flutter/material.dart';

class MyApp5 extends StatelessWidget {
  const MyApp5({super.key});

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
          Align(
            alignment: const FractionalOffset(1, 0),
            child: Container(
              color: Colors.blue,
              width: 100,
              height: 100,
            ),
          ),
          Align(
            alignment: const Alignment(0, 0),
            child: Container(
              color: Colors.yellow,
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            left: 50,
            top: 50,
            child: Container(
              color: Colors.pink,
              width: 100,
              height: 100,
            ),
          )
        ],
      ),
    ));
  }
}
