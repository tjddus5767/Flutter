import 'package:flutter/material.dart';

void main() {
  runApp(const ch12_4());
}

class ch12_4 extends StatelessWidget {
  const ch12_4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Practice'),
        ),
        body: const TestScreen(),
      ),
    );
  }
}

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  TextState createState() => TextState();
}

class TextState extends State<TestScreen> {
  DateTime datevalue = DateTime.now();
  TimeOfDay timeValue = TimeOfDay.now();

  void showMyDialog() {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Dialog Title'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '이 부분에 입력해주세요',
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    const Text(
                      '수신동의',
                    ),
                  ],
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'OK',
                ),
              ),
            ],
          );
        });
  }

  void BottomSheet() {
    showBottomSheet(
        backgroundColor: Colors.yellow,
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                    leading: const Icon(Icons.add),
                    title: const Text(
                      'ADD',
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                    }),
                ListTile(
                    leading: const Icon(Icons.remove),
                    title: const Text('REMOVE'),
                    onTap: () {
                      Navigator.of(context).pop();
                    }),
              ],
            ),
          );
        });
  }

  void MoDalBottomSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.yellow,
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                    leading: const Icon(Icons.add),
                    title: const Text(
                      'ADD',
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                    }),
                ListTile(
                    leading: const Icon(Icons.remove),
                    title: const Text('REMOVE'),
                    onTap: () {
                      Navigator.of(context).pop();
                    }),
              ],
            ),
          );
        });
  }

  Future DatePicker() async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2030),
        builder: (BuildContext context, Widget? child) {
          return child != null
              ? Theme(data: ThemeData.dark(), child: child)
              : const SizedBox();
        });
    if (picked != null) {
      setState(() => datevalue = picked);
    }
  }

  Future TimePicker() async {
    TimeOfDay? selectedTime =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (selectedTime != null) {
      setState(() => timeValue = selectedTime);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: showMyDialog,
            child: const Text(
              'dialog',
            ),
          ),
          ElevatedButton(
            onPressed: BottomSheet,
            child: const Text(
              'bottomsheet',
            ),
          ),
          ElevatedButton(
            onPressed: MoDalBottomSheet,
            child: const Text(
              'modalbottomsheet',
            ),
          ),
          ElevatedButton(
            onPressed: DatePicker,
            child: const Text(
              'DatePicker',
            ),
          ),
          ElevatedButton(
            onPressed: TimePicker,
            child: const Text(
              'TimePicker',
            ),
          ),
        ],
      ),
    );
  }
}
