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
    return MaterialApp(
      initialRoute: '/one',
      routes: {
        '/one': (context) => const OneScreen(),
        '/two': (context) => const SecondScreen(),
        '/three': (context) => const ThirdScreen(),
        //'/four': (context) => const FourthScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/three') {
          return MaterialPageRoute(
            builder: (context) => const ThirdScreen(),
            settings: settings,
          );
        } else if (settings.name == '/four') {
          return MaterialPageRoute(
              builder: (context) => const FourthScreen(), settings: settings);
        }
        return null;
      },
    );
  }
}
