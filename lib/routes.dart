import 'package:flutter/material.dart';
import 'package:kyuri/screens/complete_profile/complete_profile_screen.dart';
import 'package:kyuri/screens/forgot_password/forgot_password_screen.dart';
import 'package:kyuri/screens/home/home_screen.dart';
import 'package:kyuri/screens/otp/otp_screen.dart';
import 'package:kyuri/screens/sign_in/sign_in_screen.dart';
import 'package:kyuri/screens/sign_up/sign_up_screen.dart';
import 'package:kyuri/screens/splash/splash_screen.dart';


final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OTPScreen.routeName: (context) => OTPScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};