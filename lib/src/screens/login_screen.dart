import 'package:flutter/material.dart';
import 'package:pacmanchat/src/services/authentication.dart';
import 'package:pacmanchat/src/widgets/app_button.dart';
import 'package:pacmanchat/src/widgets/app_icon.dart';
import 'package:pacmanchat/src/widgets/email_textfield.dart';
import 'package:pacmanchat/src/widgets/password_textfield.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const String routeName = "/login";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String _email;
  late String _password;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  late FocusNode _focusNode;
  bool showSpinner = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  void setSpinnerStatus(bool status) {
    setState(() {
      showSpinner = status;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
          child:Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  AppIcon(),
                  const SizedBox(
                    height: 48.0,
                  ),
                  EmailTextfield(
                    inputText: 'Correo electrónico',
                    controller: _emailController,
                    focusNode: _focusNode,
                    onChanged: (value) {
                      _email = value;
                    },
                  ),
                  const SizedBox(height: 8.0),
                  PasswordTextfield(
                      inputText: 'Contraseña',
                      ObscureText: true,
                      controller: _passwordController,
                      onChanged: (value) {
                        _password = value;
                      }),
                  const SizedBox(height: 23.0),
                  AppButton(
                    name: 'Iniciar Sesión',
                    color: Colors.redAccent,
                    onPress: () async {
                      setSpinnerStatus(true);
                      var user = Authentication()
                          .logginUser(email: _email, password: _password);
                      if (user != null) {
                        Navigator.pushNamed(context, "/chatScreen");
                      }
                      FocusScope.of(context).requestFocus(_focusNode);
                      //Elimina el texto en el textfield una vez presionado "iniciar sesión"
                      _emailController.text = "";
                      _passwordController.text = "";
                      setSpinnerStatus(false);
                    },
                  )
                ],
              ))));
  }
}
