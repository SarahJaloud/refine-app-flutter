import 'package:flutter/material.dart';
import 'package:refineapp/Screens/StudyBook/Advanced/advanced_screen.dart';
import 'package:refineapp/Screens/StudyBook/Beginner/beginner_screen.dart';
import 'package:refineapp/Screens/StudyBook/Intermediate/intermediate_screen.dart';
import 'package:refineapp/Screens/StudyBook/components/levels_menu.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
          SizedBox(height: size.height * 0.05),
          LevelsMenu(
            icon: "assets/icons/paper-plane.svg",
            //color: kPrimaryColor,
            text: "Beginner",
            //textColor: yellowColor,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return BeginnerScreen();
              }));
            },
          ),
          LevelsMenu(
            icon: "assets/icons/plane.svg",
            text: "Intermediate ",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return IntermediateScreen();
              }));
            },
          ),
          LevelsMenu(
            icon: "assets/icons/rocket.svg",
            text: "Advanced ",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AdvancedScreen();
              }));
            },
          ),
        ]));
  }
}
