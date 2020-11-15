import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kyuri/components/custom_suffix.dart';
import 'package:kyuri/components/default_button.dart';
import 'package:kyuri/components/form_error.dart';
import 'package:kyuri/components/no_account.dart';
import 'package:kyuri/components/social_card.dart';
import 'package:kyuri/constants.dart';
import 'package:kyuri/screens/forgot_password/forgot_password_screen.dart';
import 'package:kyuri/screens/sign_in/components/sign_form.dart';
import 'package:kyuri/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Sign In With Your Email & Password \nor Continue With Social Media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignInForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: 'assets/icons/google-icon.svg',
                      press: () {},
                    ),
                    SocialCard(
                      icon: 'assets/icons/facebook-2.svg',
                      press: () {},
                    ),
                    SocialCard(
                      icon: 'assets/icons/twitter.svg',
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

