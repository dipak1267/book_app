import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:project_beta/services/auth/auth.dart';
import 'package:project_beta/src/common_widgets/snackbars.dart';

class GoogleAuthentication {
  static Future<void> singOut({required BuildContext context}) async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    try {
      await googleSignIn.signOut();
    } catch (e) {
      Snackbars.showTextSnackBar(
        text: "Error signing out. Try again.",
        context: context,
        type: "error",
      );
    }
  }

  static Future<User?> signInWithGoogle({required BuildContext context}) async {
    final GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      await AuthService().loginWithGoogle(
        context,
        credential,
      );
    }
  }
}
