import 'package:flutter/material.dart';
import 'package:grow_buddy_app/constant.dart';

Text buildHeaderText(String text, TextStyle textStyle) {
  return Text(
    text,
    style: textStyle,
    textAlign: TextAlign.left,
  );
}
