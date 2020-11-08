import 'package:custom_splash/custom_splash.dart';
import 'package:flutter/material.dart';
import 'package:parthi/main.dart';

class Initial extends StatefulWidget {
  @override
  _InitialState createState() => _InitialState();
}

class _InitialState extends State<Initial> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: CustomSplash(
        backGroundColor: Colors.black,
        imagePath: "assets/Logo.jpeg",
        animationEffect: 'zoom-in',
        logoSize: 400,
        home: App(),
        duration: 8800,
        type: CustomSplashType.StaticDuration,
      ),
    );
  }
}
