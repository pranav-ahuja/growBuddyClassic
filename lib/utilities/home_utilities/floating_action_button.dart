import 'package:flutter/material.dart';
import 'package:grow_buddy_app/constant.dart';

class GB_FloatingActionButton extends StatelessWidget {
  const GB_FloatingActionButton({
    super.key,
    required this.iconForButton,
    required this.onClick,
  });

  final IconData iconForButton;
  final onClick;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(
        iconForButton,
        color: kPrimaryColor1,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: BorderSide(
          width: 2.0,
          color: kPrimaryColor1,
        ),
      ),
      onPressed: onClick,
      backgroundColor: kPrimaryColor2,
      elevation: 0,
      foregroundColor: kPrimaryColor2,
      splashColor: kPrimaryColor2,
    );
  }
}
