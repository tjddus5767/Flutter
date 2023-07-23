import 'package:flutter/material.dart';
import 'package:toonflix/ch14/fourth.dart';
import 'package:toonflix/ch14/secondscreen.dart';
import 'package:toonflix/ch14/third.dart';

import 'onescreen.dart';

void main() {
  runApp(const ch14_1());
}

class ch14_1 extends StatelessWidget {
  const ch14_1({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      initialRoute: '/one',
      routes: {
        '/one': (context) => const OneScreen(),
        '/two': (context) => const SecondScreen(),
        '/three': (context) => const ThirdScreen(),
        '/four': (context) => const FourthScreen(),
      },
    );
  }
}
