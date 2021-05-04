import 'package:flutter/material.dart';
//import 'package:get/get.dart';

import 'package:refineapp/Screens/StudyBook/Beginner/exercise/components/body.dart';
//import 'package:refineapp/controllers/question_controller.dart';

class ExerciseScreen extends StatelessWidget {
  static String routeName = "/exercise_screenb";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Fluttter show the back button automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Body(),
    );
  }
}
