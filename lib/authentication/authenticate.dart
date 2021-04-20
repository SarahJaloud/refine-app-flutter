import 'package:flutter/material.dart';
import 'package:refineapp/Screens/Starting/Login/login_screen.dart';
import 'package:refineapp/Screens/Starting/SignUp/sign_up_screen.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showLogIn = true;

  void toggleView() {
    setState(() => showLogIn = !showLogIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showLogIn) {
      return LoginScreen(myToggle: toggleView);
    } else {
      return SignUpScreen(myToggle: toggleView);
    }
  }
}
