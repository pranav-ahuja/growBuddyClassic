import 'package:flutter/material.dart';
import 'package:grow_buddy_app/constant.dart';
import 'package:grow_buddy_app/pages/login_page.dart';
import 'package:grow_buddy_app/utilities/common/gb_buttons.dart';
import 'package:grow_buddy_app/utilities/functions/commonFunctions.dart';
import 'package:ionicons/ionicons.dart';

class ConfirmPassword extends StatefulWidget {
  const ConfirmPassword({super.key});

  @override
  State<ConfirmPassword> createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
  String password = "";
  String passwordConfirm = "";
  bool isPasswordHidden = false;

  Color changePasswordButtonColor = Colors.white12;
  Color changePasswordButtonTextColor = Colors.black54;

  String? get _errorValidationPassword {
    if (password != passwordConfirm) return "Password didn't match";
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Create New Password"),
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/confirm_password.png'),
                buildHeaderText("Enter new password", kHeaderTextStyle),
                buildHeaderText(
                    "Your new password must be different from the previous passwords.",
                    kHeader2TextStyle),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          password = value;
                          print(password);
                          if (password != "" &&
                              password.length >= 8 &&
                              password == passwordConfirm) {
                            changePasswordButtonColor = kPrimaryColor1;
                            changePasswordButtonTextColor = kPrimaryColor2;
                          } else if (password == "" ||
                              password.length < 8 ||
                              password != passwordConfirm) {
                            changePasswordButtonColor = Colors.grey;
                            changePasswordButtonTextColor = Colors.black45;
                          }
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        label: Text("Enter New Password"),
                        suffixIcon: InkWell(
                          child: Icon(
                            isPasswordHidden ? Ionicons.eye_off : Ionicons.eye,
                          ),
                          onTap: () {
                            setState(() {
                              isPasswordHidden = !isPasswordHidden;
                            });
                          },
                        ),
                        // errorText: _errorValidationPassword,
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: isPasswordHidden,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          passwordConfirm = value;
                          if (passwordConfirm != "" &&
                              passwordConfirm.length >= 8 &&
                              passwordConfirm == password) {
                            changePasswordButtonColor = kPrimaryColor1;
                            changePasswordButtonTextColor = kPrimaryColor2;
                          } else if (passwordConfirm == "" ||
                              passwordConfirm.length < 8 ||
                              passwordConfirm != password) {
                            changePasswordButtonColor = Colors.grey;
                            changePasswordButtonTextColor = Colors.black45;
                          }
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        label: Text("Confirm Password"),
                        suffixIcon: InkWell(
                          child: Icon(
                            isPasswordHidden ? Ionicons.eye_off : Ionicons.eye,
                          ),
                          onTap: () {
                            setState(() {
                              isPasswordHidden = !isPasswordHidden;
                            });
                          },
                        ),
                        errorText: _errorValidationPassword,
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: isPasswordHidden,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: GB_ElevatedButton(
                    buttonText: "Change Password",
                    buttonColor: changePasswordButtonColor,
                    buttonBorderColor: changePasswordButtonColor,
                    buttonTextColor: changePasswordButtonTextColor,
                    buttonPressed: () {
                      if (changePasswordButtonColor == kPrimaryColor1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      }
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
