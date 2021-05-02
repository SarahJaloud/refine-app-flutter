import 'package:firebase_auth/firebase_auth.dart';
import 'package:refineapp/Screens/Home/home_screen.dart';
import 'package:refineapp/Screens/Starting/EnglishQuiz/Welcome/welcome_quiz.dart';
import 'package:refineapp/Screens/Starting/Welcome/Welcome_screen.dart';
import 'package:refineapp/model/user.dart';

class AuthService {
  // using _auth to interact with FirebaseAuth
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // creating user obj based on FirebaseUser
  // ignore: missing_return
  UserC _fromFirebaseUser(User user) {
    return user != null ? UserC(uid: user.uid) : null;
  }

  // auth change user stream
  // stream sends values made from firebase to out our UI
  Stream<UserC> get user {
    return _auth.authStateChanges().map(_fromFirebaseUser);
  }

  // log in with user email and password
  Future logInWithEmailAndPassword(
      String _userEmail, String _userPassword) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: _userEmail, password: _userPassword);
      User user = result.user;
      return user;
    } catch (error) {
      print(error.toString());
      return HomeScreen();
    }
  }

  // sign up with email and password
  // when calling function from different widgets
  // the email and password are gonna be taken to create a new user from them
  Future signUpWithEmailAndPassword(
      String _userEmail, String _userPassword, String _name) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: _userEmail, password: _userPassword);
      // ignore: unused_local_variable
      User user = result.user;
      // creating new doc for the user with the userid
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
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

  // password reset
  Future sendPasswordResetEmail(String _userEmail) async {
    return _auth.sendPasswordResetEmail(email: _userEmail);
  }

  // Future<UserC> getUser() async {
  //   var firebaseUser = _auth.currentUser;
  //   return UserC(firebaseUser?.uid, displayName: firebaseUser?.displayName);
  // }
}
