import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const ch13_2());
}

class ch13_2 extends StatelessWidget {
  const ch13_2({super.key});

  Widget platformUI() {
    if (Platform.isIOS) {
      return CupertinoApp(
        debugShowCheckedModeBanner: false,
        theme: const CupertinoThemeData(
          brightness: Brightness.light,
        ),
        home: CupertinoPageScaffold(
          navigationBar: const CupertinoNavigationBar(
            middle: Text('Cupertino Title'),
          ),
          child: ListView(
            children: <Widget>[
              CupertinoButton(
                onPressed: () {},
                child: const Text('click'),
              ),
              const Center(
                child: Text('helloworld'),
              )
            ],
          ),
        ),
      );
    } else if (Platform.isAndroid) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Material Text'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {},
                child: const Text('Click'),
              ),
              const Center(
                child: Text('hello world'),
              )
            ],
          ),
        ),
      );
    } else {
      return const Text('unknown debvie');
    }
  }

  @override
  Widget build(BuildContext context) {
    return platformUI();
  }
}
