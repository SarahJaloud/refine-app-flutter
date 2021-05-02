import 'package:flutter/material.dart';
import 'package:refineapp/Screens/StudyBook/Beginner/Grammar/components/grammar_card.dart';
import 'package:refineapp/Screens/StudyBook/Beginner/beginner_screen.dart';
import 'package:refineapp/shared/constants.dart';
import 'package:refineapp/controllers/grammar_controller.dart';
import 'package:get/get.dart';

class GrammarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GrammarController _grammarController = Get.put(GrammarController());
    return Scaffold(
        backgroundColor: kPrimaryLightColor,
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
            'Grammar',
            style: TextStyle(
              fontSize: 26,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(
                physics: PageScrollPhysics(),
                controller: _grammarController.pageController,
                itemCount: _grammarController.grammar.length,
                itemBuilder: (context, index) => GrammarCard(
                    grammarRules: _grammarController.grammar[index]),
              ),
            ),
          ],
        ));
  }
}
