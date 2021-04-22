import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:refineapp/controllers/question_controller.dart';
import 'package:refineapp/shared/constants.dart';

class ResultScreen extends StatelessWidget {
  static String routeName = "/result_screen";
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/images/Confetti-Doodles.png", fit: BoxFit.fill),
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Your score is:",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: Colors.white),
              ),
              //Spacer(),
              Text(
                "${_qnController.numOfCorrectAns}/${_qnController.questions.length}",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: Colors.black),
              ),
              Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}
