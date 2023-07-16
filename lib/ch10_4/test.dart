import 'package:flutter/material.dart';

class MyApp7 extends StatelessWidget {
  const MyApp7({super.key});

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
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'images/Insta1.png',
                  width: 50,
                  height: 50,
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'images/insta2.png',
                  width: 50,
                  height: 50,
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'images/insta3.png',
                  width: 50,
                  height: 50,
                ),
                const Spacer(),
                Image.asset(
                  'images/insta4.png',
                  width: 50,
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
