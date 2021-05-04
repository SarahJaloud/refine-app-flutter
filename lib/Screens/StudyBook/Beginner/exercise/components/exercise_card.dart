import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:refineapp/Screens/StudyBook/Beginner/exercise/components/options.dart';
import 'package:refineapp/controllers/exerciseB_controller.dart';
import 'package:refineapp/Screens/StudyBook/Beginner/exercise/Model/exercises.dart';
import 'package:refineapp/shared/constants.dart';

class ExerciseCard extends StatelessWidget {
  const ExerciseCard({
    Key key,
    // for passing
    @required this.exercise,
  }) : super(key: key);

  final Exercise exercise;

  @override
  Widget build(BuildContext context) {
    ExcerciseController _controller = Get.put(ExcerciseController());
    return Container(
      margin: EdgeInsets.symmetric(vertical: 60, horizontal: 23),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            exercise.question,
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: kPrimaryColor),
          ),
          SizedBox(height: kDefaultPadding / 2),
          ...List.generate(
            exercise.options.length,
            (index) => Option(
              index: index,
              text: exercise.options[index],
              press: () => _controller.checkAnswer(exercise, index),
            ),
          ),
        ],
      ),
    );
  }
}
