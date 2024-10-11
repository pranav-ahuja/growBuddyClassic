import 'package:flutter/material.dart';
import 'package:grow_buddy_app/constant.dart';
import 'package:grow_buddy_app/utilities/functions/commonFunctions.dart';

class AddNewClass extends StatelessWidget {
  AddNewClass({
    super.key,
    required this.classImageLocation,
    required this.className,
    required this.numberOfStudents,
    required this.containerBackgroundColor,
    required this.containerBorderColor,
    required this.onClassTap,
  });

  final String classImageLocation;
  final String className;
  final String numberOfStudents;
  final Color containerBackgroundColor;
  final Color containerBorderColor;
  final onClassTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: InkWell(
        onTap: onClassTap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          decoration: BoxDecoration(
              color: containerBackgroundColor,
              border: Border.all(
                  color: containerBorderColor, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(10.0)),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(classImageLocation),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildHeaderText(
                  className,
                  kHeaderTextStyle,
                  TextAlign.left,
                ),
                buildHeaderText(
                  numberOfStudents,
                  kHeader2TextStyle,
                  TextAlign.left,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
