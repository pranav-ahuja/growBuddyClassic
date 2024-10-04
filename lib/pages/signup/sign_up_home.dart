import 'package:flutter/material.dart';
import 'package:grow_buddy_app/constant.dart';
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
  Color signupTextColor = Colors.black54;
  Color signupButtonColor = Colors.white12;

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            signupButtonColor = kPrimaryColor1;
                            signupTextColor = kPrimaryColor2;
                          } else if (emailAddress == "" ||
                              password == "" ||
                              password.length < 8 ||
                              emailAddress.endsWith(".com") == false ||
                              emailAddress.endsWith(".co") == false ||
                              emailAddress.endsWith(".in") == false ||
                              emailAddress.contains('@') == false) {
                            signupButtonColor = Colors.grey;
                            signupTextColor = Colors.black45;
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
                        // errorText: _errorValidationEmail,
                      ),
                      keyboardType: TextInputType.emailAddress,
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
