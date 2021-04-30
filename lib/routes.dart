import 'package:flutter/widgets.dart';
import 'package:refineapp/Screens/Starting/EnglishQuiz/Quiz/quiz_screen.dart';
import 'package:refineapp/Screens/Starting/EnglishQuiz/Result/result_screen.dart';
import 'package:refineapp/Screens/Starting/EnglishQuiz/Welcome/welcome_quiz.dart';
import 'package:refineapp/Screens/Home/Profile/profile_screen.dart';
import 'package:refineapp/Screens/Home/home_screen.dart';
import 'package:refineapp/Screens/Starting/Login/login_screen.dart';
import 'package:refineapp/Screens/Starting/SignUp/sign_up_screen.dart';
import 'package:refineapp/Screens/Starting/Welcome/Welcome_screen.dart';
import 'package:refineapp/Screens/Starting/reset/password_reset.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  PassResetScreen.routeName: (context) => PassResetScreen(),
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  WelcomeQuiz.routeName: (context) => WelcomeQuiz(),
  QuizScreen.routeName: (context) => QuizScreen(),
  ResultScreen.routeName: (context) => ResultScreen(),
};
