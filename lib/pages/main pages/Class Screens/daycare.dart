import 'package:flutter/material.dart';
import 'package:grow_buddy_app/constant.dart';
import 'package:grow_buddy_app/utilities/Home Screen/events.dart';
import 'package:grow_buddy_app/utilities/functions/commonFunctions.dart';
import 'package:ionicons/ionicons.dart';

class Daycare extends StatefulWidget {
  const Daycare({super.key});

  @override
  State<Daycare> createState() => _DaycareState();
}

class _DaycareState extends State<Daycare> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Daycare"),
          backgroundColor: kDayCareSectionColor,
          // backgroundColor: Colors.green,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: kDayCareSectionColor,
                // color: Colors.green,
              ),
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildHeaderText(
                    "Welcome to your class!",
                    kHeaderTextStyle,
                    TextAlign.left,
                  ),
                  Events(screenWidth: screenWidth),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildHeaderText("Features", kHeaderTextStyle, TextAlign.left),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        FeatureCards(
                          cardLabel: "Assignments",
                          imageLink:
                              'assets/images/features_of_class/assignments.png',
                        ),
                        FeatureCards(
                          cardLabel: "Grade Book",
                          imageLink:
                              'assets/images/features_of_class/grade_books.png',
                        ),
                        FeatureCards(
                          cardLabel: "Resources",
                          imageLink:
                              'assets/images/features_of_class/assignments.png',
                        ),
                        FeatureCards(
                          cardLabel: "Class Schedule",
                          imageLink:
                              'assets/images/features_of_class/assignments.png',
                        ),
                        FeatureCards(
                          cardLabel: "Attendence",
                          imageLink:
                              'assets/images/features_of_class/assignments.png',
                        ),
                        FeatureCards(
                          cardLabel: "Fee Payments",
                          imageLink:
                              'assets/images/features_of_class/assignments.png',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureCards extends StatelessWidget {
  const FeatureCards({
    super.key,
    required this.imageLink,
    required this.cardLabel,
  });

  final String imageLink;
  final String cardLabel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset(imageLink),
            buildHeaderText(
              cardLabel,
              kHeaderTextStyle,
              TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
