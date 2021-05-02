import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:refineapp/Screens/StudyBook/Beginner/Grammar/Models/grammar_rules.dart';

class GrammarController extends GetxController {
  PageController _pageController;
  PageController get pageController => this._pageController;

  List<GrammarRules> _grammar = sample_data
      .map((grammar) => GrammarRules(
            title: grammar['title'],
            rule: grammar['rule'],
            example: grammar['example'],
          ))
      .toList();
  List<GrammarRules> get grammar => this._grammar;
}
