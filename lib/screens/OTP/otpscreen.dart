import 'package:flutter/material.dart';
import 'package:whatsapp_app/screens/PROFILE/profile.dart';
import 'package:whatsapp_app/widgets/uihelper.dart';

class MyOtpScreen extends StatefulWidget {
  final String number;
  const MyOtpScreen({super.key, required this.number});

  @override
  State<MyOtpScreen> createState() => _MyOtpScreenState();
}

class _MyOtpScreenState extends State<MyOtpScreen> {
  TextEditingController otp1controller = TextEditingController();
  TextEditingController otp2controller = TextEditingController();
  TextEditingController otp3controller = TextEditingController();
  TextEditingController otp4controller = TextEditingController();
  TextEditingController otp5controller = TextEditingController();
  TextEditingController otp6controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.07),
          Uihelper.customText(
            text: "Verifying your number",
            size: 18,
            weight: FontWeight.w700,
            family: "Inter",
            color: Color.fromRGBO(0, 168, 132, 1),
          ),
          SizedBox(height: screenheight * 0.07),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Uihelper.customText(
                text: "You’ve tried to register",
                size: 14,
                weight: FontWeight.w400,
                family: "Roboto",
                color: Color.fromRGBO(94, 94, 94, 1),
              ),
              Uihelper.customText(
                text: " +91${widget.number.toString()}",
                size: 14,
                weight: FontWeight.w400,
                family: "Roboto",
                color: Color.fromRGBO(94, 94, 94, 1),
              ),
            ],
          ),
          SizedBox(height: 5),
          Uihelper.customText(
            text: "recently. Wait before requesting an sms or a call.",
            size: 14,
            weight: FontWeight.w400,
            family: "Roboto",
            color: Color.fromRGBO(94, 94, 94, 1),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Uihelper.customText(
                text: " with your code.",
                size: 14,
                color: Color.fromRGBO(94, 94, 94, 1),
                weight: FontWeight.w400,
                family: "Roboto",
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Uihelper.customText(
                  text: " Wrong number?",
                  size: 14,
                  color: Color.fromRGBO(0, 168, 132, 1),
                  weight: FontWeight.w400,
                  family: "Roboto",
                ),
              ),
            ],
          ),
          SizedBox(height: screenheight * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Uihelper.customContainer(otp1controller, context),
              SizedBox(width: 5),
              Uihelper.customContainer(otp2controller, context),
              SizedBox(width: 5),
              Uihelper.customContainer(otp3controller, context),
              SizedBox(width: 5),
              Uihelper.customContainer(otp4controller, context),
              SizedBox(width: 5),
              Uihelper.customContainer(otp5controller, context),
              SizedBox(width: 5),
              Uihelper.customContainer(otp6controller, context),
              SizedBox(width: 5),
            ],
          ),
          SizedBox(height: screenheight * 0.04),
          Uihelper.customText(
            text: "Didn’t receive code?",
            size: 14,
            family: "Roboto",
            weight: FontWeight.w400,
            color: Color.fromRGBO(0, 168, 132, 1),
          ),
        ],
      ),
      floatingActionButton: Uihelper.custombutton(
        buttonname: "Next",
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyProfileScreen()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
