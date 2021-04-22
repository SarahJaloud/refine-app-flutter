import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:refineapp/Screens/EnglishQuiz/Quiz/components/options.dart';
import 'package:refineapp/controllers/question_controller.dart';
import 'package:refineapp/Screens/EnglishQuiz/Models/questions.dart';

import 'package:refineapp/shared/constants.dart';

// class QuestionCard extends StatelessWidget {
//   const QuestionCard({
//     Key key,
//     // it means we have to pass this
//     @required this.question,
//   }) : super(key: key);

//   final Question question;

//   @override
//   Widget build(BuildContext context) {
//     QuestionController _controller = Get.put(QuestionController());
//     return Scaffold(
//         body: Container(
//             margin: EdgeInsets.symmetric(vertical: 87, horizontal: 23),
//             padding: EdgeInsets.only(
//               top: 20.0,
//               left: 15.0,
//               right: 15.0,
//             ),
//             decoration: BoxDecoration(
//                 color: kPrimaryLightColor,
//                 borderRadius: BorderRadius.circular(25)),
//             child: Column(
//               children: [
//                 Text(
//                   question.question,
//                   style: Theme.of(context)
//                       .textTheme
//                       .subtitle1
//                       .copyWith(color: Colors.white),
//                 ),
//                 ...List.generate(
//                     question.options.length,
//                     (index) => Option(
//                         index: index,
//                         text: question.options[index],
//                         press: () => _controller.checkAnswer(question, index)))
//               ],
//             )));
//   }
// }

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key key,
    // it means we have to pass this
    @required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: kPrimaryColor),
          ),
          SizedBox(height: kDefaultPadding / 2),
          ...List.generate(
            question.options.length,
            (index) => Option(
              index: index,
              text: question.options[index],
              press: () => _controller.checkAnswer(question, index),
            ),
          ),
        ],
      ),
    );
  }
}
