
import 'package:dio/dio.dart';
import 'package:flutterblog/stdlib/injector.dart';
import 'package:flutterblog/stdlib/models/user.dart';
import 'package:flutterblog/stdlib/router/router.gr.dart';
import 'package:jwt_decoder/jwt_decoder.dart';


void login(Response response){
  print(response.data);
  final Map<String , dynamic> loginResponseAsJson = response.data as Map<String ,dynamic>;
  // decode the payload part of the jwt

  var payload = JwtDecoder.decode(loginResponseAsJson["jwt"]);

  final User user = User.UserFromJson(payload["data"]);


  user.setApiKey(loginResponseAsJson["jwt"]);
  sl<User>().setUser(user);
  User.setRefreshToken(loginResponseAsJson["jwt"] as String);
  Router.navigatorKey.currentState.pushNamed("/home");
}