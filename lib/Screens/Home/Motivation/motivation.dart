import 'package:flutter/material.dart';
import 'package:refineapp/Screens/Home/Motivation/motiv_body.dart';

import 'package:refineapp/Screens/Home/home_screen.dart';

import 'package:refineapp/shared/constants.dart';

// ignore: must_be_immutable
class MotivationScreen extends StatelessWidget {
  PageController hPagerController = PageController(keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: kPrimaryColor,
        elevation: 0,
        shape: ContinuousRectangleBorder(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40))),
        leading: IconButton(
          icon: Icon(
            Icons.cancel,
            size: 30,
            color: kPrimaryLightColor,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomeScreen();
            }));
          },
        ),
        title: Text(
          'Motivation',
          style: TextStyle(
            fontSize: 26,
          ),
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
