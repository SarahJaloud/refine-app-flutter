import 'package:flutter/material.dart';
import 'package:refineapp/Screens/SignUp/sign_up_screen.dart';
import 'package:refineapp/components/already_have_an_account_check.dart';
import 'package:refineapp/components/rounded_button.dart';
import 'package:refineapp/components/rounded_input_field.dart';
import 'package:refineapp/components/rounded_password_field.dart';
//import 'package:refineapp/components/text_field_container.dart';
import '../../../constants.dart';

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
            //SizedBox(height: size.height * 0.02),

            Positioned(
                child: Image.asset(
              "assets/images/login2.png",
              height: 250,
              width: 250,
            )),
            SizedBox(height: size.height * 0.03),
            Text(
              "LOGIN",
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
              color: Colors.white,
              textColor: kPrimaryLightColor,
              text: "LOGIN",
              press: () {},
            ),
            AlreadyHaveAnAccountCheck(press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SignUpScreen();
              }));
            })
          ],
        ));
  }
}
