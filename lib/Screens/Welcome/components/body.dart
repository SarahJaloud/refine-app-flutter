import 'package:flutter/material.dart';
import 'package:refineapp/Screens/Login/login_screen.dart';
import 'package:refineapp/Screens/SignUp/sign_up_screen.dart';
import 'package:refineapp/components/rounded_button.dart';

import '../../../constants.dart';

//import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //provides total height and width of the screen
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: size.height * 0.07),
        Positioned(child: Image.asset("assets/images/welcomesc.png")),
        SizedBox(height: size.height * 0.02),
        Positioned(
            child: Text(
          "WELCOME TO REFINE",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        )),
        SizedBox(height: size.height * 0.1),
        RoundedButton(
          text: "LOGIN",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return LoginScreen();
                },
              ),
            );
          },
        ),
        RoundedButton(
          text: "SIGN UP",
          color: Colors.white,
          textColor: kPrimaryColor,
          press: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return SignUpScreen();
              },
            ));
          },
        ),
      ],
    ));
  }
}
