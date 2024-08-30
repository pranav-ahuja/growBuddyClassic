import 'package:flutter/material.dart';
import 'package:flutter_popup_card/flutter_popup_card.dart';
import 'package:grow_buddy_app/utilities/common/elevated_btn_gb.dart';
import 'package:grow_buddy_app/utilities/home_utilities/home_page_login_icons.dart';
import 'package:grow_buddy_app/constant.dart';

class LoginSignUpPopCard extends StatelessWidget {
  final signUpPage;
  final loginPage;

  const LoginSignUpPopCard({
    super.key,
    required this.loginPage,
    required this.signUpPage,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(vertical: 10.0),
      alignment: Alignment.bottomCenter,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(
          color: Theme.of(context).colorScheme.outlineVariant,
        ),
      ),
      elevation: 10,
      // color: Color(0xffffffff),
      child: Container(
        padding: EdgeInsets.all(20.0),
        height: 250,
        width: double.infinity,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "\t\t\"Create your account or log in to continue.\t\t\nYour data is safe with us\"",
              style: TextStyle(
                fontSize: 17.0,
                color: kTextColor,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GB_ElevatedButton(
                  buttonColor: kPrimaryColor2,
                  buttonText: "Login",
                  buttonBorderColor: kPrimaryColor1,
                  buttonTextColor: kPrimaryColor1,
                  buttonPressed: loginPage,
                ),
                SizedBox(
                  height: 25,
                ),
                GB_ElevatedButton(
                  buttonColor: kPrimaryColor1,
                  buttonText: "Sign Up",
                  buttonBorderColor: kPrimaryColor1,
                  buttonTextColor: kPrimaryColor2,
                  buttonPressed: signUpPage,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LoginOptions(
                  iconColor: kPrimaryColor1,
                  iconSize: 40,
                  loginOptionIcons: Icons.mail,
                  onIconPress: () {},
                ),
                LoginOptions(
                  iconColor: kPrimaryColor1,
                  iconSize: 40,
                  loginOptionIcons: Icons.phone,
                  onIconPress: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
