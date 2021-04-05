import 'package:flutter/material.dart';
import 'package:refineapp/Screens/Login/login_screen.dart';
import 'package:refineapp/components/already_have_an_account_check.dart';
import 'package:refineapp/components/rounded_button.dart';
import 'package:refineapp/components/rounded_input_field.dart';
import 'package:refineapp/components/rounded_password_field.dart';
import 'package:refineapp/constants.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        padding: new EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Positioned(
                child: Image.asset(
              "assets/images/signup.png",
              height: 300,
              width: 300,
            )),
            Text(
              "SIGN UP",
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: size.height * 0.04),
            RoundedInputField(
              hintText: "Enter Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              textColor: kPrimaryLightColor,
              color: Colors.white,
              press: () {},
            ),
            AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                })
          ],
        ));
  }
}
