import 'package:flutter/material.dart';
import 'package:toonflix/chat_app/join.dart';
import 'Intro_screen.dart';
import 'main_screen.dart';
import 'login.dart';

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
