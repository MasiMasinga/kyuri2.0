import 'package:flutter/material.dart';
import 'package:kyuri/components/custom_suffix.dart';
import 'package:kyuri/components/default_button.dart';
import 'package:kyuri/components/form_error.dart';
import 'package:kyuri/screens/otp/otp_screen.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  String firstName;
  String lastName;
  String phoneNumber;
  String address;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstNameFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildLastNameFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildPhoneNumberFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildAddressFormField(),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          DefaultButton(
            text: 'Continue',
            press: () {
              if (_formKey.currentState.validate()) {
                // Go To OTP Screen
                Navigator.pushNamed(context, OTPScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue,
      decoration: InputDecoration(
        labelText: 'Address',
        hintText: 'Enter Your Home Address',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Location point.svg',
        ),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phoneNumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Phone Number',
        hintText: 'Enter Your Phone Number',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Phone.svg',
        ),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue,
      decoration: InputDecoration(
        labelText: 'Last Name',
        hintText: 'Enter Your Last Name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/User.svg',
        ),
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'First Name',
        hintText: 'Enter Your First Name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/User.svg',
        ),
      ),
    );
  }
}
