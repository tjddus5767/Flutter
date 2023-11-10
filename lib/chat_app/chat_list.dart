import 'package:flutter/material.dart';

class main_second extends StatefulWidget {
  const main_second({super.key});

  @override
  State<main_second> createState() => _main_secondState();
}

class _main_secondState extends State<main_second> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Text(
          'test2',
        ),
      ),
    );
  }
}
