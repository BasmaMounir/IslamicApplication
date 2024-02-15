import 'package:flutter/material.dart';

class myTheme {
  static Color blackColor = Color(0xff242424);
  static Color primaryColor = Color(0xffB7935F);
  static Color primaryDark = Color(0xff141A2E);
  static Color yellowColor = Color(0xffFACC1D);

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
      ),
      titleMedium: TextStyle(
        color: blackColor,
        fontSize: 25,
      ),
      titleSmall: TextStyle(
          color: blackColor, fontSize: 25, fontWeight: FontWeight.w400),
      bodyMedium: TextStyle(
        color: blackColor,
        fontSize: 25,
        backgroundColor: Color(0x66B7935F),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: primaryDark,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white,
        )),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        //backgroundColor: primaryColor
        selectedIconTheme: IconThemeData(size: 35),
        selectedItemColor: yellowColor,
        selectedLabelStyle:
            TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
    iconTheme: IconThemeData(color: yellowColor, size: 50),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        color: blackColor,
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),
      titleMedium: TextStyle(
        color: Colors.white,
        fontSize: 25,
      ),
      titleSmall: TextStyle(
          color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400),
      bodyMedium: TextStyle(
        color: Colors.white,
        fontSize: 25,
      ),
    ),
  );
}
