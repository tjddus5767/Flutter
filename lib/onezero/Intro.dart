import 'dart:async';

import 'package:flutter/material.dart';
import 'package:toonflix/onezero/watcha.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      routes: {
        '/watcha': (context) => const Watcha(), // Watcha 페이지로 이동하는 route 설정
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3), // 2초 동안 인트로 화면 표시
      () =>
          Navigator.pushReplacementNamed(context, '/watcha'), // Watcha 페이지로 이동
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('images/인트로.png'), // 인트로 이미지 표시
      ),
    );
  }
}
