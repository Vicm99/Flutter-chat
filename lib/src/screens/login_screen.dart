import 'package:flutter/material.dart';
import 'package:pacmanchat/src/services/authentication.dart';
import 'package:pacmanchat/src/widgets/app_button.dart';
import 'package:pacmanchat/src/widgets/app_icon.dart';
import 'package:pacmanchat/src/widgets/app_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const String routeName = "/login";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String _email;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              AppIcon(),
              const SizedBox(
                height: 48.0,
              ),
              AppTextField(
                inputText: 'Correo electrónico',
                obscureText: false,
                onChanged: (value) {
                  _email = value;
                },
              ),
              const SizedBox(height: 8.0),
              AppTextField(
                inputText: 'Contraseña',
                obscureText: true,
                onChanged: (value) {
                  _password = value;
                },
              ),
              const SizedBox(height: 23.0),
              AppButton(
                name: 'Iniciar Sesión',
                color: Colors.redAccent,
                onPress: () async {
                  var user = Authentication()
                      .logginUser(email: _email, password: _password);
                  if (user != null) {
                    Navigator.pushNamed(context, "/chatScreen");
                  }
                },
              )
            ],
          )),
    );
  }
}
