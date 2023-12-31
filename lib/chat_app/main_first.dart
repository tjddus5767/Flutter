import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'friend.dart';

void main() {
  runApp(const main_first());
}

class main_first extends StatefulWidget {
  const main_first({super.key});

  @override
  State<main_first> createState() => main_firstState();
}

class main_firstState extends State<main_first> {
  XFile? _image; //이미지를 담을 변수 선언
  final ImagePicker picker = ImagePicker(); //ImagePicker 초기화

  //이미지를 가져오는 함수
  Future getImage(ImageSource imageSource) async {
    //pickedFile에 ImagePicker로 가져온 이미지가 담긴다.
    final XFile? pickedFile = await picker.pickImage(source: imageSource);
    if (pickedFile != null) {
      setState(() {
        _image = XFile(pickedFile.path); //가져온 이미지를 _image에 저장
      });
    }
  }

  final Friend_list friendList = Friend_list();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '친구',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10, width: double.infinity),
              Row(
                children: [
                  _buildPhotoArea(),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    '김성연',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1.5,
              ),
              Text(
                '친구 수: $friendCount',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: Friend_list(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  int? friendCount;
  void updateFriendCount() {
    setState(() {
      friendCount = friendList.countUsers();
    });
  }

  Widget _buildPhotoArea() {
    return GestureDetector(
      onTap: () {
        getImage(ImageSource.gallery); // Container를 클릭하면 갤러리로 이동
      },
      child: _image != null
          ? ClipRRect(
              borderRadius: BorderRadius.circular(30), // 반경 설정
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle, // 둥근 모양 설정
                ),
                child: Image.file(
                  File(
                    _image!.path,
                  ),
                  width: 100,
                  height: 100,
                  fit: BoxFit.fill,
                ),
              ),
            )
          : Container(
              width: 100,
              height: 100,
              color: Colors.grey,
            ),
    );
  }
}
