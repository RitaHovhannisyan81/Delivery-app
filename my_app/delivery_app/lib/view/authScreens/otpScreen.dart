import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController otpController = TextEditingController();
  StreamController<ErrorAnimationType> errorController = StreamController<ErrorAnimationType>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text('Enter the 4-digit code sent to you at 05599224612',
              style: TextStyle(
                fontSize: 16,
              )),
          const SizedBox(
            height: 30,
          ),
          PinCodeTextField(
            appContext: context,
            length: 6,
            obscureText: false,
            animationType: AnimationType.fade,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(5),
              fieldHeight: 50,
              fieldWidth: 40,
              activeFillColor: Colors.white,
            ),
            animationDuration:const Duration(milliseconds: 300),
            backgroundColor: Colors.blue.shade50,
            enableActiveFill: true,
            errorAnimationController: errorController,
            controller: otpController,
            onCompleted: (v) {},
            onChanged: (value) {},
            beforeTextPaste: (text) {
              return true;
            },
          )
        ],
      ),
    );
  }
}
