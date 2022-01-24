import 'package:flutter/material.dart';
import 'package:pacmanchat/src/widgets/app_button.dart';
import 'package:pacmanchat/src/widgets/app_icon.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  static const String routeName = "/";

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            AppIcon(),
            const SizedBox(height: 40),
            AppButton(
                name: 'Iniciar Sesión',
                color: Colors.redAccent,
                onPress: () {
                  Navigator.pushNamed(context, '/login');
                }),
            AppButton(
                name: 'Registrarse',
                color: Colors.amberAccent,
                onPress: () {
                  Navigator.pushNamed(context, '/registration');
                }),
          ],
        ),
      ),
    );
  }
}
