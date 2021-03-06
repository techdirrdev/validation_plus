import 'package:flutter/services.dart';

/// [Validate] provide validation like email, mobile, input, etc...
class Validate {
  /// validation email address
  static bool isValidEmail(String email) {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email);
  }

  /// validation mobile number (Only Indian pattern and 10 digits mobile number accepted)
  static bool isValidMobile(String mobile) {
    return RegExp(r'^([6-9]{1})([0-9]{9})$').hasMatch(mobile);
  }

  /// validation input int value
  static intValueFormatter() {
    return FilteringTextInputFormatter.digitsOnly;
  }

  /// validation input decimal value
  static decimalValueFormatter(
      {int decimalPlaceValue = 2, bool allowedSign = false}) {
    return allowedSign
        ? FilteringTextInputFormatter.allow(
            RegExp(r'^\d+\.?\d{0,' "${decimalPlaceValue.toString()}" '}'))
        : FilteringTextInputFormatter.allow(
            RegExp(r'^\d+\.?\d{0,' "${decimalPlaceValue.toString()}" '}'));
  }
}
