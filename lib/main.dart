import 'package:flutter/material.dart';
import 'package:refineapp/Screens/Welcome/Welcome_screen.dart';
import 'package:refineapp/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Refine App',
        theme: ThemeData(
          scaffoldBackgroundColor: kPrimaryLightColor,
        ),
        home: WelcomeScreen()
        //body: Center(child: Body()),
        );
  }
}
