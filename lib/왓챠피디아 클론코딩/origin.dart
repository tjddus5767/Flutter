import 'package:flutter/material.dart';
import 'package:toonflix/%EC%99%93%EC%B1%A0%ED%94%BC%EB%94%94%EC%95%84%20%ED%81%B4%EB%A1%A0%EC%BD%94%EB%94%A9/navigationbar.dart';
import 'package:toonflix/%EC%99%93%EC%B1%A0%ED%94%BC%EB%94%94%EC%95%84%20%ED%81%B4%EB%A1%A0%EC%BD%94%EB%94%A9/watcha.dart';
import 'Intro.dart';
import 'watcha grv.dart';
import 'package:toonflix/%EC%99%93%EC%B1%A0%ED%94%BC%EB%94%94%EC%95%84%20%ED%81%B4%EB%A1%A0%EC%BD%94%EB%94%A9/boxoffice%20grv.dart';
import 'Netflix grv.dart';
import 'bottomnavigationbar.dart';
import 'practice.dart';

void main() {
  runApp(const origin());
}

class origin extends StatelessWidget {
  const origin({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/Intro',
      routes: {
        '/Intro': (context) => const SplashScreen(),
        '/watcha': (context) => const Watcha(),
        '/ngv': (context) => const Ngb(),
        '/GridView': (context) => const Grv(),
        '/watcha grv': (context) => const WatchaGrv(),
        '/netflix grv': (context) => const NetflixGrv(),
        '/bottomnavigationbar': (context) => const BottomNavigationBarApp(),
        '/practice': (context) => const Practice(),
      },
    );
  }
}
