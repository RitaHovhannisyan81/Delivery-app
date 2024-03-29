import 'dart:async';
import 'package:delivery_app/controller/provider/authProvider/mobile_auth_provider.dart';
import 'package:delivery_app/controller/services/authServices/mobile_auth_services.dart';
import 'package:delivery_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController otpController = TextEditingController();
  StreamController<ErrorAnimationType> errorController =
      StreamController<ErrorAnimationType>();
  int resendOTPCounter = 60;
  decreaseOTPCounter() async {
    if (resendOTPCounter > 0) {
      setState(() {
        resendOTPCounter -= 1;
      });
      await Future.delayed(const Duration(seconds: 1), () {
        decreaseOTPCounter();
      });
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      decreaseOTPCounter();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Stack(
        children: [
          Positioned(
            left: 30,
            bottom: 10,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(5),
                  backgroundColor: grey50,
                  elevation: 2),
              child: const FaIcon(
                FontAwesomeIcons.arrowLeft,
                size: 15,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            right: 15,
            bottom: 10,
            child: ElevatedButton(
              onPressed: () {
                MobileAuthServices.verifyOTP(
                  context: context,
                  otp: otpController.text.trim()
                );
              },
              style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                  backgroundColor: grey50,
                  elevation: 2),
              child: const Row(
                children: [
                  Text(
                    'Next',
                    style: TextStyle(fontSize: 13),
                  ),
                  SizedBox(width: 4),
                  FaIcon(
                    FontAwesomeIcons.arrowRight,
                    size: 15,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
              'Enter the 4-digit code sent to you at ${context.read<MobileAuthProvider>().mobileNumber!}',
              style: const TextStyle(
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
            animationDuration: const Duration(milliseconds: 300),
            backgroundColor: Colors.blue.shade50,
            enableActiveFill: true,
            errorAnimationController: errorController,
            controller: otpController,
            onCompleted: (v) {},
            onChanged: (value) {},
            beforeTextPaste: (text) {
              return true;
            },
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey),
                child: Text("I heven't recieved a code (0.$resendOTPCounter)",
                    style: const TextStyle(fontSize: 16, color: Colors.black)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
