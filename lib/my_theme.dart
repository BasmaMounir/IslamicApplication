import 'package:flutter/material.dart';

class myTheme {
  static Color blackColor = Color(0xff242424);
  static Color primaryColor = Color(0xffB7935F);

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: blackColor,
        )),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        //backgroundColor: primaryColor
        selectedIconTheme: IconThemeData(size: 35),
        selectedItemColor: blackColor,
        selectedLabelStyle:
            TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
    iconTheme: IconThemeData(color: primaryColor, size: 50),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        color: blackColor,
        fontSize: 30,
        fontWeight: FontWeight.w700,
        fontFamily: 'El Messiri',
      ),
      titleMedium: TextStyle(
        color: blackColor,
        fontSize: 25,
        fontFamily: 'El Messiri',
      ),
      titleSmall: TextStyle(
          color: blackColor,
          fontSize: 25,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400),
      bodyMedium: TextStyle(
        color: blackColor,
        fontSize: 25,
        backgroundColor: Color(0x66B7935F),
      ),
    ),
  );
}
