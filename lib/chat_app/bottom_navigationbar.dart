//bottomnavigationbar에 대한 파일이다
import 'package:flutter/material.dart';

import 'friend_list.dart';
import 'chat_list.dart';

class Main_Screen extends StatefulWidget {
  const Main_Screen({super.key});

  @override
  State<Main_Screen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Main_Screen> {
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
        resizeToAvoidBottomInset: false,
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: SizedBox(
          height: (MediaQuery.sizeOf(context)).height / 10,
          child: SingleChildScrollView(
            child: BottomNavigationBar(
              backgroundColor: Colors.black,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 50,
                  ),
                  label: 'Person',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.chat,
                    size: 50,
                    color: Colors.white,
                  ),
                  label: 'Chat',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.white,
              selectedLabelStyle: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}
