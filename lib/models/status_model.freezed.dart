// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StatusModel<T> {

 String? get title; String? get message; OperationStatus? get status; T? get data; dynamic get indicator;
/// Create a copy of StatusModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatusModelCopyWith<T, StatusModel<T>> get copyWith => _$StatusModelCopyWithImpl<T, StatusModel<T>>(this as StatusModel<T>, _$identity);

  /// Serializes this StatusModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatusModel<T>&&(identical(other.title, title) || other.title == title)&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.indicator, indicator));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,message,status,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(indicator));

@override
String toString() {
  return 'StatusModel<$T>(title: $title, message: $message, status: $status, data: $data, indicator: $indicator)';
}


}

/// @nodoc
abstract mixin class $StatusModelCopyWith<T,$Res>  {
  factory $StatusModelCopyWith(StatusModel<T> value, $Res Function(StatusModel<T>) _then) = _$StatusModelCopyWithImpl;
@useResult
$Res call({
 String? title, String? message, OperationStatus? status, T? data, dynamic indicator
});




}
/// @nodoc
class _$StatusModelCopyWithImpl<T,$Res>
    implements $StatusModelCopyWith<T, $Res> {
  _$StatusModelCopyWithImpl(this._self, this._then);

  final StatusModel<T> _self;
  final $Res Function(StatusModel<T>) _then;

/// Create a copy of StatusModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? message = freezed,Object? status = freezed,Object? data = freezed,Object? indicator = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OperationStatus?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,indicator: freezed == indicator ? _self.indicator : indicator // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _StatusModel<T> implements StatusModel<T> {
  const _StatusModel({this.title, this.message, this.status, this.data, this.indicator});
  factory _StatusModel.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$StatusModelFromJson(json,fromJsonT);

@override final  String? title;
@override final  String? message;
@override final  OperationStatus? status;
@override final  T? data;
@override final  dynamic indicator;

/// Create a copy of StatusModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatusModelCopyWith<T, _StatusModel<T>> get copyWith => __$StatusModelCopyWithImpl<T, _StatusModel<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$StatusModelToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatusModel<T>&&(identical(other.title, title) || other.title == title)&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.indicator, indicator));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,message,status,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(indicator));

@override
String toString() {
  return 'StatusModel<$T>(title: $title, message: $message, status: $status, data: $data, indicator: $indicator)';
}


}

/// @nodoc
abstract mixin class _$StatusModelCopyWith<T,$Res> implements $StatusModelCopyWith<T, $Res> {
  factory _$StatusModelCopyWith(_StatusModel<T> value, $Res Function(_StatusModel<T>) _then) = __$StatusModelCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? message, OperationStatus? status, T? data, dynamic indicator
});




}
/// @nodoc
class __$StatusModelCopyWithImpl<T,$Res>
    implements _$StatusModelCopyWith<T, $Res> {
  __$StatusModelCopyWithImpl(this._self, this._then);

  final _StatusModel<T> _self;
  final $Res Function(_StatusModel<T>) _then;

/// Create a copy of StatusModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? message = freezed,Object? status = freezed,Object? data = freezed,Object? indicator = freezed,}) {
  return _then(_StatusModel<T>(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OperationStatus?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,indicator: freezed == indicator ? _self.indicator : indicator // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
