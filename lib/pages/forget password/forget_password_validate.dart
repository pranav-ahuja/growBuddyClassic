import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grow_buddy_app/constant.dart';
import 'package:grow_buddy_app/pages/forget%20password/confirm_password.dart';
import 'package:grow_buddy_app/utilities/common/gb_buttons.dart';
import 'package:grow_buddy_app/utilities/functions/commonFunctions.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class ForgetPasswordValidation extends StatefulWidget {
  const ForgetPasswordValidation({super.key});

  @override
  State<ForgetPasswordValidation> createState() =>
      _ForgetPasswordValidationState();
}

class _ForgetPasswordValidationState extends State<ForgetPasswordValidation> {
  String? otpField;

  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();

  Color doneButtonTextColor = Colors.black54;
  Color doneButtonColor = Colors.white12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Verify Your Email",
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/forget_password_verification.png'),
                SizedBox(
                  height: 20.0,
                ),
                buildHeaderText(
                  "Please enter your verification code",
                  kHeaderTextStyle,
                  TextAlign.left,
                ),
                buildHeaderText(
                  "We have sent a verification code to your registered email ID.",
                  kHeader2TextStyle,
                  TextAlign.left,
                ),
                SizedBox(
                  height: 50.0,
                ),
                OtpPinField(
                  key: _otpPinFieldController,
                  onSubmit: (value) {
                    otpField = value;
                    //TODO: Make a function to check the otp and validate
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => ConfirmPassword(),
                    //   ),
                    // );
                    setState(() {
                      doneButtonColor = kPrimaryColor1;
                      doneButtonTextColor = kPrimaryColor2;
                    });
                    print(otpField);
                  },
                  otpPinFieldDecoration:
                      OtpPinFieldDecoration.defaultPinBoxDecoration,
                  onChange: (value) {
                    setState(() {
                      if (otpField!.length < 4) {
                        doneButtonColor = Colors.white12;
                        doneButtonTextColor = Colors.black54;
                      }
                    });
                  },
                  keyboardType: TextInputType.number,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GB_TextButton(
                      buttonText: "Resend Code",
                      textColor: kPrimaryColor1,
                      textSize: 15.0,
                      onPressed: () {
                        _otpPinFieldController.currentState?.clearOtp();
                      },
                    ),
                  ),
                ),
                Center(
                  child: GB_ElevatedButton(
                    buttonText: "Done",
                    buttonColor: doneButtonColor,
                    buttonBorderColor: doneButtonColor,
                    buttonTextColor: doneButtonTextColor,
                    buttonPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ConfirmPassword(),
                        ),
                      );
                    },
                    buttonTextSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
