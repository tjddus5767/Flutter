import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const IconData access_alarms_outlined =
      IconData(0xee2b, fontFamily: 'MaterialIcons');
  onPressed() {
    print('hello flutter');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Practice',
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Colors.red,
                  Colors.blue,
                  Colors.black,
                ],
              ),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 첫 번째 사진과 두 번째 사진 사이에 간격을 주기 위해 SizedBox 추가

            Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  margin: const EdgeInsets.symmetric(vertical: 30),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 20, color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                  ),
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  child: Image.asset('images/Ralo.png'),
                ),
                GestureDetector(
                  onTap: () {
                    launchUrl(
                      Uri.parse('https://www.youtube.com/@RALO24'),
                    );
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/Ralo.png'),
                          fit: BoxFit.fill),
                      shape: BoxShape.circle,
                    ),
                    width: 100,
                    height: 100,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   final String buttonText;
//   final double width;
//   final Function onpressed;

//   const MyApp({
//     super.key,
//     required this.buttonText,
//     required this.width,
//     required this.onpressed,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: Container(
//         decoration: BoxDecoration(
//           boxShadow: const [
//             BoxShadow(
//                 color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
//           ],
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             stops: const [0.0, 1.0],
//             colors: [
//               Colors.deepPurple.shade400,
//               Colors.deepPurple.shade200,
//             ],
//           ),
//           color: Colors.deepPurple.shade300,
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: ElevatedButton(
//           style: ButtonStyle(
//             shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//               RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20.0),
//               ),
//             ),
//             minimumSize: MaterialStateProperty.all(Size(width, 50)),
//             backgroundColor: MaterialStateProperty.all(Colors.transparent),
//             // elevation: MaterialStateProperty.all(3),
//             shadowColor: MaterialStateProperty.all(Colors.transparent),
//           ),
//           onPressed: () {
//             onpressed();
//           },
//           child: Padding(
//             padding: const EdgeInsets.only(
//               top: 10,
//               bottom: 10,
//             ),
//             child: Text(
//               buttonText,
//               style: const TextStyle(
//                 fontSize: 18,
//                 // fontWeight: FontWeight.w700,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
