import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:refineapp/Screens/EnglishQuiz/Quiz/components/body.dart';
import 'package:refineapp/controllers/question_controller.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Fluttter show the back button automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          // ignore: deprecated_member_use
          FlatButton(onPressed: _controller.nextQuestion, child: Text("Skip")),
        ],
      ),
      body: Body(),
    );
  }
}
