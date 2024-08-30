import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grow_buddy_app/constant.dart';
import 'package:grow_buddy_app/pages/login_page.dart';
import 'package:grow_buddy_app/pages/resgister_page.dart';
import 'package:grow_buddy_app/utilities/home_utilities/floating_action_button.dart';
import 'package:grow_buddy_app/utilities/home_utilities/image_slider.dart';
import 'package:grow_buddy_app/utilities/home_utilities/home_page_heading.dart';
import 'package:flutter_popup_card/flutter_popup_card.dart';
import 'package:grow_buddy_app/utilities/home_utilities/popup_card_signup.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> sliderImageList = [
    'assets/images/home_page.png',
    'assets/images/home_page2.png',
    'assets/images/home_page3.png',
  ];

  void accountClicked(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return LoginSignUpPopCard(
          loginPage: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ),
            );
          },
          signUpPage: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RegisterPage(),
              ),
            );
          },
        );
      },
      // offset: const Offset(0, 530),
      // alignment: Alignment.center,
      // useSafeArea: false,
      // dimBackground: true,
    );
    // if (result == null) return;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: GB_FloatingActionButton(
          iconForButton: Icons.arrow_forward_rounded,
          onClick: () => accountClicked(context),
        ),
        backgroundColor: kPrimaryColor2,
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageSlider(imageList: sliderImageList),
            HomePageHeads(),
          ],
        ),
      ),
    );
  }
}
