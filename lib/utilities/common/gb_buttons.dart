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
    required this.buttonTextSize,
  });

  final String buttonText;
  final Color buttonColor;
  final Color buttonTextColor;
  final Color buttonBorderColor;
  final double buttonTextSize;
  final buttonPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: buttonPressed,
      child: Text(
        buttonText,
        textAlign: TextAlign.center,
        style: TextStyle(color: buttonTextColor, fontSize: buttonTextSize),
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

class GB_TextButton extends StatelessWidget {
  const GB_TextButton({
    super.key,
    required this.buttonText,
    required this.textColor,
    required this.textSize,
    required this.onPressed,
  });

  final String buttonText;
  final Color textColor;
  final double textSize;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: textSize,
          color: textColor,
        ),
      ),
    );
  }
}
