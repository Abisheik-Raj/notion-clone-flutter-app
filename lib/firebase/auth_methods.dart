// ignore_for_file: avoid_print

import "package:flutter/material.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:cloud_firestore/cloud_firestore.dart";

class AuthMethods extends ChangeNotifier {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  Future<UserCredential> create(String email, String password) async {
    try {
      final UserCredential userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      final String uid = firebaseAuth.currentUser!.uid;
      firebaseFirestore.collection("users").doc(uid).set({
        "email": email,
        "password": password,
      });

      return userCredential;
    } on FirebaseAuthException catch (err) {
      String errType = err.code;
      if (errType.trim() == "email-already-in-use") {
        print("EMAIL ALREADY IN USE");
        login(email, password);
      }
      throw Exception(errType);
    }
  }

  Future<UserCredential> login(String email, String password) async {
    try {
      final UserCredential userCredential = await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      print("LOGGED IN");
      return userCredential;
    } on FirebaseAuthException catch (err) {
      throw Exception(err.code);
    }
  }
}
