import 'package:flutter/material.dart';
import 'package:toonflix/onezero/navigationbar.dart';
import 'package:toonflix/onezero/watcha.dart';
import 'Intro.dart';
import 'watcha grv.dart';
import 'package:toonflix/onezero/boxoffice%20grv.dart';
import 'Neflix grv.dart';

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
        '/neflix grv': (context) => const NetflixGrv(),
      },
    );
  }
}
