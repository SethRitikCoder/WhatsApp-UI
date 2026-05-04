import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_app/screens/login/loginscreen.dart';
import 'package:whatsapp_app/widgets/uihelper.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/image 1 (1).png",
              height: 250,
              width: 250,
            ),
            SizedBox(height: 30),
            Uihelper.customText(
              text: "Welcome to WhatsApp",
              size: 20,
              family: "Inter",
              weight: FontWeight.w400,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
            SizedBox(height: 20),
            // Uihelper.customText(
            //   text: "Read out Privacy Policy. Tap “Agree and continue”  ",
            //   size: 14,
            // ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Read out ",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(94, 94, 94, 1),
                    ),
                    // recognizer: LongPressGestureRecognizer()
                    // ..onLongPress=(){}
                  ),
                  TextSpan(
                    text: "Privacy Policy. ",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                  TextSpan(
                    text: "Tap “Agree and continue” ",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(94, 94, 94, 1),
                    ),
                  ),
                  TextSpan(
                    text: " \n                to accept the ",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(94, 94, 94, 1),
                    ),
                  ),
                  TextSpan(
                    text: "Teams of Service.",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 270),
          ],
        ),
      ),
      floatingActionButton: Uihelper.custombutton(
        buttonname: "Agree and continue",
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyLoginScreen()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.all(30.0),
      //   child: Uihelper.custombutton(
      //     buttonname: "Agree and continue",
      //     callback: () {},
      //   ),
      // ),
    );
  }
}
