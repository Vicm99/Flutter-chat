import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final MaterialAccentColor color;
  final VoidCallback onPress;
  final String name;
  const AppButton(
      {required this.name, required this.color, required this.onPress});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Material(
            child: SizedBox(
          height: 43.0,
          child: ElevatedButton(
            child: Text(name),
            onPressed: onPress,
            style: ElevatedButton.styleFrom(
                primary: color,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0))),
          ),
        )));
  }
}
