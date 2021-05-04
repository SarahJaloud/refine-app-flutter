import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:refineapp/Screens/StudyBook/Beginner/exercise/Model/exercises.dart';

class ExcerciseController extends GetxController
    with SingleGetTickerProviderMixin {
  PageController _pageController;
  PageController get pageController => this._pageController;

  List<Exercise> _exercise = sample_data
      .map(
        (question) => Exercise(
            id: question['id'],
            question: question['question'],
            options: question['options'],
            answer: question['answer_index']),
      )
      .toList();
  List<Exercise> get exercise => this._exercise;

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  int _correctAns;
  int get correctAns => this._correctAns;

  int _selectedAns;
  int get selectedAns => this._selectedAns;

  // for more about obs please check documentation
  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => this._numOfCorrectAns;
  @override
  void onClose() {
    super.onClose();
    _pageController.dispose();
  }

  void checkAnswer(Exercise exercise, int selectedIndex) {
    // because once user press any option then it will run
    _isAnswered = true;
    _correctAns = exercise.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;

    // Once user select an ans after 3s it will go to the next qn
    Future.delayed(Duration(seconds: 3), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (_questionNumber.value != _exercise.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: Duration(milliseconds: 250), curve: Curves.ease);
    }
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
}
