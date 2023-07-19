import 'package:flutter/material.dart';

void main() {
  runApp(ch12_2());
}

class ch12_2 extends StatelessWidget {
  ch12_2({super.key});
  List<String> citys = ['서울시', '안산시', '인천시', '천안시', '아산시', '대전시', '대구시', '광주시'];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('practice'),
      ),
      body: GridView.builder(
        itemCount: citys.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [Text(citys[index]), Image.asset('images/Ralo.png')],
            ),
          );
        },
        scrollDirection: Axis.vertical,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      ),
    ));
  }
}
