import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/material.dart';
part 'ch15_1.g.dart';

void main() {
  runApp(const ch15_1());
}

class ch15_1 extends StatefulWidget {
  const ch15_1({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

@JsonSerializable() //자동 변환
class Location {
  String latitude;
  String longitude;
  Location(this.latitude, this.longitude);
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Todo {
  //모델 클래스
  @JsonKey(name: "id")
  int todoId;
  String title;
  bool completed;
  Location location;
  Todo(this.todoId, this.title, this.completed, this.location);
  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
  Map<String, dynamic> toJson() => _$TodoToJson(this);
}

class MyAppState extends State<ch15_1> {
  String jsonStr =
      '{"id" : 1, "title": "HELLO", "completed": false,"location" : {"latitude":"37.5","longitude":"127.1"}}';
  Todo? todo;
  String result = '';

  onPressDecode() {
    Map<String, dynamic> map = jsonDecode(jsonStr);
    todo = Todo.fromJson(map);
    print(todo?.toJson());
    setState(() {
      result = "decode : ${todo?.toJson()}";
    });
  }

  onPressEncode() {
    setState(() {
      result = "encode: ${jsonEncode(todo)}";
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Decode Encode Test',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              result,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 100,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: onPressEncode,
                child: const Text('Enocde'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 100,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: onPressDecode,
                child: const Text('Deocde'),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
