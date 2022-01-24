import 'package:flutter/material.dart';
import 'package:pacmanchat/src/screens/chat_screen.dart';
import 'package:pacmanchat/src/screens/login_screen.dart';
import 'package:pacmanchat/src/screens/registration_screen.dart';
import 'package:pacmanchat/src/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //Firebase.initialized
  runApp(MaterialApp(
    theme: ThemeData(
        fontFamily: 'FreePixel',
        textTheme:
            const TextTheme(bodyText1: TextStyle(color: Colors.redAccent))),
    initialRoute: WelcomeScreen.routeName,
    routes: <String, WidgetBuilder>{
      WelcomeScreen.routeName: (BuildContext context) => WelcomeScreen(),
      LoginScreen.routeName: (BuildContext context) => LoginScreen(),
      RegistrationScreen.routeName: (BuildContext context) =>
          RegistrationScreen(),
      ChatScreen.routeName: (BuildContext context) => ChatScreen(),
    },
  ));
}
