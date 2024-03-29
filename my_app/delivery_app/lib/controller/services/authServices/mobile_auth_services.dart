//import 'dart:math';
import 'package:delivery_app/controller/provider/authProvider/mobile_auth_provider.dart';
import 'package:delivery_app/view/authScreens/mobile_login.dart';
import 'package:delivery_app/view/authScreens/otp_screen.dart';
import 'package:delivery_app/view/bottomNavigationBar/bottom_navigation_bar.dart';
import 'package:delivery_app/view/signinLogicScreen/signin_logic_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:delivery_app/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class MobileAuthServices {
  static bool checkAuthentication(BuildContext context) {
    User? user = auth.currentUser;
    if (user == null) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const MobileLoginUser()),
        (route)=>false);
      return false;
    }
     Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const BottomNavigationBarUberEats()),
        (route)=>false);
    return true;
  }

  static receiveOTP(
      {required BuildContext context, required  mobileNo}) async {
    try {
      await auth.verifyPhoneNumber(
        phoneNumber: mobileNo,
        verificationCompleted: (PhoneAuthCredential credentials) {
          (credentials.toString);
        },
        verificationFailed: (FirebaseAuthException exception) {
          (exception.toString());
          throw Exception(exception);
        },
        codeSent: (verificationId, resendToken) {
          context
              .read<MobileAuthProvider>()
              .updateVerificationID(verificationId);
          Navigator.push(
              context,
              PageTransition(
                child: const OTPScreen(),
                type: PageTransitionType.rightToLeft,
              ));
        },
        codeAutoRetrievalTimeout: (verificationId) {},
      );
    } catch (e) {
      (e.toString());
      throw Exception(e);
    }
  }

  static verifyOTP({required BuildContext context, required otp}) async {
    try {
      AuthCredential credential = PhoneAuthProvider.credential(
        smsCode: otp,
        verificationId: context.read<MobileAuthProvider>().verificationID!,
      );
      await auth.signInWithCredential(credential);
      Navigator.push(
          // ignore: use_build_context_synchronously
          context,
          PageTransition(
            child: const SignInLogicScreen(),
            type: PageTransitionType.rightToLeft,
          ));
    } catch (e) {
      (e.toString());
      throw Exception(e);
    }
  }
}
