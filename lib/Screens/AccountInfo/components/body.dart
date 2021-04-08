import 'package:flutter/material.dart';
import 'package:refineapp/Screens/AccountInfo/components/gender.dart';
import 'package:refineapp/components/rounded_button.dart';
import 'package:refineapp/components/rounded_input_field.dart';
import 'package:refineapp/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        padding: new EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/fill_info.png",
              height: 260,
              width: 260,
            ),
            SizedBox(height: size.height * 0.02),
            Text("Please fill in your information!",
                style: TextStyle(color: Colors.white, fontSize: 16)),
            SizedBox(height: size.height * 0.01),
            RoundedInputField(
              icon: Icons.person_outline_rounded,
              hintText: "Your name",
              onChanged: (value) {},
            ),
            RoundedInputField(
              icon: Icons.person_pin_outlined,
              hintText: "Your username",
              onChanged: (value) {},
            ),
            RoundedInputField(
              //icon: Icons.person_pin_outlined,
              hintText: "Your age",
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.01),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Gender(
                  icon: "assets/icons/female.svg",
                  press: () {},
                ),
                Gender(
                  icon: "assets/icons/male.svg",
                  press: () {},
                ),
              ],
            ),
            SizedBox(height: size.height * 0.01),
            RoundedButton(
              color: Colors.white,
              text: "COMPLETE",
              textColor: kPrimaryLightColor,
              press: () {},
            ),
          ],
        ));
  }
}
