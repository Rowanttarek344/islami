import 'package:flutter/material.dart';

class MyTheme {
  static Color black=Color(0xFF242424);
  static Color gold_primary=Color(0xFFB7935F);


  static ThemeData lightTheme =ThemeData(
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(
        color: black
      )

    ),

    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      headline1: TextStyle(
        color: black,
        fontSize: 30,
        fontWeight: FontWeight.bold
      ),
      subtitle1: TextStyle(
          color: black,
          fontSize: 25,
          fontWeight: FontWeight.w600
      ),

    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: black,
    )

  );


  static ThemeData darkTheme =ThemeData();

}