import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp11_1());
}

class MyApp11_1 extends StatelessWidget {
  const MyApp11_1({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test'),
        ),
        body: const TestScreen(),
      ),
    );
  }
}

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return TextState();
  }
}

class TextState extends State<TestScreen> {
  final controller = TextEditingController();
  int textCounter = 0;

  _printValue() {
    print("_printValue(): ${controller.text}");
    setState(() {
      textCounter = controller.text.length;
      print('$textCounter');
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(_printValue);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        const Text('TextField Test'),
        TextField(
          style: const TextStyle(fontSize: 15),
          controller: controller,
          decoration: InputDecoration(
            labelText: 'Data',
            prefixIcon: const Icon(Icons.input),
            border: const UnderlineInputBorder(),
            hintText: 'Hint Text',
            helperText: '데이터를 입력하세요..',
            counterText: '$textCounter characters',
          ),
          textInputAction: TextInputAction.search,
          keyboardType: TextInputType.number,
          maxLines: 5,
          minLines: 2,
        ),
        ElevatedButton(
          onPressed: () {
            _printValue();
          },
          child: const Text('submit'),
        ),
      ],
    );
  }
}
