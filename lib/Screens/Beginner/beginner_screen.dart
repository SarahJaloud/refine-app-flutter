import 'package:flutter/material.dart';
import 'package:refineapp/Screens/Beginner/components/body.dart';
import 'package:refineapp/components/costum_bottom_nav_bar.dart';

import '../../constants.dart';
import '../../enums.dart';

class BeginnerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: kPrimaryColor,
        elevation: 0,
        shape: ContinuousRectangleBorder(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40))),
        title: Text(
          'Beginner',
          style: TextStyle(
            fontSize: 26,
          ),
        ),
        centerTitle: true,
      ),
      body: Body(),
      bottomNavigationBar: CostumBottomNavBar(
        selectedMenu: MenuState.studybook,
      ),
    );
  }
}
