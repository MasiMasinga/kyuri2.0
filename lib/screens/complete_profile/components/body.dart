import 'package:flutter/material.dart';
import 'package:kyuri/components/custom_suffix.dart';
import 'package:kyuri/components/default_button.dart';
import 'package:kyuri/components/form_error.dart';
import 'package:kyuri/constants.dart';
import 'package:kyuri/size_config.dart';

import 'complete_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Text(
                'Complete Profile',
                style: headingStyle,
              ),
              Text(
                'Complete Your Details Or Continue \nWith Social Media',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              CompleteProfileForm(),
              SizedBox(height: getProportionateScreenHeight(20)),
              Text(
                  'By Continuing You Confirm That You Agree \nWith Our Terms & Conditions',
                  textAlign: TextAlign.center)
            ],
          ),
        ),
      ),
    );
  }
}
