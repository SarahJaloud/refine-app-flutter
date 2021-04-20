import 'package:firebase_auth/firebase_auth.dart';
import 'package:refineapp/Screens/EnglishQuiz/Welcome/welcome_quiz.dart';
import 'package:refineapp/Screens/Starting/Welcome/Welcome_screen.dart';
import 'package:refineapp/model/user.dart';

class AuthService {
  // _auth to interact with FirebaseAuth
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // creating user obj based on firebase user
  UserC _fromFirebaseUser(User user) {
    return user != null ? UserC(uid: user.uid) : null;
  }

  // auth change user stream
  // stream sends values made from firebase to out UI
  Stream<UserC> get user {
    return _auth.authStateChanges().map(_fromFirebaseUser);
  }

  // log in with email and password
  Future logInWithEmailAndPassword(
      String _userEmail, String _userPassword) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: _userEmail, password: _userPassword);
      User user = result.user;
      return user;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // sign up with email and password
  // when we call this function from different widgets its going to take email+password
  // and try to create the user with them
  Future signUpWithEmailAndPassword(
      String _userEmail, String _userPassword, String _name) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: _userEmail, password: _userPassword);
      User user = result.user;
      // creating new doc for the user with the userid
      //await DatabaseService(uid: user.uid).updateUserData(name, userName, gender, age)
      return _fromFirebaseUser(user);
    } catch (error) {
      print(error.toString());
      return WelcomeQuiz();
    }
  }

  // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return WelcomeScreen();
    }
  }

  // Reset Password
  Future sendPasswordResetEmail(String _userEmail) async {
    return _auth.sendPasswordResetEmail(email: _userEmail);
  }

  //forgot password
  /*Future resetPassword(String _userEmail) async {
    await _auth.sendPasswordResetEmail(email: _userEmail);
  } */
}
