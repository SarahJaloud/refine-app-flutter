import 'package:flutter/material.dart';
import 'package:refineapp/Screens/Beginner/components/lessons_menu.dart';
import 'package:refineapp/components/rounded_button.dart';
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
            //SizedBox(height: size.height * 0.02),
            CircularButton(
                icon: "assets/icons/dictionary.svg",
                text: "Vocabulary",
                press: () {}),
            SizedBox(height: size.height * 0.02),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.0),
                  child: Container(
                    height: 1.0,
                    width: 200.0,
                    color: kPrimaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.02),
            CircularButton(
                icon: "assets/icons/grammar.svg",
                text: "Grammar",
                press: () {}),
            SizedBox(height: size.height * 0.02),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.0),
                  child: Container(
                    height: 1.0,
                    width: 200.0,
                    color: kPrimaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.02),
            CircularButton(
                icon: "assets/icons/communication.svg",
                text: "listening and comprehending",
                press: () {}),
            SizedBox(height: size.height * 0.02),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.0),
                  child: Container(
                    height: 1.0,
                    width: 200.0,
                    color: kPrimaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.02),
            RoundedButton(
              text: "TAKE QUIZ",
              textColor: kPrimaryLightColor,
              color: pinkColor,
              press: () {},
            )
          ]),
    );
  }
}
