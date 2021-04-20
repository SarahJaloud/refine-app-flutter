import 'package:flutter/material.dart';
import 'package:refineapp/Screens/Starting/Login/login_screen.dart';
import 'package:refineapp/components/already_have_an_account_check.dart';
import 'package:refineapp/components/text_field_container.dart';
import 'package:refineapp/components/rounded_button.dart';
import 'package:refineapp/shared/constants.dart';
//-----------------------------------------//
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:refineapp/services/auth.dart';
import 'package:refineapp/shared/loading.dart';

class SignUpScreen extends StatefulWidget {
  final Function myToggle;
  SignUpScreen({this.myToggle});

  static String routeName = "/sign_up";

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  bool loading = false;
  // text field state
  String _userEmail = '';
  String _userPassword = '';
  String _name = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return loading
        ? Loading()
        : Scaffold(
            backgroundColor: kPrimaryLightColor,
            body: SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: size.height * 0.04),
                    Image.asset(
                      "assets/images/signup.png",
                      height: 250,
                      width: 250,
                    ),
                    Text(
                      "SIGN UP",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: size.height * 0.02),
                    //--------------------------------
                    TextFeildContainer(
                        child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Your name",
                        prefixIcon: Icon(
                          Icons.person,
                          color: yellowColor,
                        ),
                        border: InputBorder.none,
                      ),
                      validator: (val) =>
                          val.isEmpty ? 'Please enter your name.' : null,
                      onChanged: (val) {
                        setState(() => _name = val);
                      },
                    )),

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
                        setState(() => _userEmail = val);
                      },
                    )),
                    //--------------------------------
                    TextFeildContainer(
                      child: (TextFormField(
                        decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: Icon(
                            Icons.lock_rounded,
                            color: yellowColor,
                          ),
                          border: InputBorder.none,
                        ),
                        obscureText: true,
                        validator: (val) => val.length < 6
                            ? 'Password must be 6+ chars long.'
                            : null,
                        onChanged: (val) {
                          setState(() => _userPassword = val);
                        },
                      )),
                    ),
                    SizedBox(height: size.height * 0.01),
                    //--------------------------------
                    RoundedButton(
                        color: Colors.white,
                        textColor: kPrimaryColor,
                        text: "SIGN UP",
                        press: () async {
                          Navigator.of(context).pop();
                          Navigator.of(context)
                              .pushReplacementNamed('/welcome_quiz');
                          if (_formKey.currentState.validate()) {
                            dynamic result =
                                await _auth.signUpWithEmailAndPassword(
                                    _userEmail, _userPassword, _name);
                            if (result == null) {
                              setState(() {
                                error = 'Please enter a valid email';
                              });
                            }
                          }
                        }),
                    //--------------------------------
                    AlreadyHaveAnAccountCheck(
                        login: false,
                        press: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LoginScreen();
                          }));
                        }),
                    Text(
                      error,
                      style: TextStyle(color: Colors.red, fontSize: 15.0),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
