import 'package:flutter/material.dart';
import 'package:refineapp/Screens/Beginner/Vocabulary/components/body.dart';
import 'package:refineapp/Screens/Beginner/beginner_screen.dart';
//import 'package:flutter_svg/flutter_svg.dart';

import '../../../shared/constants.dart';

class VocabularyScreenB extends StatelessWidget {
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
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return BeginnerScreen();
            }));
          },
          child: Icon(Icons.close),
        ),
        title: Text(
          'Vocabulary',
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
