import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'main_first.dart';
import 'main_second.dart';

class Main_Screen extends StatefulWidget {
  const Main_Screen({super.key});

  @override
  State<Main_Screen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Main_Screen> {
  @override
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    const main_first(),
    const main_second(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: SizedBox(
          height: 100,
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 50,
                ),
                label: 'Person',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat, size: 50),
                label: 'Chat',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            selectedLabelStyle:
                const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
