// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductModel _$ProductModelFromJson(Map<String, dynamic> json) =>
    _ProductModel(
      id: json['id'] as String?,
      image: json['image'] as String?,
      productName: json['product_name'] as String?,
      overview: json['overview'] as String?,
      description: json['description'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      pricing:
          (json['pricing'] as List<dynamic>?)
              ?.map((e) => PricingModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <PricingModel>[],
      similiarItems:
          (json['similiar_items'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      similiarProducts:
          (json['similiarProducts'] as List<dynamic>?)
              ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ProductModelToJson(_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'product_name': instance.productName,
      'overview': instance.overview,
      'description': instance.description,
      'rating': instance.rating,
      'pricing': instance.pricing,
      'similiar_items': instance.similiarItems,
      'similiarProducts': instance.similiarProducts,
    };
