import 'package:delivery_app/view/authScreens/otp_Screen.dart';
import 'package:flutter/material.dart';
//import 'package:delivery_app/view/authScreens/mobile_login.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, ___, __) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(),
          home: OTPScreen());
    });
  }
}
