import 'package:flutter/material.dart';
import 'user.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Map<String, Object> args =
        ModalRoute.of(context)?.settings.arguments as Map<String, Object>;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Second Screen',
            ),
          ),
        ),
        body: Container(
          color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  'Second Screen',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                  'sendData: ${args["agr1"]}, ${args["arg2"]}, ${(args["arg3"] as User).name}'),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/three');
                },
                child: const Text(
                  'Go Third',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    User('kim', 'busan'),
                  );
                },
                child: const Text('Go back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
