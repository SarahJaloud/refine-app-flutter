import 'package:flutter/material.dart';
import 'package:refineapp/Screens/StudyBook/Advanced/components/body.dart';
import 'package:refineapp/components/costum_bottom_nav_bar.dart';
import 'package:refineapp/shared/constants.dart';

import 'package:refineapp/enums.dart';

class AdvancedScreen extends StatefulWidget {
  @override
  _AdvancedScreenState createState() => _AdvancedScreenState();
}

class _AdvancedScreenState extends State<AdvancedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        backgroundColor: kPrimaryColor,
        elevation: 0,
        shape: ContinuousRectangleBorder(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40))),
        title: Text(
          'Advanced',
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
