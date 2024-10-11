import 'package:flutter/material.dart';
import 'package:grow_buddy_app/constant.dart';
import 'package:grow_buddy_app/pages/login_page.dart';
import 'package:grow_buddy_app/pages/main%20pages/home_screen.dart';
import 'package:grow_buddy_app/utilities/common/gb_buttons.dart';
import 'package:grow_buddy_app/utilities/functions/commonFunctions.dart';
import 'package:ionicons/ionicons.dart';

class SignUpHome extends StatefulWidget {
  const SignUpHome({super.key});

  @override
  State<SignUpHome> createState() => _SignUpHomeState();
}

class _SignUpHomeState extends State<SignUpHome> {
  String emailAddress = "";
  String password = "";
  String fullName = "";
  String confirmPassword = "";
  Color signupTextColor = Colors.black54;
  Color signupButtonColor = Colors.white12;
  bool isPasswordHidden = true;
  bool passwordStartedTyping = false;
  bool canSignIn = false;

  final TextEditingController controller = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  String? get checkConfirmPassword {
    if (password != confirmPassword && passwordStartedTyping) {
      return "Password didn't match";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildHeaderText(
                      "Join the Grow Buddy Community!",
                      kHeaderTextStyle,
                      TextAlign.center,
                    ),
                    buildHeaderText(
                      "Let's make managing your classroom a breeze. Create your account in just a few steps.",
                      kHeader2TextStyle,
                      TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            fullName = value;
                            if (emailAddress != "" &&
                                password != "" &&
                                fullName != "" &&
                                confirmPassword != "" &&
                                password.length >= 8) {
                              signupButtonColor = kPrimaryColor1;
                              signupTextColor = kPrimaryColor2;
                              canSignIn = true;
                            } else if (emailAddress == "" ||
                                password == "" ||
                                fullName == "" ||
                                confirmPassword == "" ||
                                password.length < 8) {
                              signupButtonColor = Colors.grey;
                              signupTextColor = Colors.black45;
                              canSignIn = false;
                            }
                          });
                        },
                        controller: nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          label: Text("Full Name"),
                          hintText: kHintFullNameText,
                          suffixIcon: InkWell(
                            child: Icon(
                              Ionicons.close_circle,
                            ),
                            onTap: () {
                              nameController.clear();
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            emailAddress = value;
                            print(emailAddress);
                            if (emailAddress != "" &&
                                password != "" &&
                                fullName != "" &&
                                confirmPassword != "" &&
                                password.length >= 8) {
                              signupButtonColor = kPrimaryColor1;
                              signupTextColor = kPrimaryColor2;
                              canSignIn = true;
                            } else if (emailAddress == "" ||
                                password == "" ||
                                fullName == "" ||
                                confirmPassword == "" ||
                                password.length < 8) {
                              signupButtonColor = Colors.grey;
                              signupTextColor = Colors.black45;
                              canSignIn = false;
                            }
                          });
                        },
                        controller: controller,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          label: Text("Email"),
                          hintText: kHintEmailText,
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
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            password = value;
                            print(password);
                            if (emailAddress != "" &&
                                password != "" &&
                                fullName != "" &&
                                confirmPassword != "" &&
                                password.length >= 8) {
                              signupButtonColor = kPrimaryColor1;
                              signupTextColor = kPrimaryColor2;
                              canSignIn = true;
                            } else if (emailAddress == "" ||
                                password == "" ||
                                fullName == "" ||
                                confirmPassword == "" ||
                                password.length < 8) {
                              signupButtonColor = Colors.grey;
                              signupTextColor = Colors.black45;
                              canSignIn = false;
                            }
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          label: Text("Password"),
                          suffixIcon: InkWell(
                            child: Icon(
                              isPasswordHidden
                                  ? Ionicons.eye_off
                                  : Ionicons.eye,
                            ),
                            onTap: () {
                              setState(() {
                                isPasswordHidden = !isPasswordHidden;
                              });
                            },
                          ),
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: isPasswordHidden,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            passwordStartedTyping = true;
                            confirmPassword = value;
                            print(password);
                            if (emailAddress != "" &&
                                password != "" &&
                                fullName != "" &&
                                confirmPassword != "" &&
                                password.length >= 8) {
                              signupButtonColor = kPrimaryColor1;
                              signupTextColor = kPrimaryColor2;
                              canSignIn = true;
                            } else if (emailAddress == "" ||
                                password == "" ||
                                fullName == "" ||
                                confirmPassword == "" ||
                                password.length < 8) {
                              signupButtonColor = Colors.grey;
                              signupTextColor = Colors.black45;
                              canSignIn = false;
                            }
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          errorText: checkConfirmPassword,
                          label: Text("Confirm your password"),
                          suffixIcon: InkWell(
                            child: Icon(
                              isPasswordHidden
                                  ? Ionicons.eye_off
                                  : Ionicons.eye,
                            ),
                            onTap: () {
                              setState(() {
                                isPasswordHidden = !isPasswordHidden;
                              });
                            },
                          ),
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: isPasswordHidden,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    GB_ElevatedButton(
                      buttonText: "Sign Up",
                      buttonColor: signupButtonColor,
                      buttonBorderColor: signupButtonColor,
                      buttonTextColor: signupTextColor,
                      buttonPressed: () {
                        // canSignIn = true;
                        setState(() {
                          signupButtonColor = kPrimaryColor1;
                          signupTextColor = kPrimaryColor2;
                          //TODO: Go to sign up page
                          if (signupTextColor == kPrimaryColor2 &&
                              signupButtonColor == kPrimaryColor1) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          }
                        });
                      },
                      buttonTextSize: 20.0,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          child: Icon(
                            Ionicons.logo_google,
                          ),
                          onTap: () {},
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        InkWell(
                          child: Icon(
                            Ionicons.call,
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                        ),
                        GB_TextButton(
                          buttonText: "Login here",
                          textColor: kPrimaryColor1,
                          textSize: 15.0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
