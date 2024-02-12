import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islamic_app/Home/HomeScreen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'splash';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
        body: Container(
      child: Image.asset('assets/images/splashBackground.png'),
    ));
  }
}
