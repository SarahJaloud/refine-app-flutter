import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:refineapp/Screens/StudyBook/Beginner/exercise/components/exercise_card.dart';
import 'package:refineapp/controllers/exerciseB_controller.dart';

import 'package:refineapp/shared/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // accessing my controller
    ExcerciseController _exerciseController = Get.put(ExcerciseController());
    return Stack(
      children: [
        Image.asset("assets/images/Confetti-Doodles.png", fit: BoxFit.fill),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              ),
              //SizedBox(height: kDefaultPadding),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Obx(
                  () => Text.rich(
                    TextSpan(
                      text:
                          "Question ${_exerciseController.questionNumber.value}",
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          .copyWith(color: Colors.black87),
                      children: [
                        TextSpan(
                          text: "/${_exerciseController.exercise.length}",
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              .copyWith(color: kPrimaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(thickness: 1.5),
              SizedBox(height: kDefaultPadding),
              Expanded(
                child: PageView.builder(
                  // allow scroll
                  physics: PageScrollPhysics(),
                  controller: _exerciseController.pageController,
                  onPageChanged: _exerciseController.updateTheQnNum,
                  itemCount: _exerciseController.exercise.length,
                  itemBuilder: (context, index) => ExerciseCard(
                      exercise: _exerciseController.exercise[index]),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
