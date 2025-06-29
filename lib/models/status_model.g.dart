// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StatusModel<T> _$StatusModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _StatusModel<T>(
  title: json['title'] as String?,
  message: json['message'] as String?,
  status: $enumDecodeNullable(_$OperationStatusEnumMap, json['status']),
  data: _$nullableGenericFromJson(json['data'], fromJsonT),
  indicator: json['indicator'],
);

Map<String, dynamic> _$StatusModelToJson<T>(
  _StatusModel<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'title': instance.title,
  'message': instance.message,
  'status': _$OperationStatusEnumMap[instance.status],
  'data': _$nullableGenericToJson(instance.data, toJsonT),
  'indicator': instance.indicator,
};

const _$OperationStatusEnumMap = {
  OperationStatus.success: 'success',
  OperationStatus.failure: 'failure',
  OperationStatus.warning: 'warning',
};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) => input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) => input == null ? null : toJson(input);
