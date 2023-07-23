import 'package:flutter/material.dart';

void main() {
  runApp(const ch13_5());
}

class ch13_5 extends StatefulWidget {
  const ch13_5({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<ch13_5> {
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
          body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              icon: const Icon(Icons.expand),
              onPressed: () {},
            ),
            expandedHeight: 200,
            floating: true,
            pinned: true,
            snap: false,
            elevation: 50,
            backgroundColor: Colors.pink,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/Ralo.png'), fit: BoxFit.fill),
              ),
            ),
            title: const Text('AppBar title'),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.add_alert),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.phone),
                onPressed: () {},
              ),
            ],
          ),
          SliverFixedExtentList(
            itemExtent: 50,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text('Hello world Item $index'),
                );
              },
            ),
          )
        ],
      )),
    );
  }
}
