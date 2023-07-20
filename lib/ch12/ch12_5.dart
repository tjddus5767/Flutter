import 'package:flutter/material.dart';

void main() {
  runApp(const ch12_5());
}

class ch12_5 extends StatefulWidget {
  const ch12_5({super.key});
  @override
  TextState createState() => TextState();
}

class TextState extends State<ch12_5> with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('test'),
          bottom: TabBar(
            controller: controller,
            tabs: const <Widget>[
              Tab(text: 'One'),
              Tab(text: 'Two'),
              Tab(text: 'Three')
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: const <Widget>[
            Center(
              child: Text(
                'one screen',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                'second screen',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                'third screen',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
