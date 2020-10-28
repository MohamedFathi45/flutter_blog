// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/router_utils.dart';
import 'package:flutterblog/features/login/presentation/login_page.dart';
import 'package:flutterblog/features/home/presentation/home_page.dart';

class Router {
  static const login = '/login';
  static const home = '/home';
  static GlobalKey<NavigatorState> get navigatorKey =>
      getNavigatorKey<Router>();
  static NavigatorState get navigator => navigatorKey.currentState;

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.login:
        return MaterialPageRoute(
          builder: (_) => LoginPage(),
          settings: settings,
        );
      case Router.home:
        return MaterialPageRoute(
          builder: (_) => HomePage(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
