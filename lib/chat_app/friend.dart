import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class User {
  final String name;
  String phone;
  User(this.name, this.phone);
}

class Friend_list extends StatelessWidget {
  Friend_list({super.key});
  List<User> users = [
    User(
      'Ralo',
      '010-0000-0000',
    ),
    User(
      'Ralo',
      '010-0000-0000',
    ),
    User(
      'Ralo',
      '010-0000-0000',
    ),
    User(
      'Ralo',
      '010-0000-0000',
    ),
    User(
      'Ralo',
      '010-0000-0000',
    ),
    User(
      'Ralo',
      '010-0000-0000',
    ),
    User(
      'Ralo',
      '010-0000-0000',
    ),
    User(
      'Ralo',
      '010-0000-0000',
    ),
    User(
      'Ralo',
      '010-0000-0000',
    ),
  ];
  int countUsers() {
    return users.length;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
