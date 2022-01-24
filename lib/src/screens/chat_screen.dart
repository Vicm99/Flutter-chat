import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pacmanchat/src/services/authentication.dart';


class ChatScreen extends StatefulWidget {


  static const String routeName = "/chatScreen";

  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final auth = FirebaseAuth.instance;
   late User loggedInUser;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }
  void getCurrentUser() async {
      var user =  Authentication().getCurrentUser();
      if (user != null) {
        loggedInUser = user as User;
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PACMAN'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.logout), onPressed: (){
            Authentication().signOut();
            Navigator.pop(context);
          },)
        ],
      ),
    );
  }
}
