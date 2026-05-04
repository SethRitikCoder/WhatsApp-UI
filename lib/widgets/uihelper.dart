import 'package:flutter/material.dart';

class Uihelper {
  static Widget custombutton({
    required String buttonname,
    required VoidCallback callback,
  }) {
    return SizedBox(
      height: 42,
      width: 320,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromRGBO(0, 168, 132, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        onPressed: () {
          callback();
        },
        child: Text(
          buttonname,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  static Widget customText({
    required String text,
    required double size,
    Color? color,
    FontWeight? weight,
    String? family,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color ?? Color.fromRGBO(94, 94, 94, 1),
        fontWeight: weight ?? FontWeight.w400,
        fontFamily: family,
      ),
    );
  }
}
