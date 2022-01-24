import 'package:flutter/material.dart';

class PasswordTextfield extends StatelessWidget {
  final String inputText;
  final ValueChanged<String> onChanged;
  final bool ObscureText;
  final TextEditingController controller;

  const PasswordTextfield(
      {required this.inputText,
      required this.ObscureText,
      required this.controller,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: ObscureText,
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
    );
  }
}
