import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_core/firebase_core.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

  // our collection reference
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('userData');

  Future<void> updateUserData(String users, String levels) async {
    return await userCollection.doc(uid).set({
      'users': users,
      'levels': levels,
    });
  }
}
