import 'package:flutter/material.dart';

void main() {
  runApp(const Practice());
}

class Practice extends StatefulWidget {
  const Practice({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PracticeState();
  }
}

class PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
        title: const Text('sdfsdf'),
      )),
    );
  }
}
