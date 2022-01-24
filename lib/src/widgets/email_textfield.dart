import 'package:flutter/material.dart';

class EmailTextfield extends StatelessWidget {
  final String inputText;
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  final FocusNode focusNode;

  const EmailTextfield(
      {required this.inputText,
      required this.controller,
      required this.focusNode,
      required this.onChanged});

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
    );
  }
}
