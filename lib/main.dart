import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:grow_buddy_app/pages/start_page.dart';

void main() {
  runApp(GrowBuddy());
}

class GrowBuddy extends StatelessWidget {
  const GrowBuddy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlutterSplashScreen.fadeIn(
        backgroundColor: Colors.white,
        onInit: () {
          print("On Init");
        },
        onEnd: () {
          print("On End");
        },
        childWidget: SizedBox(
          height: 500,
          width: 500,
          child: Image.asset(
            "assets/images/splash_image.png",
          ),
        ),
        onAnimationEnd: () => print("On Fade In End"),
        nextScreen: HomePage(),
      ),
    );
  }
}
