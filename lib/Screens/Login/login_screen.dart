import 'package:flutter/material.dart';
import 'package:refineapp/Screens/SignUp/sign_up_screen.dart';
import 'package:refineapp/components/already_have_an_account_check.dart';
import 'package:refineapp/components/rounded_button.dart';
import 'package:refineapp/components/text_field_container.dart';
import '../../../shared/constants.dart';
import 'package:refineapp/services/auth.dart';

class LoginScreen extends StatefulWidget {
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
              SizedBox(height: size.height * 0.03),
              Text(
                "LOG IN",
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
                validator: (val) => val.isEmpty ? 'Enter an email' : null,
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
                      val.length < 6 ? 'Enter a password 6+ chars long' : null,
                  onChanged: (val) {
                    setState(() => _userPassword = val);
                  },
                )),
              ),
              //--------------------------------
              RoundedButton(
                  color: Colors.white,
                  textColor: kPrimaryColor,
                  text: "LOG IN",
                  press: () async {
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
