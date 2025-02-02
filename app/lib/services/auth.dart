import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Auth {
  BuildContext context;
  Auth(this.context);
  void signIn(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Logged In sucessfully")));
      Navigator.popAndPushNamed(context, '/home');
    } on FirebaseAuthException catch (e) {
      String message = "";
      if (e.code == 'wrong-password') {
        message = "The password you have entered is wrong";
      } else if (e.code == 'invalid-email') {
        message = "Please enter a valid email";
      } else if (e.code == 'user-not-found') {
        message = "User doesnot exist";
      } else {
        message = "We are facing some internal issues. Please try again later";
      }
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("$message")));
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Something went wrong")));
    }
  }
}
