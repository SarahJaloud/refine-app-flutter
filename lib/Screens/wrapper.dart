import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refineapp/Screens/Home/home_screen.dart';
import 'package:refineapp/authentication/authenticate.dart';
import 'package:refineapp/model/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserC>(context);
    print(user);

    if (user == null) {
      return Authenticate();
    } else {
      return HomeScreen();
    }
  }
}
