import 'package:flutter/material.dart';
import 'package:whatsapp_app/widgets/uihelper.dart';

class MyLoginScreen extends StatefulWidget {
  const MyLoginScreen({super.key});

  @override
  State<MyLoginScreen> createState() => _MyLoginScreenState();
}

class _MyLoginScreenState extends State<MyLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Uihelper.customText(
                text: "Enter your phone number",
                size: 16,
                weight: FontWeight.w700,
                family: "Inter",
                color: Color.fromRGBO(0, 168, 132, 1),
              ),
              SizedBox(height: 20),
              Uihelper.customText(
                text: "WhatsApp will need to verify your phone",
                size: 14,
                weight: FontWeight.w400,
                family: "Roboto",
                color: Color.fromRGBO(94, 94, 94, 1),
              ),
              SizedBox(height: 5),
              Uihelper.customText(
                text: "number. Carrier charges may apply.",
                size: 14,
                weight: FontWeight.w400,
                family: "Roboto",
                color: Color.fromRGBO(94, 94, 94, 1),
              ),
              SizedBox(height: 5),
              Uihelper.customText(
                text: " What’s my number?",
                size: 14,
                weight: FontWeight.w400,
                family: "Roboto",
                color: Color.fromRGBO(0, 168, 132, 1),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Uihelper.custombutton(
        buttonname: "Next",
        callback: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
