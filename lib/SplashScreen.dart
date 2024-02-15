import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islamic_app/Home/HomeScreen.dart';
import 'package:islamic_app/providers/AppConfigProvider.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'splash';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
        body: Container(
      child: provider.isDarkMode()
          ? Image.asset('assets/images/splash -dark.png')
          : Image.asset('assets/images/splashBackground.png'),
    ));
  }
}
