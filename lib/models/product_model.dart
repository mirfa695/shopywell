import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopywell/models/pricing_model.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
  abstract class ProductModel with _$ProductModel {
  const factory ProductModel({
     String? id,
     String? image,
    @JsonKey(name: "product_name") String? productName,
    String? overview,
    String? description,
    double? rating,
    @Default(<PricingModel>[]) List<PricingModel> pricing,
    @Default([]) @JsonKey(name: "similiar_items") List<String> similiarItems,
    @Default([]) @JsonKey(includeFromJson: true,includeToJson: true) List<ProductModel> similiarProducts
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
  
}

