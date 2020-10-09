import 'package:flutter/material.dart';
import 'package:flutterblog/stdlib/ui/colors.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Blog',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor:  BlogColor.primary,
        accentColor:  BlogColor.secondary,
        visualDensity: VisualDensity.adaptivePlatformDensity,


        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 36.0,
            color: BlogColor.headersColor,
            fontWeight: FontWeight.bold
          ),
          bodyText1: TextStyle(
            color: BlogColor.textColor
          )
        )
      ),
    );
  }
}

