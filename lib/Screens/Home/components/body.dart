import 'package:flutter/material.dart';
import 'package:refineapp/Screens/Home/Motivation/motivation.dart';
import 'package:refineapp/Screens/Home/components/header.dart';
import 'package:refineapp/Screens/Notebook/notebook_screen.dart';
//import 'package:refineapp/components/empty_container.dart';
import 'package:refineapp/components/rounded_icon_container.dart';
import 'package:refineapp/shared/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // provides total height and width of our screen
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Header(size: size),
          RoundedContainer(
            text: "Feeling stressed?\nLet us help you boost your confidence!",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MotivationScreen();
              }));
            },
          ),
          RoundedContainerWicon(
            icon: "assets/icons/bell.svg",
            color: Colors.white,
            text: "Reminder! You should add a new word into your notebook.",
            textColor: kPrimaryColor,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NotebookScreen();
              }));
            },
          )
          //EmptyContainer(size: size),
        ],
      ),
    );
  }
}

class RoundedContainer extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedContainer({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        // ignore: deprecated_member_use
        child: FlatButton(
            padding: EdgeInsets.symmetric(vertical: 23, horizontal: 23),
            color: color,
            onPressed: press,
            child: Row(
              children: <Widget>[
                Image.asset(
                  "assets/images/motivation-logo.png",
                  height: 85,
                  width: 85,
                ),
                SizedBox(width: size.width * 0.04),
                Flexible(
                    child: Text(text,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 20,
                        ))),
              ],
            )),
      ),
    );
  }
}
