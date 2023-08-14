import 'dart:io';
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ch15_3());
}

class ch15_3 extends StatefulWidget {
  const ch15_3({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<ch15_3> {
  String result = '';
  dioTest() async {
    try {
      var dio = Dio(
        BaseOptions(
          baseUrl: "https://reqres.in/api/", //요청할 기본 주소
          connectTimeout: 5000, // 서버로부터 응답받는 시간
          receiveTimeout: 5000, // 파딜 다운로드 등과 같이 연결 지속시간
          headers: {
            HttpHeaders.contentTypeHeader: 'application/json',
            HttpHeaders.acceptHeader: 'application/json'
          },
        ),
      );
      List<Response<dynamic>> response = await Future.wait([
        dio.get('https://reqres.in/api/users?page=1'),
        dio.get('https://reqres.in/api/users?page=2')
      ]);
      for (var element in response) {
        if (element.statusCode == 200) {
          setState(() {
            result = element.data.toString();
          });
        }
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('test'),
        ),
        body: Center(
            child: Column(
          children: [
            Text(result),
            ElevatedButton(
                onPressed: dioTest, child: const Text('Get Server Data'))
          ],
        )),
      ),
    );
  }
}
