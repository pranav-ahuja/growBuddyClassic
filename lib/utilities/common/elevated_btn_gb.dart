import 'package:flutter/material.dart';
import 'package:grow_buddy_app/constant.dart';

class GB_ElevatedButton extends StatelessWidget {
  const GB_ElevatedButton({
    super.key,
    required this.buttonText,
    required this.buttonColor,
    required this.buttonBorderColor,
    required this.buttonTextColor,
    required this.buttonPressed,
  });

  final String buttonText;
  final Color buttonColor;
  final Color buttonTextColor;
  final Color buttonBorderColor;
  final buttonPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: buttonPressed,
      child: Text(
        buttonText,
        textAlign: TextAlign.center,
        style: TextStyle(color: buttonTextColor),
      ),
      style: ButtonStyle(
        side: MaterialStateProperty.all(
          BorderSide(
            color: buttonBorderColor,
          ),
        ),
        backgroundColor: MaterialStateProperty.all(buttonColor),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(vertical: 13.0, horizontal: 50.0),
        ),
      ),
    );
  }
}
