import 'dart:async';

import 'package:flutter/material.dart';
import 'package:toonflix/%EC%99%93%EC%B1%A0%ED%94%BC%EB%94%94%EC%95%84%20%ED%81%B4%EB%A1%A0%EC%BD%94%EB%94%A9/watcha.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      const Duration(seconds: 2), // 1초 동안 인트로 화면 표시
      () => Navigator.pushReplacementNamed(context,
          '/watcha'), // Watcha 페이지로 이동 (intro 화면이기 때문에 pushreplacementnamed 사용)
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
