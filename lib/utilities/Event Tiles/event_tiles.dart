import 'package:flutter/material.dart';
import 'package:grow_buddy_app/constant.dart';
import 'package:grow_buddy_app/utilities/functions/commonFunctions.dart';
import 'package:ionicons/ionicons.dart';

class EventCards extends StatelessWidget {
  const EventCards({
    super.key,
    required this.screenWidth,
    required this.imageLink,
    required this.eventName,
    required this.classesInvolved,
    required this.onTapCard,
  });

  final double screenWidth;
  final String imageLink;
  final String eventName;
  final String classesInvolved;
  final onTapCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.9,
      child: InkWell(
        onTap: onTapCard,
        child: Card(
          elevation: 5.0,
          margin: EdgeInsets.all(10.0),
          color: kPrimaryColor2,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Image.asset(
                  imageLink,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: buildHeaderText(
                                eventName, kHeaderTextStyle, TextAlign.left),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: buildHeaderText(classesInvolved,
                                kHeader2TextStyle, TextAlign.left),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Ionicons.share_social_sharp,
                        color: kEventsShareIconColor,
                        size: 30.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
