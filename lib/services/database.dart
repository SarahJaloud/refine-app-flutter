import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_core/firebase_core.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

  // our collection reference
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('userData');

  Future<void> updateUserData(String name, String level) async {
    return await userCollection.doc(uid).set({
      'name': name,
      'level': level,
    });
  }
}
