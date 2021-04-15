import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refineapp/Screens/Welcome/Welcome_screen.dart';
//import 'package:refineapp/Screens/Home/home_screen.dart';
//import 'package:refineapp/Screens/wrapper.dart';
import 'package:refineapp/model/user.dart';
import 'package:refineapp/shared/constants.dart';
//import 'Screens/AccountInfo/AccountInfo.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:refineapp/services/auth.dart';
//import 'package:refineapp/shared/loading.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserC>.value(
        value: AuthService().user,
        initialData: null,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Refine App',
          theme: ThemeData(
            scaffoldBackgroundColor: kPrimaryLightColor,
            fontFamily: "muli",
            appBarTheme: AppBarTheme(
                textTheme: TextTheme(
                    headline5: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17))),
          ),
          //home: Loading(),
          //home: Wrapper(),
          //home: HomeScreen()
          //home: AccountInfo(),
          home: WelcomeScreen(),
        ));
  }
}
