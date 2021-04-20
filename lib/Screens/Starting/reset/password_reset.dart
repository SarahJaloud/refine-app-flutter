//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:refineapp/Screens/Starting/Login/login_screen.dart';
import 'package:refineapp/components/rounded_button.dart';
import 'package:refineapp/components/text_field_container.dart';
import 'package:refineapp/services/auth.dart';
import 'package:refineapp/shared/constants.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:refineapp/services/auth.dart';

class PassResetScreen extends StatefulWidget {
  static String routeName = "/Password_reset";

  @override
  _PassResetScreenState createState() => _PassResetScreenState();
}

class _PassResetScreenState extends State<PassResetScreen> {
  String _userEmail = '';
  String error = '';

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: kPrimaryLightColor,
        body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 80.0, horizontal: 40.0),
            child: Form(
              key: _formKey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "assets/images/fill_info.png",
                      height: 260,
                      width: 260,
                    ),
                    SizedBox(height: size.height * 0.01),
                    Text(
                      "Reset password",
                      style: TextStyle(
                          fontSize: 23,
                          //fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Text(
                      "Please enter your Email address so we can send you the password-rest link:",
                      style: TextStyle(color: Colors.black54, fontSize: 14),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: size.height * 0.02),
                    TextFeildContainer(
                        child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Email address",
                        prefixIcon: Icon(
                          Icons.email,
                          color: yellowColor,
                        ),
                        border: InputBorder.none,
                      ),
                      validator: (val) =>
                          val.isEmpty ? 'Please enter a valid email.' : null,
                      onChanged: (val) {
                        setState(() {
                          _userEmail = val.trim();
                        });
                      },
                    )),
                    RoundedButton(
                        color: Colors.white,
                        text: "SEND REQUEST",
                        textColor: kPrimaryLightColor,
                        press: () {
                          _auth.sendPasswordResetEmail(_userEmail);
                          Navigator.of(context).pop();
                        }),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return LoginScreen();
                        }));
                      },
                      child: Text(
                        "Return to Log in",
                        style: TextStyle(
                          color: yellowColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ]),
            )));
  }
}
