

import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
 abstract class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
     String? id,
     String? image,
    @JsonKey(name: "category_name") String? categoryName,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);
  
}