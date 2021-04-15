import 'package:flutter/material.dart';
import 'package:refineapp/Screens/Login/login_screen.dart';
import 'package:refineapp/components/already_have_an_account_check.dart';
import 'package:refineapp/components/text_field_container.dart';
import 'package:refineapp/components/rounded_button.dart';
import 'package:refineapp/shared/constants.dart';
//-----------------------------------------//
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:refineapp/services/auth.dart';
//import 'package:refineapp/shared/loading.dart';

class SignUpScreen extends StatefulWidget {
  final Function myToggle;
  SignUpScreen({this.myToggle});

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
  String error = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
                height: 300,
                width: 300,
              ),
              Text(
                "SIGN UP",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: size.height * 0.01),
              //--------------------------------
              TextFeildContainer(
                  child: TextFormField(
                decoration: InputDecoration(
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
                    prefixIcon: Icon(
                      Icons.lock_rounded,
                      color: yellowColor,
                    ),
                    border: InputBorder.none,
                  ),
                  obscureText: true,
                  validator: (val) =>
                      val.length < 6 ? 'Password must be 6+ chars long.' : null,
                  onChanged: (val) {
                    setState(() => _userPassword = val);
                  },
                )),
              ),
              //--------------------------------
              RoundedButton(
                  color: Colors.white,
                  textColor: kPrimaryColor,
                  text: "SIGN UP",
                  press: () async {
                    if (_formKey.currentState.validate()) {
                      dynamic result = await _auth.signUpWithEmailAndPassword(
                          _userEmail, _userPassword);
                      if (result == null) {
                        setState(() {
                          error = 'Please supply a valid email';
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

  /* @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return loading
        ? Loading()
        : Scaffold(
            body: SingleChildScrollView(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: size.height * 0.08),
                    Positioned(
                        child: Image.asset(
                      "assets/images/signup.png",
                      height: 300,
                      width: 300,
                    )),
                    Text(
                      "SIGN UP",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Text(
                      error,
                      style: TextStyle(color: Colors.red, fontSize: 16.0),
                    ),
                    //SizedBox(height: size.height * 0.01),
                    //-----------------------------
                    RoundedInputField(
                        icon: Icons.email,
                        hintText: "Enter Your Email",
                        onChanged: (val) {
                          setState(() => _userEmail = val);
                        }),
                    //-----------------------------
                    RoundedPasswordField(
                      onChanged: (val) {
                        setState(() => _userPassword = val);
                      },
                    ),
                    //-----------------------------
                    RoundedButton(
                        text: "SIGNUP",
                        textColor: kPrimaryLightColor,
                        color: Colors.white,
                        press: () async {
                          if (_formKey.currentState.validate()) {
                            dynamic result =
                                await _auth.signUpWithEmailAndPassword(
                                    _userEmail, _userPassword);
                            if (result == null) {
                              setState(() {
                                error = 'Please supply a valid email';
                              });
                            }
                            //print(_userEmail);
                            //print(_userPassword);
                          }
                        }),
                    AlreadyHaveAnAccountCheck(
                        login: false,
                        press: () {
                          widget.myToggle();
                        }),
                  ],
                )));
  } */
}
