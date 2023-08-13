import 'package:flutter/material.dart';
import 'package:toonflix/onezero/navigationbar.dart';
import 'package:toonflix/onezero/watcha.dart';

void main() {
  runApp(const origin());
}

class origin extends StatelessWidget {
  const origin({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/watcha',
      routes: {
        '/watcha': (context) => const Watcha(),
        '/ngv': (context) => const Ngb(),
      },
    );
  }
}
