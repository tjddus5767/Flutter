import 'package:flutter/material.dart';

void main() {
  runApp(const ch13_4());
}

class ch13_4 extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
  const ch13_4({super.key});
}

class MyAppState extends State<ch13_4> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const Text(
      'First Screen',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    ),
    const Text(
      'Second Screen',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    ),
    const Text(
      'Third Screen',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    ),
    const Text(
      'Fourth Screen',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    ),
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
      home: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48),
            child: Theme(
              data: Theme.of(context).copyWith(shadowColor: Colors.white),
              child: Container(
                height: 48,
                alignment: Alignment.center,
                child: const Text('AppBar Bottom Text'),
              ),
            ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/Ralo.png'), fit: BoxFit.fill),
            ),
          ),
          title: const Text(
            'AppBar Title',
          ),
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
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {},
              ),
              ListTile(title: const Text('Item 2'), onTap: () {}),
            ],
          ),
        ),
        body: Center(
          child: _widgetOptions.elementAt(
            _selectedIndex,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'First',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Second',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Third',
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Fourth',
              backgroundColor: Colors.pink,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
