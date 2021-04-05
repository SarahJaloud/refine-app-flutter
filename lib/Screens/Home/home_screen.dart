import 'package:flutter/material.dart';
import 'package:refineapp/Screens/Home/components/body.dart';
import 'package:refineapp/components/costum_bottom_nav_bar.dart';
import 'package:refineapp/constants.dart';

import '../../enums.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
      ),
      body: Body(),
      bottomNavigationBar: CostumBottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
