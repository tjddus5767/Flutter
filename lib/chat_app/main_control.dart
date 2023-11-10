//이 파일에서 처음 앱이 시작되며 각 routes를 설정
import 'package:flutter/material.dart';
import 'package:toonflix/chat_app/join.dart';
import 'Intro_screen.dart';
import 'login.dart';
import 'bottom_navigationbar.dart';

//d
void main() {
  runApp(const main_control());
}

class main_control extends StatelessWidget {
  const main_control({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.black, background: Colors.black),
      ),
      home: const Scaffold(
        backgroundColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/Intro',
      routes: {
        '/Intro': (context) => const SplashScreen(),
        '/login': (context) => const login(),
        '/main_screen': (context) => const Main_Screen(),
        '/join': (context) => const join(),
      },
    );
  }
}
