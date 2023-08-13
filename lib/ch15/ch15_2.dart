import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; //HTTP 통신을 하는데 필요한 여러가지 함수 제공

void main() {
  runApp(const ch15_2());
}

class ch15_2 extends StatefulWidget {
  const ch15_2({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<ch15_2> {
  String result = '';
  onPressGet() async {
    Map<String, String> headers = {
      "content-type": "application/json",
      "accept": "application/json",
    };
    http.Response response = await http.get(
        //get함수로 서버에 요청을 보내면 http.Response 타입으로 전달된다.
        Uri.parse('https://jsonplaceholder.typicode.com/posts/1'),
        headers: headers);
    if (response.statusCode == 200) {
      //response 객체의 statusCode 속성으로 응답 상태 코드 확인 가능
      setState(() {
        result = response.body; //서버에서 전달한 데이터는 response의 body로 확인
      });
    } else {
      print('error...');
    }
    print("responsebody: ${response.body}");
  }

  onPressPost() async {
    try {
      http.Response response = await http.post(
          Uri.parse('https://jsonplaceholder.typicode.com/posts'),
          body: {'title': 'hello', 'body': 'world', 'userId': '1'});
      print('statusCode : ${response.statusCode}');
      if (response.statusCode == 200 || response.statusCode == 201) {
        setState(() {
          result = response.body;
        });
      } else {
        print('error...');
      }
    } catch (e) {
      print('error...');
    }
  }

  onPressClient() async {
    var client = http.Client();
    try {
      http.Response response = await client.post(
          Uri.parse('https://jsonplaceholder.typicode.com/posts'),
          body: {'title': 'hello', 'body': 'world', 'iserId': '1'});
      if (response.statusCode == 200 || response.statusCode == 201) {
        response = await client
            .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
        setState(() {
          result = response.body;
        });
      } else {
        print('error...');
      }
    } finally {
      client.close();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('http 패키지 이용하기'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(result),
              ElevatedButton(
                onPressed: onPressGet,
                child: const Text('Get'),
              ),
              ElevatedButton(
                onPressed: onPressPost,
                child: const Text('post'),
              ),
              ElevatedButton(
                onPressed: onPressClient,
                child: const Text('client'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
