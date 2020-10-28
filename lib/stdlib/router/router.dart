import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutterblog/features/home/presentation/home_page.dart';
import 'package:flutterblog/features/login/presentation/login_page.dart';

@autoRouter
class $Router{
  LoginPage login;
  HomePage home;
}