// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pricing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PricingModel {

 String? get id; String? get variant; double get price;
/// Create a copy of PricingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PricingModelCopyWith<PricingModel> get copyWith => _$PricingModelCopyWithImpl<PricingModel>(this as PricingModel, _$identity);

  /// Serializes this PricingModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PricingModel&&(identical(other.id, id) || other.id == id)&&(identical(other.variant, variant) || other.variant == variant)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,variant,price);

@override
String toString() {
  return 'PricingModel(id: $id, variant: $variant, price: $price)';
}


}

/// @nodoc
abstract mixin class $PricingModelCopyWith<$Res>  {
  factory $PricingModelCopyWith(PricingModel value, $Res Function(PricingModel) _then) = _$PricingModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? variant, double price
});




}
/// @nodoc
class _$PricingModelCopyWithImpl<$Res>
    implements $PricingModelCopyWith<$Res> {
  _$PricingModelCopyWithImpl(this._self, this._then);

  final PricingModel _self;
  final $Res Function(PricingModel) _then;

/// Create a copy of PricingModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? variant = freezed,Object? price = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,variant: freezed == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PricingModel implements PricingModel {
  const _PricingModel({this.id, this.variant, this.price = 0});
  factory _PricingModel.fromJson(Map<String, dynamic> json) => _$PricingModelFromJson(json);

@override final  String? id;
@override final  String? variant;
@override@JsonKey() final  double price;

/// Create a copy of PricingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PricingModelCopyWith<_PricingModel> get copyWith => __$PricingModelCopyWithImpl<_PricingModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PricingModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PricingModel&&(identical(other.id, id) || other.id == id)&&(identical(other.variant, variant) || other.variant == variant)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,variant,price);

@override
String toString() {
  return 'PricingModel(id: $id, variant: $variant, price: $price)';
}


}

/// @nodoc
abstract mixin class _$PricingModelCopyWith<$Res> implements $PricingModelCopyWith<$Res> {
  factory _$PricingModelCopyWith(_PricingModel value, $Res Function(_PricingModel) _then) = __$PricingModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? variant, double price
});




}
/// @nodoc
class __$PricingModelCopyWithImpl<$Res>
    implements _$PricingModelCopyWith<$Res> {
  __$PricingModelCopyWithImpl(this._self, this._then);

  final _PricingModel _self;
  final $Res Function(_PricingModel) _then;

/// Create a copy of PricingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? variant = freezed,Object? price = null,}) {
  return _then(_PricingModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,variant: freezed == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
