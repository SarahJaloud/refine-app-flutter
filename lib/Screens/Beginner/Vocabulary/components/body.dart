import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:refineapp/Screens/Beginner/Vocabulary/components/vocab_list.dart';
import 'package:refineapp/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: new EdgeInsets.all(20.0),
          child: Column(
            children: [
              TitleRow(
                text: "Actions",
              ),
              //VocabList(),
            ],
          )),
    );
  }
}

class TitleRow extends StatelessWidget {
  const TitleRow({
    Key key,
    this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Actions", style: TextStyle(fontSize: 30, color: yellowColor)),
        SizedBox(width: 105),
        Text.rich(TextSpan(
            text: "Section 1",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: kPrimaryColor),
            children: [
              TextSpan(
                  text: "/4",
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(color: kPrimaryColor))
            ])),
      ],
    );
  }
}
