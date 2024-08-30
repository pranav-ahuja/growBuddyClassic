import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grow_buddy_app/constant.dart';
import 'package:grow_buddy_app/pages/resgister_page.dart';
import 'package:ionicons/ionicons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String emailAddress = "";
  String password = "";
  late String errorMessage;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor2,
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/login_page.png'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back to Grow Buddy",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: kHeadingOneText,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "Manage your classroom, all in one place. Enter your email and password to continue",
                    style: TextStyle(
                      fontSize: kHeadingTwoText,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Column(
                    children: [
                      TextField(
                        onChanged: (value) {
                          emailAddress = value;
                          if (emailAddress != "" && password != "") {
                            setState(() {
                              loginButtonColor = kPrimaryColor1;
                              loginTextColor = kPrimaryColor2;
                            });
                          } else {}
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
                        height: 20,
                      ),
                      TextField(
                        onChanged: (value) {
                          password = value;
                          if (emailAddress != "" && password != "") {
                            setState(() {
                              loginButtonColor = kPrimaryColor1;
                              loginTextColor = kPrimaryColor2;
                            });
                          }
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
                  Text(
                    "Remember Me",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: rememberMeColor,
                    ),
                  ),
                ],
              ),
              showErrorWidget(errorMessage),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          // height: 50.0,
                          child: ElevatedButton(
                            onPressed: () {
                              if (loginButtonColor == kPrimaryColor1) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RegisterPage(),
                                  ),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: loginButtonColor,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: loginTextColor, fontSize: 20.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
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
