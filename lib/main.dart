import 'package:flutter/material.dart';
//import 'package:refineapp/Screens/Home/home_screen.dart';
//import 'package:refineapp/Screens/Welcome/Welcome_screen.dart';
import 'package:refineapp/constants.dart';
import 'Screens/AccountInfo/AccountInfo.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Refine App',
      theme: ThemeData(
        scaffoldBackgroundColor: kPrimaryLightColor,
        fontFamily: "muli",
        appBarTheme: AppBarTheme(
            textTheme: TextTheme(
                headline5: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17))),
      ),
      //home: WelcomeScreen(),
      //home: HomeScreen()
      home: AccountInfo(),
    );
  }
}
