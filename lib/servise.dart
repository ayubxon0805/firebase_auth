import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class AuthService {
  AuthService._();
  static AuthService instance = AuthService._();
  static final _auth = FirebaseAuth.instance;
  Future<User?> signUpUser(
    BuildContext context,
    String email,
    String password,
  ) async {
    try {
      var authResult = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      User? user = authResult.user;
      debugPrint(user.toString());
      return user;
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
    return null;
  }

  static Future<Firebase?> signOut(
    BuildContext context,
  ) async {
    _auth.signOut();

    return null;
  }
}
