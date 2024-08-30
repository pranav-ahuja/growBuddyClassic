import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({
    super.key,
    required this.imageList,
  });

  final List<String> imageList;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: imageList
          .map(
            (Image_url) => Center(
              child: Image.asset(Image_url),
            ),
          )
          .toList(),
      options: CarouselOptions(
        autoPlay: true,
        height: 500,
        viewportFraction: 0.9,
        enlargeCenterPage: true,
      ),
    );
  }
}
