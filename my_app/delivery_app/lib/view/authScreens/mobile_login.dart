import 'package:country_picker/country_picker.dart';
import 'package:delivery_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class MobileLoginUser extends StatefulWidget {
  const MobileLoginUser({super.key});

  @override
  State<MobileLoginUser> createState() => _MobileLoginUserState();
}

class _MobileLoginUserState extends State<MobileLoginUser> {
  String selectedCountry = '+374';
  TextEditingController mobileController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 14),
      child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 14),
          children: [
            const SizedBox(height: 50),
            const Text('Enter your mobile number',
                style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 18)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    showCountryPicker(
                      context: context,
                      showPhoneCode:
                          true, // optional. Shows phone code before the country name.
                      onSelect: (Country country) {
                        setState(() {
                          selectedCountry = '+${country.phoneCode}';
                        });
                      },
                    );
                  },
                  child: Container(
                      height: 50,
                      width: 120,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: const Color.fromARGB(255, 201, 199, 199)),
                          child:Text(selectedCountry,style:const TextStyle(fontSize: 14))
                          ),
                ),
                SizedBox(
                  width: 220,
                  child: TextField(
                    controller:mobileController,
                    cursorColor: black,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 14),
                      hintText: 'Mobile number',
                      filled: true,
                      fillColor: Colors.grey[300],
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(3),
                      borderSide:const BorderSide(color: Color.fromARGB(255, 201, 199, 199)),
                      ),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(3),
                      borderSide: const BorderSide(color: Color.fromARGB(255, 225, 33, 33)),
                      ),
                      disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(3),
                      borderSide: const BorderSide(color: Color.fromARGB(255, 201, 199, 199),
                      ),)

                    ),
                    ),
                  ),
              ],
            ),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3,vertical: 14),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0),
  ),
                    backgroundColor: black, minimumSize: const Size(90, 50)
                    ),
                child: const Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Next',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                    Positioned(
                        right: 2,
                        child: Icon(Icons.arrow_forward,
                            color: Colors.white, size: 18))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            const Text(
              'By proceeding you consent to get calls,Whatsapp os SMS messages,including by automated, from uber and its affiliates to the number provided',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.grey,
              ),
            ),
              const SizedBox(
              height: 4,
              ),
            const Row(
              children: [
                Expanded(
                  child: Divider(color: Colors.grey),
                ),
                Center(
                  child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3,vertical: 14),
                    child: Text('or',
                        style: TextStyle(
                         // decoration: TextDecoration.lineThrough,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                        )
                        ),
                        ),
                )
                      ],
            ),
            ElevatedButton(onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2.0),),
            minimumSize: const Size(150,50),
            elevation: 2),
            child:const Stack(children: [
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Continue with google',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ),
                      Positioned(
                        left: 8,
                        child: FaIcon(
                          FontAwesomeIcons.google,
                            color: Colors.black,
                            size: 18))
            ],),)
            ]
            ),

    )
    )
    );
  }
}
