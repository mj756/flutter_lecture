import 'package:flutter/material.dart';
import 'package:medical_consulttancy/utils/custom_colors.dart';
import 'package:intl/intl.dart';
import 'package:flutter/foundation.dart';
class Utility {
  static const String serverDateFormat = "yyyy-MM-dd'T'HH:mm:ss";
  static TextStyle headingTextStyle() {
    return const TextStyle(
        color: CustomColors.headingColor,
        fontSize: 18,
        fontWeight: FontWeight.bold);
  }

  static InputDecoration inputFormField(String hint, Icon leadingIcon) {
    return InputDecoration(
      hintText: hint,
      label: Text('title'),
      prefixIcon: leadingIcon,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      fillColor: Colors.grey,
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.blue, width: 1.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      hintStyle: TextStyle(
        color: Colors.green,
        fontSize: 16,
        fontFamily: "verdana_regular",
        fontWeight: FontWeight.w400,
      ),
    );
  }

  static TextStyle clickableText() {
    return const TextStyle(
        color: CustomColors.linkColor,
        fontSize: 17,
        fontWeight: FontWeight.bold);
  }

  static Future<void> showSnackBar(BuildContext context, String message,
      {bool isSuccess = false}) async {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message,
          style: TextStyle(
              fontSize: 16, color: isSuccess ? Colors.white : Colors.red)),
    ));
  }

  static bool isValidEmail(String email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
  }

  void test() {}

  static String dateToJson(DateTime time) => time.toUtc().toIso8601String();
  static DateTime dateFromJson(String strDate) =>
      DateFormat(Utility.serverDateFormat).parse(strDate, true).toLocal();

}
