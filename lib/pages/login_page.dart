import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grow_buddy_app/constant.dart';
import 'package:grow_buddy_app/pages/forget%20password/forget_password.dart';
import 'package:grow_buddy_app/pages/resgister_page.dart';
import 'package:grow_buddy_app/utilities/common/gb_buttons.dart';
import 'package:ionicons/ionicons.dart';
import 'package:grow_buddy_app/utilities/functions/commonFunctions.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String emailAddress = "";
  String password = "";
  late String errorMessage = "Hi";
  final TextEditingController controller = TextEditingController();
  bool isPasswordHidden = true;
  bool isCheckBoxChecked = false;
  Color checkButtonColor = kPrimaryColor2;
  Color rememberMeColor = Colors.black38;
  Color loginTextColor = Colors.black45;
  Color loginButtonColor = Colors.grey;

  Text showErrorWidget(String message) {
    return Text(
      message,
    );
  }

  String? get _errorValidationEmail {
    final textValidation = controller.value.text;

    if (textValidation.isEmpty) return "This field Can\'t be empty";

    return null;
  }

  String? get _errorValidationPassword {
    final textValidation = controller.value.text;

    if (textValidation.isEmpty) return "This field can\'t be empty";
    if (textValidation.length < 8) return "Password length is less than 8";

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor2,
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/login_page.png'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildHeaderText(
                    "Welcome back to Grow Buddy",
                    kHeaderTextStyle,
                    TextAlign.left,
                  ),
                  buildHeaderText(
                    "Manage your classroom, all in one place. Enter your email and password to continue",
                    kHeader2TextStyle,
                    TextAlign.left,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      TextField(
                        onChanged: (value) {
                          setState(() {
                            emailAddress = value;
                            print(emailAddress);
                            if (emailAddress != "" &&
                                password != "" &&
                                emailAddress.contains('@') &&
                                (emailAddress.endsWith(".com") ||
                                    emailAddress.endsWith(".co") ||
                                    emailAddress.endsWith(".in"))) {
                              loginButtonColor = kPrimaryColor1;
                              loginTextColor = kPrimaryColor2;
                            } else if (emailAddress == "" ||
                                password == "" ||
                                password.length < 8 ||
                                emailAddress.endsWith(".com") == false ||
                                emailAddress.endsWith(".co") == false ||
                                emailAddress.endsWith(".in") == false ||
                                emailAddress.contains('@') == false) {
                              loginButtonColor = Colors.grey;
                              loginTextColor = Colors.black45;
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
                          errorText: _errorValidationEmail,
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        onChanged: (value) {
                          setState(() {
                            password = value;
                            print(password);
                            if (emailAddress != "" &&
                                password != "" &&
                                password.length >= 8) {
                              loginButtonColor = kPrimaryColor1;
                              loginTextColor = kPrimaryColor2;
                            } else if (emailAddress == "" ||
                                password == "" ||
                                password.length < 8) {
                              loginButtonColor = Colors.grey;
                              loginTextColor = Colors.black45;
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
                          errorText: _errorValidationPassword,
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: isPasswordHidden,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: isCheckBoxChecked,
                    fillColor: MaterialStateProperty.all(checkButtonColor),
                    onChanged: (bool? newValue) {
                      setState(() {
                        isCheckBoxChecked = !isCheckBoxChecked;
                        rememberMeColor =
                            isCheckBoxChecked ? kPrimaryColor1 : Colors.black45;
                        checkButtonColor =
                            isCheckBoxChecked ? kPrimaryColor1 : kPrimaryColor2;
                      });
                    },
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isCheckBoxChecked = !isCheckBoxChecked;
                        rememberMeColor =
                            isCheckBoxChecked ? kPrimaryColor1 : Colors.black45;
                        checkButtonColor =
                            isCheckBoxChecked ? kPrimaryColor1 : kPrimaryColor2;
                      });
                    },
                    child: Text(
                      "Remember Me",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: rememberMeColor,
                      ),
                    ),
                  )
                ],
              ),
              // showErrorWidget(errorMessage),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          // height: 50.0,
                          child: GB_ElevatedButton(
                            buttonTextSize: 20.0,
                            buttonColor: loginButtonColor,
                            buttonText: "Login",
                            buttonTextColor: loginTextColor,
                            buttonBorderColor: loginButtonColor,
                            buttonPressed: () {
                              if (loginButtonColor == kPrimaryColor1) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RegisterPage(),
                                  ),
                                );
                              }
                            },
                          ),
                          // child: ElevatedButton(
                          //   onPressed: () {
                          //
                          //   },
                          //   style: ElevatedButton.styleFrom(
                          //     backgroundColor: loginButtonColor,
                          //   ),
                          //   child: Padding(
                          //     padding: const EdgeInsets.all(10.0),
                          //     child: Text(
                          //       "Login",
                          //       style: TextStyle(
                          //           color: loginTextColor, fontSize: 20.0),
                          //     ),
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgetPassword(),
                          ),
                        );
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: forgetSignUpColor,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "New to Grow Buddy? Sign up now!",
                        style: TextStyle(
                          color: forgetSignUpColor,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
