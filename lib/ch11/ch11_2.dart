import 'package:flutter/material.dart';

void main() {
  runApp(const ch11_2());
}

class ch11_2 extends StatelessWidget {
  const ch11_2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Practice'),
            ),
            body: const TestScreen()));
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
  bool? isChecked = true;
  String? selectPlatform;
  double sliderValue = 5.0;
  bool selectValue = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        const Text('CheckBox Test'),
        Row(
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            Text(
              'Checkbox value is $isChecked',
            ),
          ],
        ),
        const Text('Radio Test'),
        Row(
          children: [
            Radio(
              value: "android",
              groupValue: selectPlatform,
              onChanged: (String? value) {
                setState(() {
                  selectPlatform = value;
                });
              },
            ),
            const Text('Android'),
          ],
        ),
        Row(
          children: [
            Radio(
              value: "ios",
              groupValue: selectPlatform,
              onChanged: (String? value) {
                setState(() {
                  selectPlatform = value;
                });
              },
            ),
            const Text('ios'),
          ],
        ),
        Text(
          'RadioButton value is $selectPlatform',
        ),
        const Text(
          'Slider Test',
        ),
        Slider(
          value: sliderValue,
          min: 0,
          max: 10,
          onChanged: (double value) {
            setState(() {
              sliderValue = value;
            });
          },
        ),
        Text(
          'slider value is $sliderValue',
        ),
        Switch(
          value: selectValue,
          onChanged: (bool value) {
            setState(() {
              selectValue = value;
            });
          },
        ),
        Text(
          'select value is $selectValue',
        ),
      ],
    );
  }
}
