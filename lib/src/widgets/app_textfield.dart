import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String inputText;
  final ValueChanged<String> onChanged;
  final bool obscureText;
  final TextEditingController controller;
  final FocusNode focusNode;

  const AppTextField(
      {required this.inputText,
      required this.onChanged,
      required this.obscureText,
      required this.controller,
      required this.focusNode});

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: focusNode,
      controller: controller,
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          hintText: inputText,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(32.0)),
              borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2))),
      onChanged: onChanged,
      textAlign: TextAlign.center,
      obscureText: obscureText,
    );
  }
}
