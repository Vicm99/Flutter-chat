import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.asset('assets/images/Logo.png'),
        const Text('...PACMAN CHAT', style: TextStyle(fontSize: 30)),
      ],
    );
  }
}
