// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pricing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PricingModel _$PricingModelFromJson(Map<String, dynamic> json) =>
    _PricingModel(
      id: json['id'] as String?,
      variant: json['variant'] as String?,
      price: (json['price'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$PricingModelToJson(_PricingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'variant': instance.variant,
      'price': instance.price,
    };
