import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:refineapp/Screens/Starting/EnglishQuiz/Quiz/quiz_screen.dart';
import 'package:refineapp/components/rounded_button.dart';
import 'package:refineapp/shared/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

class WelcomeQuiz extends StatefulWidget {
  static String routeName = "/welcome_quiz";

  @override
  _WelcomeQuizState createState() => _WelcomeQuizState();
}

class _WelcomeQuizState extends State<WelcomeQuiz> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User userr;

  @override
  void initState() {
    super.initState();
    initUser();
  }

  initUser() async {
    // ignore: await_only_futures
    userr = await _auth.currentUser;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: kPrimaryLightColor,
        body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 150.0, horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/hello.png"),
                Text(
                  "Hello!",
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: size.height * 0.01),
                Text(
                  "Please take a quiz to start your learning journey!",
                  style: TextStyle(fontSize: 19, color: Colors.black87),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: size.height * 0.03),
                RoundedButton(
                  text: "TAKE QUIZ",
                  textColor: kPrimaryLightColor,
                  color: pinkColor,
                  press: () {
                    Get.to(QuizScreen());
                  },
                )
              ],
            )));
  }
}
