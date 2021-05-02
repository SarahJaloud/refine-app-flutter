import 'package:flutter/material.dart';
import 'package:refineapp/Screens/StudyBook/Beginner/Grammar/Models/grammar_rules.dart';
import 'package:refineapp/shared/constants.dart';

class GrammarCard extends StatelessWidget {
  const GrammarCard({
    Key key,
    // for passing
    @required this.grammarRules,
  }) : super(key: key);

  final GrammarRules grammarRules;

  @override
  Widget build(BuildContext context) {
    //QuotesController _controller = Get.put(QuotesController());
    return Scaffold(
        backgroundColor: kPrimaryLightColor,
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 40, horizontal: 23),
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Text(grammarRules.title,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 24,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 45,
              ),
              Text(grammarRules.rule,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    color: kPrimaryColor,
                  )),
              SizedBox(
                height: 25,
              ),
              Text(grammarRules.example,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    color: kPrimaryColor,
                  )),
              Image.asset(
                "assets/images/study.png",
                width: 200,
                height: 200,
              ),
            ],
          ),
        ));
  }
}
