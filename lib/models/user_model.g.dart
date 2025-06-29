// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: json['id'] as String?,
  email: json['email'] as String?,
  password: json['password'] as String?,
  userName: json['user_name'] as String?,
  confirmPassword: json['confirmPassword'] as String?,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'password': instance.password,
      'user_name': instance.userName,
      'confirmPassword': instance.confirmPassword,
    };
