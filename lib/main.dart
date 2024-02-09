import 'package:flutter/material.dart';
import 'package:islamic_app/Home/HomeScreen.dart';
import 'package:islamic_app/my_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      theme: myTheme.lightTheme,
    );
  }
}
