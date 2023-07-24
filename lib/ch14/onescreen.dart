import 'package:flutter/material.dart';
import 'user.dart';

class OneScreen extends StatelessWidget {
  const OneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'First Screen',
            ),
          ),
        ),
        body: Container(
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  'First Screen',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  final result =
                      await Navigator.pushNamed(context, '/two', arguments: {
                    "arg1": 1,
                    "arg2": "hello",
                    "arg3": User('kkang', 'seoul'),
                  });
                  print('result: ${(result as User).name}');
                },
                child: const Text(
                  'Go Second',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
