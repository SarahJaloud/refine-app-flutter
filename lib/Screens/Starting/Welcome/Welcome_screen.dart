import 'package:flutter/material.dart';
import 'package:refineapp/Screens/Starting/Welcome/components/body.dart';
import 'package:refineapp/shared/constants.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = "/welcome";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body: Body(),
    );
  }
}
