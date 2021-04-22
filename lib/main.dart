import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refineapp/Screens/EnglishQuiz/Quiz/quiz_screen.dart';
//import 'package:refineapp/Screens/wrapper.dart';
import 'package:refineapp/model/user.dart';
import 'package:refineapp/routes.dart';
import 'package:refineapp/shared/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:refineapp/services/auth.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:get/get.dart';

//import 'Screens/EnglishQuiz/Quiz/components/body.dart';

//import 'package:refineapp/shared/loading.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new SplashScrenn(),
  ));
}

class SplashScrenn extends StatefulWidget {
  @override
  _SplashScrennState createState() => _SplashScrennState();
}

class _SplashScrennState extends State<SplashScrenn> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 3,
      navigateAfterSeconds: new MyApp(),
      backgroundColor: kPrimaryLightColor,
      photoSize: 100,
      loaderColor: Colors.white,
      image: new Image.asset("assets/images/logo.png"),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserC>.value(
        value: AuthService().user,
        initialData: null,
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Refine App',
          theme: ThemeData(
            backgroundColor: kPrimaryLightColor,
            fontFamily: "muli",
            appBarTheme: AppBarTheme(
                textTheme: TextTheme(
                    headline5: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17))),
          ),
          home: QuizScreen(),
          //initialRoute: WelcomeScreen.routeName,
          routes: routes,
        ));
  }
}
