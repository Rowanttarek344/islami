import 'package:flutter/material.dart';

class MyTheme {
  static Color black=Color(0xFF242424);
  static Color gold_primary=Color(0xFFB7935F);
  static Color yellow_primary=Color(0xFFFACC1D);
  static Color dark_blue=Color(0xFF141A2E);




  static ThemeData lightTheme =ThemeData(
    primaryColor: gold_primary,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(
        color: black
      )

    ),

    scaffoldBackgroundColor: Colors.transparent,
    primaryTextTheme: TextTheme(
      headline1: TextStyle(
          color: black,
          fontSize: 30,
          fontWeight: FontWeight.bold
      ),
      headline4: TextStyle(
          color: yellow_primary,
          fontSize: 30,
          fontWeight: FontWeight.bold
      ),
      subtitle1: TextStyle(
          color: black,
          fontSize: 25,
          fontWeight: FontWeight.w600
      ),
      subtitle2: TextStyle(
          color: black,
          fontSize: 20,
          fontWeight: FontWeight.w400
      ),
      headline2: TextStyle(
          color: gold_primary,
          fontSize: 20,
          fontWeight: FontWeight.w400
      ),
      headline3: TextStyle(
          color: black,
          fontSize: 20,
          fontWeight: FontWeight.w400
      ),
      headline5: TextStyle(
          color: gold_primary,
          fontSize: 20,
          fontWeight: FontWeight.w400
      ),
      headline6: TextStyle(
          color: black,
          fontSize: 20,
          fontWeight: FontWeight.w400
      ),


    ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: black,
    )

  );
  static ThemeData darkTheme =ThemeData(
      primaryColor: yellow_primary,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
              color: Colors.white
          )

      ),

      scaffoldBackgroundColor: Colors.transparent,

      primaryTextTheme: TextTheme(
        headline1: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold
        ),
        headline4: TextStyle(
            color: yellow_primary,
            fontSize: 30,
            fontWeight: FontWeight.bold
        ),
        subtitle1: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w600
        ),
        subtitle2: TextStyle(
            color: yellow_primary,
            fontSize: 20,
            fontWeight: FontWeight.w400
        ),
        headline2: TextStyle(
            color: yellow_primary,
            fontSize: 20,
            fontWeight: FontWeight.w400
        ),
        headline3: TextStyle(
            color: yellow_primary,
            fontSize: 20,
            fontWeight: FontWeight.w400
        ),
        headline5: TextStyle(
            color: yellow_primary,
            fontSize: 20,
            fontWeight: FontWeight.w400
        ),
        headline6: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w400
        ),


      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: yellow_primary,
      )

  );






}