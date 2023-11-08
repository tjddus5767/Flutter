import 'package:flutter/material.dart';

class Text_Field extends StatelessWidget {
  final String labelText;
  final String hintText;
  const Text_Field(
      {super.key, required this.labelText, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 40,
        right: 40,
      ),
      child: TextField(
        style: const TextStyle(fontSize: 20, color: Colors.white),
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          fillColor: Colors.black,
          filled: true,
          labelText: labelText,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
