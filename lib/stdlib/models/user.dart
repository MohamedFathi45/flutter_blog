
import 'dart:async';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

part "user.g.dart";

@JsonSerializable(fieldRename: FieldRename.snake)
class User {
  String apiKey;
  String email;
  int id;

  User(this.apiKey, this.email);

  User.empty();

  void setUser(User user) {
    apiKey = user.apiKey;
    email = user.email;
    id = user.id;
  }
  factory User.fromJson(Map<String , dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);


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
    apiKey = null;
    email = null;
    id = null;
    const storage = FlutterSecureStorage();
    storage.delete(key: "refresh_token");
  }
}