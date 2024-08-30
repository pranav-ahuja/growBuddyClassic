import 'package:flutter/material.dart';

class LoginOptions extends StatelessWidget {
  const LoginOptions(
      {super.key,
      required this.iconColor,
      required this.iconSize,
      required this.loginOptionIcons,
      required this.onIconPress});

  final IconData loginOptionIcons;
  final Color iconColor;
  final double iconSize;
  final onIconPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onIconPress,
      child: Icon(
        loginOptionIcons,
        size: iconSize,
        color: iconColor,
      ),
    );
  }
}
