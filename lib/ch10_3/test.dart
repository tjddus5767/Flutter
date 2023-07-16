import 'package:flutter/material.dart';

class MyApp6 extends StatelessWidget {
  const MyApp6({super.key});

  static const IconData access_alarms_outlined =
      IconData(0xee2b, fontFamily: 'MaterialIcons');
  onPressed() {
    print('hello flutter');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Practice',
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Colors.red,
                  Colors.blue,
                  Colors.black,
                ],
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: IntrinsicWidth(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      color: Colors.red,
                      width: 50,
                      height: 50,
                    ),
                    Container(
                      color: Colors.green,
                      width: 150,
                      height: 150,
                    ),
                    Container(
                      color: Colors.blue,
                      height: 100,
                      width: 100,
                    ),
                  ],
                ),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(minWidth: 300, maxHeight: 50),
              child: Container(
                color: Colors.amber,
                width: 150,
                height: 150,
              ),
            )
          ],
        ),
      ),
    );
  }
}
