// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartItem _$CartItemFromJson(Map<String, dynamic> json) => _CartItem(
  customerRef: json['customer_ref'] as String?,
  productId: json['product_id'] as String?,
  id: json['id'] as String?,
  qty: (json['qty'] as num?)?.toInt(),
  variant: json['variant'] as String?,
  price: (json['price'] as num?)?.toDouble(),
  discount: (json['discount'] as num?)?.toDouble(),
  deliveryCharge: (json['deliveryCharge'] as num?)?.toDouble(),
  product:
      json['product'] == null
          ? null
          : ProductModel.fromJson(json['product'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CartItemToJson(_CartItem instance) => <String, dynamic>{
  'customer_ref': instance.customerRef,
  'product_id': instance.productId,
  'id': instance.id,
  'qty': instance.qty,
  'variant': instance.variant,
  'price': instance.price,
  'discount': instance.discount,
  'deliveryCharge': instance.deliveryCharge,
  'product': instance.product,
};
