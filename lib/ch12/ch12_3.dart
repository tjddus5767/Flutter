import 'package:flutter/material.dart';

void main() {
  runApp(ch12_3());
}

class ch12_3 extends StatelessWidget {
  PageController ax = PageController(
    initialPage: 0,
    viewportFraction: 0.8,
  );

  ch12_3({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('practice'),
        ),
        body: PageView(
          controller: ax,
          children: [
            Container(
              color: Colors.red,
              margin: const EdgeInsets.all(20),
              child: const Center(
                child: Text(
                  'First Page',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              color: Colors.yellow,
              margin: const EdgeInsets.all(20),
              child: const Center(
                child: Text(
                  'Second Page',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              color: Colors.green,
              margin: const EdgeInsets.all(20),
              child: const Center(
                child: Text(
                  'Third Page',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
