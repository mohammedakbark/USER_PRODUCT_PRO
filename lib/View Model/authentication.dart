import 'dart:async';

import 'package:email_otp/email_otp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hardware_pro/Model/user_model.dart';
import 'package:hardware_pro/utils/inntence.dart';
import 'package:hardware_pro/view/sign/lets_go.dart';
import 'package:hardware_pro/view/sign/signin.dart';

class Authentication {
  dynamic newUID;
  FirebaseAuth auth = FirebaseAuth.instance;
  bool isOtpVerified = false;
  // bool isEmailVerified = false;
  // Timer? timer;
  EmailOTP myAuth = EmailOTP();
  signup(email, password, context, UserModel usermodel) async {
    try {
      UserCredential userCredential = await auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) async {
        await firestore.addUser(value.user!.uid, usermodel);
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => ScreenSignIn()),
            (route) => false);
        return value;
      });

      print("*********************$newUID**********************");
      return userCredential.user!.uid;
    } catch (e) {
      return customeShowDiolog("$e", context);
    }
  }

  signOutFromMAil(context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const LetsGo()),
        (route) => false);
  }

  Future<String> login(email, password, context, toPage) async {
    try {
      final credential = await auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) => Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => toPage),
              (route) => false));

      return credential.user!.uid;
    } catch (e) {
      return customeShowDiolog("$e", context);
    }
  }

//-------------------------------OTP--------------------------------------
  configureEmail(email) {
    myAuth.setConfig(
        appEmail: "productcarepro@gmail.com",
        appName: "Product Care Pro.",
        userEmail: email,
        otpLength: 4,
        otpType: OTPType.digitsOnly);
    sendOtp();
  }

  sendOtp() {
    myAuth.sendOTP();
  }

  verifyOtp(otp, email, password, context, usermodel) async {
    isOtpVerified = myAuth.verifyOTP(otp: otp);
    if (isOtpVerified) {
      
      await signup(email, password, context, usermodel);
    } else {
      return customeShowDiolog("Otp is not correct", context);
    }
  }

//------------------------------------------------------------------------
  customeShowDiolog(String title, BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => AlertDialog(
        content: Text(
          title,
        ),
        actions: <Widget>[
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK"))
        ],
      ),
    );
  }
}

customeSuccesfulShowDiolog(String title, BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => AlertDialog(
        content: Text(
          title,
        ),
        actions: <Widget>[
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK"))
        ],
      ),
    );
  }
