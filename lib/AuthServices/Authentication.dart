// ignore_for_file: non_constant_identifier_names, file_names, avoid_print
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_application_4/AuthServices/database.dart';
class Authentication {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Stream<User?> get user {
    return _auth.authStateChanges().map((User? user) => user);
  }
  Future UserRegistrationEmail(String email, String password) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // dynamic studentuid = _auth.currentUser!.uid;
      // DatabaseService(uid: studentuid)
      // .updateUserData("0", "none", "none", "none", "0");

      await _firestore.collection('Student').doc(userCredential.user?.uid).set({
        'name': "",
        'rollNo': "",
        'course': "",
        'section': "",
        'semester': "",
      });

      return userCredential.user?.uid;
    } catch (e) {
      print(e);
    }
  }

  Stream<DocumentSnapshot<Map<String, dynamic>>> userDetails(String uid) {
    return _firestore.collection('Student').doc(uid).snapshots();
  }

  Future<void> updateUserDetails(String rollNo, String course, String semester,
      String name, String section) async {
    try {
      await _firestore
          .collection('Student')
          .doc(_auth.currentUser?.uid)
          .update({
        "name": name,
        'rollNo': rollNo,
        'course': course,
        'section': section,
        'semester': semester,
      });
    } catch (e) {
      print(e);
    }
  }

  Future UserSignInEmail(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return userCredential.user?.uid;
    } catch (e) {
      print(e);
    }
  }

  Future UserSignOut() async {
    try {
      await _auth.signOut();
    } catch (error) {
      print(error);
    }
  }
}
