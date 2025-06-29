// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddressModel _$AddressModelFromJson(Map<String, dynamic> json) =>
    _AddressModel(
      id: json['id'] as String?,
      customerRef: json['customer_ref'] as String?,
      pinode: (json['pin_code'] as num?)?.toInt(),
      email: json['email'] as String?,
      password: json['password'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      bankAccount: json['bank_account'] as String?,
      acHolderName: json['ac_holder_name'] as String?,
      ifscCode: json['ifsc_code'] as String?,
    );

Map<String, dynamic> _$AddressModelToJson(_AddressModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_ref': instance.customerRef,
      'pin_code': instance.pinode,
      'email': instance.email,
      'password': instance.password,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'bank_account': instance.bankAccount,
      'ac_holder_name': instance.acHolderName,
      'ifsc_code': instance.ifscCode,
    };
