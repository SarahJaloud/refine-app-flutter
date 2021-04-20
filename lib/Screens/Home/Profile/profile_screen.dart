import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:refineapp/Screens/Home/Profile/components/avatar.dart';
import 'package:refineapp/Screens/Home/Profile/edit_profile_screen.dart';
import 'package:refineapp/components/costum_bottom_nav_bar.dart';
import 'package:refineapp/components/rounded_button.dart';
import 'package:refineapp/enums.dart';
import 'package:refineapp/services/auth.dart';
import 'package:refineapp/shared/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:refineapp/services/auth.dart';

class ProfileScreen extends StatefulWidget {
  static String routeName = "/profile";

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final AuthService _auth = AuthService();
  User userr;

  @override
  void initState() {
    super.initState();
    initUser();
  }

  initUser() async {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: size.height * 0.12,
          ),
          Avatar(),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 68, horizontal: 23),
              width: size.width * 0.9,
              padding: EdgeInsets.only(
                top: 35.0,
                left: 15.0,
                right: 15.0,
              ),
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: size.width * 0.04,
                      ),

                      SvgPicture.asset(
                        "assets/icons/user.svg",
                        color: pinkColor,
                        width: 30,
                      ),

                      SizedBox(
                        width: size.width * 0.04,
                      ),
                      Text(
                        "Name",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                      //Text("${userr._name}")
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: size.width * 0.04,
                      ),
                      SvgPicture.asset(
                        "assets/icons/email.svg",
                        color: pinkColor,
                        width: 30,
                      ),
                      SizedBox(
                        width: size.width * 0.04,
                      ),
                      Text(
                        "Email",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                      //Text("${userr._name}")
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Row(
                    children: <Widget>[
                      RoundedButton(
                        text: "EDIT",
                        textColor: kPrimaryLightColor,
                        color: yellowColor,
                        press: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return EditProfile();
                          }));
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      RoundedButton(
                        text: "SIGN OUT",
                        textColor: kPrimaryLightColor,
                        color: Colors.white,
                        press: () async {
                          Navigator.of(context).pop();
                          Navigator.of(context)
                              .pushReplacementNamed('/welcome');
                          await _auth.signOut();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CostumBottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
