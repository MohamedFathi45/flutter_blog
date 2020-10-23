
import 'package:dio/dio.dart';
import 'package:flutterblog/stdlib/injector.dart';
import 'package:flutterblog/stdlib/models/user.dart';
import 'package:flutterblog/stdlib/router/router.gr.dart';

void login(Response response){
  final Map<String , dynamic> loginResponseAsJson = response.data as Map<String ,dynamic>;
  final User user = User.fromJson(loginResponseAsJson);
  locator<User>().setUser(user);
  User.setRefreshToken(loginResponseAsJson["refresh_token"] as String);
  Router.navigatorKey.currentState.pushNamed("/home");
}