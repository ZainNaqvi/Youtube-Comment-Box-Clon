import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_flutter_project/models/users.dart';
import 'package:firebase_flutter_project/resources/storageMethods.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  // creating the sign in methods for the user here....
  // signin with email and password
  Future<String> createUser({
    required String email,
    required String fullName,
    required String password,
    required String campus,
    required String department,
    required Uint8List profilePic,
  }) async {
    String res = "Some error Occured";
    try {
      // start how to sign in the user with firebase Auth methods and save it to the fireabase firestore
      UserCredential _userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      print(_userCredential.user!.uid);
      // save the image file to teh storage
      String imageURL = await StorageMethods().saveImageToFirebaseStorage(
          childName: "ProfilePics", file: profilePic, isPost: false);

      UserCreaditials userData = UserCreaditials(
        fullName: fullName,
        email: email,
        campus: campus,
        department: department,
        uid: _userCredential.user!.uid,
        profilePic: profilePic,
      );
      // save the user information to the database
      await _firebaseFirestore
          .collection("users")
          .doc(_userCredential.user!.uid)
          .set(userData.toJson());
      res = "Success";
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  // login user with email and password
  Future<String> login({
    required String email,
    required String password,
  }) async {
    String res = "Some error occured";
    try {
      UserCredential _userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      res = "Success";
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}
