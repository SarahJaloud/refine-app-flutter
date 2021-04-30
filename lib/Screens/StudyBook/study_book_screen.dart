import 'package:flutter/material.dart';
import 'package:refineapp/Screens/StudyBook/components/body.dart';
import 'package:refineapp/components/costum_bottom_nav_bar.dart';

import '../../shared/constants.dart';
import '../../enums.dart';

class StudyBookScreen extends StatelessWidget {
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
        title: Text(
          'Study Book',
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
