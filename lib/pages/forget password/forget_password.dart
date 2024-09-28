import 'package:flutter/material.dart';
import 'package:grow_buddy_app/constant.dart';
import 'package:grow_buddy_app/pages/forget%20password/forget_password_validate.dart';
import 'package:grow_buddy_app/pages/home_page.dart';
import 'package:grow_buddy_app/utilities/common/gb_buttons.dart';
import 'package:grow_buddy_app/utilities/functions/commonFunctions.dart';
import 'package:ionicons/ionicons.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController controller = TextEditingController();

  String emailAddress = "";
  Color nextButtonColor = Colors.white12;
  Color nextTextColor = Colors.grey;
  bool canClickNextButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Forget Password",
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/forget_password.png'),
                buildHeaderText(
                  "Please enter yout registered email ID",
                  kHeaderTextStyle,
                ),
                buildHeaderText(
                    "We will send a verification code to your registered email ID.",
                    kHeader2TextStyle),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  onChanged: (value) {
                    emailAddress = value;
                    setState(() {
                      if (emailAddress != "" &&
                          emailAddress.contains('@') &&
                          (emailAddress.endsWith(".com") ||
                              emailAddress.endsWith(".co") ||
                              emailAddress.endsWith(".in"))) {
                        canClickNextButton = true;
                        nextButtonColor = kPrimaryColor1;
                        nextTextColor = kPrimaryColor2;
                      } else if (emailAddress == "" ||
                          emailAddress.contains('@') == false ||
                          emailAddress.endsWith(".com") == false ||
                          emailAddress.endsWith(".co") == false ||
                          emailAddress.endsWith(".in") == false) {
                        canClickNextButton = false;
                        nextButtonColor = Colors.white12;
                        nextTextColor = Colors.grey;
                      }
                    });
                  },
                  controller: controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: kHintEmailText,
                    label: Text("Email"),
                    suffixIcon: InkWell(
                      child: Icon(
                        Ionicons.close_circle,
                      ),
                      onTap: () {
                        setState(() {
                          controller.clear();
                        });
                      },
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 25.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    GB_ElevatedButton(
                      buttonText: "Next",
                      buttonColor: nextButtonColor,
                      buttonBorderColor: nextButtonColor,
                      buttonTextColor: nextTextColor,
                      buttonPressed: () {
                        setState(() {
                          if (canClickNextButton) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ForgetPasswordValidation(),
                              ),
                            );
                          }
                        });
                      },
                      buttonTextSize: 20.0,
                    ),
                    // SizedBox(
                    //   height: 25.0,
                    // ),
                    GB_TextButton(
                      buttonText: "Try another way",
                      textColor: kPrimaryColor1,
                      textSize: 15.0,
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
