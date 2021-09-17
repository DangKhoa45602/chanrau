import 'package:faceway/views/Login/LoginPage.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<User?> registerAccount(
    String name, String email, String password) async {
  FirebaseAuth _auth = FirebaseAuth.instance;
  final ref = FirebaseDatabase.instance;

  try {
    User? user = (await _auth.createUserWithEmailAndPassword(
            email: email, password: password))
        .user;
    if (user != null) {
      ref.reference().child("Users").push().set({'id': user.uid, 'name': name});
      print("Account created Succesfull!");
      return user;
    } else {
      print("Account created Failed!");
      return user;
    }
  } catch (e) {
    print(e);
    return null;
  }
}

Future<User?> login(String email, String password) async {
  FirebaseAuth _auth = FirebaseAuth.instance;

  try {
    User? user = (await _auth.signInWithEmailAndPassword(
            email: email, password: password))
        .user;
    if (user != null) {
      print("Login Succesfull!");
      return user;
    } else {
      print("Login Failed!");
      return user;
    }
  } catch (e) {
    print(e);
    return null;
  }
}

Future logout(BuildContext context) async {
  FirebaseAuth _auth = FirebaseAuth.instance;
  try {
    await _auth.signOut().then((value) => {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => LoginPage()))
        });
  } catch (e) {
    print("error");
  }
}
