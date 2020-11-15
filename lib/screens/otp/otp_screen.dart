import 'package:flutter/material.dart';
import 'package:kyuri/screens/otp/components/body.dart';

class OTPScreen extends StatelessWidget {
  static String routeName = '/otp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
