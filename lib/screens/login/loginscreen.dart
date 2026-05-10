import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_app/screens/OTP/otpscreen.dart';
import 'package:whatsapp_app/widgets/uihelper.dart';

class MyLoginScreen extends StatefulWidget {
  const MyLoginScreen({super.key});

  @override
  State<MyLoginScreen> createState() => _MyLoginScreenState();
}

class _MyLoginScreenState extends State<MyLoginScreen> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  String selectedValue = "India";
  List<String> country = [
    "India",
    "Itali",
    "America",
    "Srilanka",
    "Afganistan",
    "Dubai",
    "Nepal",
    "China",
  ];
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
                size: 18,
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

              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: DropdownButtonFormField(
                  items: country
                      .map(
                        (element) => DropdownMenuItem(
                          value: element,
                          child: Text(element),
                        ),
                      )
                      .toList(),
                  onChanged: (String? newvalue) {
                    selectedValue = newvalue!;
                  },
                  initialValue: selectedValue,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(0, 168, 132, 1),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(0, 168, 132, 1),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),
              Form(
                key: _formkey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 40,
                      child: TextFormField(
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(10),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          hintText: "+91",
                          hintStyle: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto",
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(0, 168, 132, 1),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(0, 168, 132, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    SizedBox(
                      width: 172,
                      child: TextFormField(
                        validator: (value) {
                          if (value?.isEmpty ?? true) {
                            return "Please Enter Your Number";
                          } else if (value!.length < 10) {
                            return "Please Enter 10 digit Number";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                        controller: phoneController,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(0, 168, 132, 1),
                            ),
                          ),

                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(0, 168, 132, 1),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(0, 168, 132, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Uihelper.custombutton(
        buttonname: "Next",
        callback: () {
          login(phoneController.text.toString());
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  login(String phonenumber) {
    if (phonenumber == "") {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Please Phone Number"),
          duration: Duration(seconds: 3),
          backgroundColor: Color.fromRGBO(0, 168, 132, 1),
        ),
      );
    } else if (phonenumber.length < 10) {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Please Enter A Valid Number"),
          duration: Duration(seconds: 3),
          backgroundColor: Color.fromRGBO(0, 168, 132, 1),
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              MyOtpScreen(number: phoneController.text.toString()),
        ),
      );
    }
  }
}
