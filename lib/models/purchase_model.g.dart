// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PurchaseModel _$PurchaseModelFromJson(Map<String, dynamic> json) =>
    _PurchaseModel(
      customerRef: json['customer_ref'] as String?,
      purchaseItemIds:
          (json['purchase_item_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      addressRef: json['address_ref'] as String?,
      total: (json['total'] as num?)?.toDouble() ?? 0,
      discount: (json['discount'] as num?)?.toDouble(),
      deliveryCharge: (json['deliveryCharge'] as num?)?.toDouble(),
      deliveryStatus:
          $enumDecodeNullable(
            _$DeliveryStatusEnumMap,
            json['delivery_status'],
          ) ??
          DeliveryStatus.placed,
    );

Map<String, dynamic> _$PurchaseModelToJson(_PurchaseModel instance) =>
    <String, dynamic>{
      'customer_ref': instance.customerRef,
      'purchase_item_ids': instance.purchaseItemIds,
      'address_ref': instance.addressRef,
      'total': instance.total,
      'discount': instance.discount,
      'deliveryCharge': instance.deliveryCharge,
      'delivery_status': _$DeliveryStatusEnumMap[instance.deliveryStatus]!,
    };

const _$DeliveryStatusEnumMap = {
  DeliveryStatus.placed: 'placed',
  DeliveryStatus.outForDelivery: 'outForDelivery',
  DeliveryStatus.delivered: 'delivered',
  DeliveryStatus.cancelled: 'cancelled',
};
