import 'package:flutter/material.dart';
import 'package:flutterblog/stdlib/injector.dart' as di;
import 'package:flutterblog/stdlib/ui/colors.dart';
import 'package:flutterblog/stdlib/router/router.gr.dart';
void main(){
  di.setUpLocator(production: false);
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
          headline5: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          headline1: TextStyle(
            fontSize: 36.0,
            color: BlogColor.headersColor,
            fontWeight: FontWeight.bold
          ),
          headline6: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            color: BlogColor.textColor
          ),
          bodyText1: TextStyle(
            color: BlogColor.textColor
          )
        )
      ),
      onGenerateRoute: (settings) => Router.onGenerateRoute(settings),
      navigatorKey: Router.navigatorKey,
      initialRoute: "/login",
    );
  }
}

