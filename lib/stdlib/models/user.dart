
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutterblog/stdlib/errors/failurs.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:flutterblog/stdlib/httpClient.dart';

class User {
  String apiKey;
  String email;
  String username;
  int id;
  User(this.id,  this.username , this.email);

  User.empty();

  void setUser(User user) {
    id = user.id;
    username = user.username;
    email = user.email;
    apiKey = user.apiKey;
  }

  void setApiKey(String token){   // jwt token
    apiKey = token;
  }

  static Future<String> getRefreshToken(){
    const storage = FlutterSecureStorage();
    final value = storage.read(key: "refresh_token");
    return value;
  }

  static void setRefreshToken(String token){
    const storage = FlutterSecureStorage();
    storage.write(key: "refresh_token", value: token);
  }

  void signOut(){
    id = null;
    username = null;
    apiKey = null;
    email = null;
    const storage = FlutterSecureStorage();
    storage.delete(key: "refresh_token");
  }

  static User UserFromJson(Map<String, dynamic> json) {
    return User(
      json['id'] as int,
      json['username'] as String,
      json['email'] as String,
    );
  }

  Map<String, dynamic> _UserToJson(User instance) => <String, dynamic>{
    'api_key': instance.apiKey,
    'email': instance.email,
  };



}