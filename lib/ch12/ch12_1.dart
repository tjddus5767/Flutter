import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(ch12_1());
}

class User {
  String name;
  String phone;
  String email;
  User(this.name, this.phone, this.email);
}

class ch12_1 extends StatelessWidget {
  ch12_1({super.key});
  List<User> users = [
    User('Ralo', '010-0000-0000', 'ralo.com'),
    User('Ralo', '010-0000-0000', 'ralo.com'),
    User('Ralo', '010-0000-0000', 'ralo.com'),
    User('Ralo', '010-0000-0000', 'ralo.com'),
    User('Ralo', '010-0000-0000', 'ralo.com'),
    User('Ralo', '010-0000-0000', 'ralo.com'),
    User('Ralo', '010-0000-0000', 'ralo.com'),
    User('Ralo', '010-0000-0000', 'ralo.com'),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('practice'),
        ),
        body: ListView.separated(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return ListTile(
                leading: const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('images/Ralo.png'),
                ),
                title: Text(users[index].name),
                subtitle: Text(users[index].phone),
                trailing: const Icon(Icons.more_vert),
                onTap: () {
                  launchUrl(
                    Uri.parse('https://www.youtube.com/@RALO24'),
                  );
                });
          },
          separatorBuilder: (context, index) {
            return const Divider(
              height: 4,
              color: Colors.black,
            );
          },
        ),
      ),
    );
  }
}
