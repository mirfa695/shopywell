

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
 abstract class UserModel with _$UserModel {
  const factory UserModel({
     String? id,
     String? email,
     String? password,
     @JsonKey(name: "user_name") String? userName,
     @JsonKey(includeFromJson: true,includeToJson: true) String? confirmPassword,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
  
}