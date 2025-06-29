import 'package:freezed_annotation/freezed_annotation.dart';
part 'pricing_model.freezed.dart';
part 'pricing_model.g.dart';
@freezed
 abstract class PricingModel with _$PricingModel {
  const factory PricingModel({
     String? id,
     String? variant,
    @Default(0) double price,
  }) = _PricingModel;

  factory PricingModel.fromJson(Map<String, dynamic> json) => _$PricingModelFromJson(json);
  
}