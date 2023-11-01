import 'package:flutter/material.dart';

void main() {
  runApp(const News());
}

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return NewsState();
  }
}

class NewsState extends State<News> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 230),
                  child: Text(
                    '소식',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Icon(
                  Icons.calendar_month,
                  size: 35,
                  color: Colors.black,
                ),
              ],
            ),
            bottom: TabBar(
              indicatorColor: Colors.black87,
              labelColor: Colors.black,
              controller: controller,
              tabs: const [
                Tab(
                  child: Text(
                    '내 소식',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    '친구 소식',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            controller: controller,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      'images/chat.jpg', // 첫 번째 탭의 이미지 경로
                      width: 100,
                      height: 100,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    '새로운 소식이 없어요.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      'images/chat.jpg', // 두 번째 탭의 이미지 경로
                      width: 100,
                      height: 100,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    '새로운 소식이 없어요.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
