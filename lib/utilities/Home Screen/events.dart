import 'package:flutter/material.dart';
import 'package:grow_buddy_app/utilities/Event Tiles/event_tiles.dart';

class Events extends StatelessWidget {
  const Events({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              EventCards(
                onTapCard: () {},
                screenWidth: screenWidth,
                imageLink: 'assets/images/event_images.png',
                eventName: "Drawing Competition",
                classesInvolved: "Classes: Nursery & KG",
              ),
              EventCards(
                onTapCard: () {},
                screenWidth: screenWidth,
                imageLink: 'assets/images/event_images.png',
                eventName: "Drawing Competition",
                classesInvolved: "Classes: Nursery & KG",
              ),
              EventCards(
                onTapCard: () {},
                screenWidth: screenWidth,
                imageLink: 'assets/images/event_images.png',
                eventName: "Drawing Competition",
                classesInvolved: "Classes: Nursery & KG",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
