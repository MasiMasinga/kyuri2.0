import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'size_config.dart';

const kPrimaryColor = Colors.red;
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Colors.redAccent, Colors.red],
);

const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
    fontSize: getProportionateScreenWidth(28),
    fontWeight: FontWeight.bold,
    color: Colors.black,
    height: 1.5);

// Form Error
final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter Your Email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter Your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter Your Phone Number";
const String kAddressNullError = "Please Enter Your Address";

final OTPInputDecoration = InputDecoration(
    contentPadding: EdgeInsets.symmetric(
      vertical: getProportionateScreenWidth(15),
    ),
    enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  border: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: kTextColor),
  );
}

const kBackgroundColor = Color(0xFF8F8F8);
const kActiveColor = Color(0xFFE8342);
const kBlueLightColor = Colors.redAccent;
const kBlueColor = Colors.red;
const kShadowColor = Color(0xFFE6E6E6);