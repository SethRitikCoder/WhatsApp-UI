import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Uihelper {
  static Widget custombutton({
    required String buttonname,
    required VoidCallback callback,
  }) {
    return SizedBox(
      height: 39,
      width: 280,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromRGBO(0, 168, 132, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          elevation: 0.0,
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

  static customContainer(
    TextEditingController controller,
    BuildContext context,
  ) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Color.fromRGBO(217, 217, 217, 0.63),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          // maxLength: 1,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          controller: controller,
          decoration: InputDecoration(border: InputBorder.none),
        ),
      ),
    );
  }
}
