//import 'dart:io';

//import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:refineapp/Screens/Notebook/components/body.dart';
import 'package:refineapp/components/costum_bottom_nav_bar.dart';
import 'package:refineapp/shared/constants.dart';

import '../../enums.dart';
//import 'package:path_provider/path_provider.dart';

// import 'package:refineapp/Screens/Notebook/components/custom_button.dart';
// import 'package:refineapp/Screens/Notebook/core/validators.dart';
// import 'package:refineapp/shared/constants.dart';

class NotebookScreen extends StatefulWidget {
  @override
  _NotebookScreenState createState() => _NotebookScreenState();
}

class _NotebookScreenState extends State<NotebookScreen> {
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
          'Notebook',
          style: TextStyle(
            fontSize: 26,
          ),
        ),
        centerTitle: true,
      ),
      //-----------------
      body: Body(),
      bottomNavigationBar: CostumBottomNavBar(
        selectedMenu: MenuState.notebook,
      ),
    );
  }
}
