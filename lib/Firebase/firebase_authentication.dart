// ignore_for_file: use_build_context_synchronously, unused_local_variable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event_booking_app/modules/artist/artist_dashboard/artist_dashboard.dart';
import 'package:event_booking_app/modules/auth/sign_in.dart';
import 'package:event_booking_app/modules/organizer/org_crl.dart';
import 'package:event_booking_app/modules/organizer/org_home/homepage.dart';
import 'package:event_booking_app/modules/user/user_ctrl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<User?> signInWithGoogle() async {
  try {
    FirebaseAuth auth = FirebaseAuth.instance;
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    if (googleUser == null) {
      // The user canceled the sign-in process.
      return null;
    }

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final UserCredential userCredential =
        await auth.signInWithCredential(credential);
    final User? user = userCredential.user;

    return user;
  } catch (e) {
    print("Error signing in with Google: $e");
    return null;
  }
}

Future<void> signUp(
    String email, String password, String rool, formkey, context) async {
  FirebaseAuth auth = FirebaseAuth.instance;
  const CircularProgressIndicator();
  if (formkey.currentState!.validate()) {
    await auth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) => {postDetailsToFirestore(email, rool, context)})
        // ignore: body_might_complete_normally_catch_error
        .catchError((e) {});
  }
}

postDetailsToFirestore(String email, String rool, BuildContext context) async {
  FirebaseAuth auth = FirebaseAuth.instance;
  var user = auth.currentUser;
  CollectionReference ref = FirebaseFirestore.instance.collection('users');
  ref.doc(user!.uid).set({'email': email, 'rool': rool});
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => const LoginScreen()));
}

void route(BuildContext context) {
  User? user = FirebaseAuth.instance.currentUser;
  var auth = FirebaseFirestore.instance
      .collection('users')
      .doc(user!.uid)
      .get()
      .then((DocumentSnapshot documentSnapshot) {
    if (documentSnapshot.exists) {
      String uid = user.uid;
      if (documentSnapshot.get('rool') == "Organizer") {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const OrgController(),
          ),
        );
      } else if (documentSnapshot.get('rool') == "Artist") {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ArtistHomeScreen(uid: uid),
          ),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const UserController(),
          ),
        );
      }
    } else {
      if (kDebugMode) {
        print('Document does not exist on the database');
      }
    }
  });
}

Future<void> signIn(
    String email, String password, formKey, BuildContext context) async {
  if (formKey.currentState!.validate()) {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      route(context);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        if (kDebugMode) {
          print('No user found for that email.');
        }
      } else if (e.code == 'wrong-password') {
        if (kDebugMode) {
          print('Wrong password provided for that user.');
        }
      }
    }
  }
}

Future<void> logout() async {
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final FirebaseAuth auth = FirebaseAuth.instance;

  try {
    await googleSignIn.signOut();
  } catch (e) {
    print("Error signing out from Google: $e");
  }

  try {
    await auth.signOut();
  } catch (e) {
    print("Error signing out from Firebase: $e");
  }
}
