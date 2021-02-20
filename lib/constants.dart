import 'package:flutter/material.dart';

const kPrimaryColor = Colors.blue;
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF1976D2), Color(0xFF00E676)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const kAnimationDuration = Duration(milliseconds: 200);

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]");
final RegExp companyNameValidatorRegExp =
    RegExp(r"^(?!\s)(?!.*\s$)(?=.*[a-zA-Z0-9])[a-zA-Z0-9 '~?!]{2,}$");
final RegExp gstNumberValidatorRegExp =
    RegExp(r"^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}$");
const String kEmailNullError = "Please enter your email";
const String kCompanyNameNullError = "Please enter your company Name";
const String kInvalidCompanyNameError = "Please enter valid company Name";
const String kInvalidEmailError = "Please enter valid email";
const String kPassNullError = "Please enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords dont match";
