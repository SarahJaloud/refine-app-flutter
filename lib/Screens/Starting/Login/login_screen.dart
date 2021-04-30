import 'package:flutter/material.dart';
import 'package:refineapp/Screens/Starting/SignUp/sign_up_screen.dart';
import 'package:refineapp/Screens/Starting/reset/password_reset.dart';
import 'package:refineapp/components/already_have_an_account_check.dart';
import 'package:refineapp/components/rounded_button.dart';
import 'package:refineapp/components/text_field_container.dart';
import '../../../shared/constants.dart';
import 'package:refineapp/services/auth.dart';

class LoginScreen extends StatefulWidget {
  final Function myToggle;

  static String routeName = "/login";
  LoginScreen({this.myToggle});
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();

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
              SizedBox(height: size.height * 0.08),
              Image.asset(
                "assets/images/login.png",
                height: 250,
                width: 250,
              ),
              SizedBox(height: size.height * 0.02),
              Text(
                "LOG IN",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: size.height * 0.04),
              //--------------------------------
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
                validator: (val) => val.isEmpty ? 'Enter an email' : null,
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
                  validator: (val) =>
                      val.length < 6 ? 'Enter a password 6+ chars long' : null,
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
                  text: "LOG IN",
                  press: () async {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushReplacementNamed('/home');
                    if (_formKey.currentState.validate()) {
                      dynamic result = await _auth.logInWithEmailAndPassword(
                          _userEmail, _userPassword);
                      if (result == null) {
                        setState(() {
                          error = 'Could not sign in with those credentials';
                        });
                      }
                    }
                  }),
              //--------------------------------
              AlreadyHaveAnAccountCheck(press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }));
              }),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 4),
                child: Container(
                  height: 1.5,
                  width: 200.0,
                  color: kPrimaryColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return PassResetScreen();
                  }));
                },
                child: Text(
                  "Forgot password?",
                  style: TextStyle(
                    color: yellowColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
