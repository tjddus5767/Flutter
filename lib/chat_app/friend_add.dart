import 'package:flutter/material.dart';

class Friend_Add extends StatefulWidget {
  const Friend_Add({super.key});

  @override
  State<Friend_Add> createState() => _Friend_AddState();
}

class _Friend_AddState extends State<Friend_Add> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Center(
                child: Text(
                  'E-Mail로 추가',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              )
            ],
          )),
    );
  }
}
