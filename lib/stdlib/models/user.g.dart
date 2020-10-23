// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    json['api_key'] as String,
    json['email'] as String,
  )..id = json['id'] as int;
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'api_key': instance.apiKey,
      'email': instance.email,
      'id': instance.id,
    };
