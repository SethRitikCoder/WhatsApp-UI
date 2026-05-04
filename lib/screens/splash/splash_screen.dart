import 'dart:async';

import 'package:flutter/material.dart';

import 'package:whatsapp_app/screens/OnBoarding/onboardingscreen.dart';
import 'package:whatsapp_app/widgets/uihelper.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => OnBoardingScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/whatsapp 1.png",
              height: 83,
              width: 83,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            Uihelper.customText(
              text: "WhatsApp\n  *Powerd By Ritik",
              size: 18,
              weight: FontWeight.bold,
              family: "inter",
            ),
          ],
        ),
      ),
    );
  }
}
