import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../service/Auth/models/user.dart';

class FbAuthentication {
  static final _auth = FirebaseAuth.instance;
  static final _db = FirebaseFirestore.instance;

  static dynamic loginWithEmailAndPassword(String email, String password) async {
    return await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  static dynamic signUpWithEmailAndPassword(String email, String password) async {
    return await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  /////////////////////

  static logoutUser() {
    _auth.signOut();
  }

  /////////////////

  static Future<UserModel?> getUserData(BuildContext context, String email) async {
    UserModel? userModel;
    try {
      DocumentSnapshot snapshot = await _db.collection('Users').doc(email).get();

      if (snapshot.get("role").toString().isNotEmpty) {
        userModel = UserModel.fromFirebase(snapshot as DocumentSnapshot<Map<String, dynamic>>);
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: ${e.toString()}'),));
      log(e.toString());
    }
    return userModel;
  }

  //////////////////////

  static Future<bool> addNewUser(BuildContext context, UserModel user) async {
    try {
      await _db.collection("Users").doc(user.email).set(user.toFirebase());
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Logged in by: ${user.email}')));
      return true;
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: ${error.toString()}')),
      );
      return false;
    }
  }

  ///////////////

  static Future<void> updateUserToken(BuildContext context, String email, String newToken) async {
    try {
      await _db.collection("Users").doc(email).update(
          {
            "token": newToken
          }
      );
    } catch (error) {
      var snackBar = SnackBar(content: Text('Error update token, please logout and login again'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  //////////////////////////

}
