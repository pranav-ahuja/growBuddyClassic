import 'package:flutter/material.dart';
import 'package:grow_buddy_app/constant.dart';

class HomePageHeads extends StatelessWidget {
  const HomePageHeads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Welcome to Grow Buddy!",
          style: TextStyle(
            fontSize: kMainHeadingText,
            color: kTextColor,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          "\"Your ultimate companion in managing\nyour classroom efficiently.\"",
          style: TextStyle(
            fontSize: kHeadingTwoText,
            color: kTextColor,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
