import 'package:flutter/material.dart';
import 'package:refineapp/Screens/AccountInfo/components/body.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showLogIn = true;

  void toggleView() {
    // !() reverse >> flase
    setState(() => showLogIn = !showLogIn);
  }

  @override
  Widget build(BuildContext context) {
    return Body();
    /*if (showLogIn) {
      return LoginScreen(myToggle: toggleView);
    } else {
      return SignUpScreen(myToggle: toggleView);
    }*/
  }
}
