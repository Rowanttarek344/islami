import 'package:flutter/material.dart';
import 'package:islami/MyTheme.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/quran/sura_details.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        routes: {
        home_screen.routeName:(context) => home_screen(),
        sura_details.routeName:(context) => sura_details()

        },
      initialRoute:home_screen.routeName ,
      theme:MyTheme.lightTheme ,
      darkTheme:MyTheme.darkTheme ,
    );
  }
}
