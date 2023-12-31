import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class GeneralProvider extends ChangeNotifier {
  late User user;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  void getCurrentUser() {
    user = _auth.currentUser!;
    notifyListeners();
    print(user.email);
  }
  
}
