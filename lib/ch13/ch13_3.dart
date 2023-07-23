import 'package:flutter/material.dart';

void main() {
  runApp(const ch13_3());
}

class ch13_3 extends StatelessWidget {
  const ch13_3({super.key});
  List<Widget> getWidgets() {
    List<Widget> widgets = [];
    for (var i = 0; i < 100; i++) {
      widgets.add(ListTile(
        title: Text('Hello world Item $i'),
      ));
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: getWidgets(),
            ),
          ),
        ),
      ),
    ); // TODO: implement build
  }
}
