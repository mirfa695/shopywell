// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartItem {

@JsonKey(name: "customer_ref") String? get customerRef;@JsonKey(name: "product_id") String? get productId; String? get id; int? get qty; String? get variant; double? get price; double? get discount; double? get deliveryCharge;@JsonKey(includeFromJson: true, includeToJson: true) ProductModel? get product;
/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartItemCopyWith<CartItem> get copyWith => _$CartItemCopyWithImpl<CartItem>(this as CartItem, _$identity);

  /// Serializes this CartItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItem&&(identical(other.customerRef, customerRef) || other.customerRef == customerRef)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.id, id) || other.id == id)&&(identical(other.qty, qty) || other.qty == qty)&&(identical(other.variant, variant) || other.variant == variant)&&(identical(other.price, price) || other.price == price)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.deliveryCharge, deliveryCharge) || other.deliveryCharge == deliveryCharge)&&(identical(other.product, product) || other.product == product));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerRef,productId,id,qty,variant,price,discount,deliveryCharge,product);

@override
String toString() {
  return 'CartItem(customerRef: $customerRef, productId: $productId, id: $id, qty: $qty, variant: $variant, price: $price, discount: $discount, deliveryCharge: $deliveryCharge, product: $product)';
}


}

/// @nodoc
abstract mixin class $CartItemCopyWith<$Res>  {
  factory $CartItemCopyWith(CartItem value, $Res Function(CartItem) _then) = _$CartItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "customer_ref") String? customerRef,@JsonKey(name: "product_id") String? productId, String? id, int? qty, String? variant, double? price, double? discount, double? deliveryCharge,@JsonKey(includeFromJson: true, includeToJson: true) ProductModel? product
});


$ProductModelCopyWith<$Res>? get product;

}
/// @nodoc
class _$CartItemCopyWithImpl<$Res>
    implements $CartItemCopyWith<$Res> {
  _$CartItemCopyWithImpl(this._self, this._then);

  final CartItem _self;
  final $Res Function(CartItem) _then;

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerRef = freezed,Object? productId = freezed,Object? id = freezed,Object? qty = freezed,Object? variant = freezed,Object? price = freezed,Object? discount = freezed,Object? deliveryCharge = freezed,Object? product = freezed,}) {
  return _then(_self.copyWith(
customerRef: freezed == customerRef ? _self.customerRef : customerRef // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,qty: freezed == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as int?,variant: freezed == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as double?,deliveryCharge: freezed == deliveryCharge ? _self.deliveryCharge : deliveryCharge // ignore: cast_nullable_to_non_nullable
as double?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductModel?,
  ));
}
/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductModelCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductModelCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _CartItem implements CartItem {
  const _CartItem({@JsonKey(name: "customer_ref") this.customerRef, @JsonKey(name: "product_id") this.productId, this.id, this.qty, this.variant, this.price, this.discount, this.deliveryCharge, @JsonKey(includeFromJson: true, includeToJson: true) this.product});
  factory _CartItem.fromJson(Map<String, dynamic> json) => _$CartItemFromJson(json);

@override@JsonKey(name: "customer_ref") final  String? customerRef;
@override@JsonKey(name: "product_id") final  String? productId;
@override final  String? id;
@override final  int? qty;
@override final  String? variant;
@override final  double? price;
@override final  double? discount;
@override final  double? deliveryCharge;
@override@JsonKey(includeFromJson: true, includeToJson: true) final  ProductModel? product;

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartItemCopyWith<_CartItem> get copyWith => __$CartItemCopyWithImpl<_CartItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartItem&&(identical(other.customerRef, customerRef) || other.customerRef == customerRef)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.id, id) || other.id == id)&&(identical(other.qty, qty) || other.qty == qty)&&(identical(other.variant, variant) || other.variant == variant)&&(identical(other.price, price) || other.price == price)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.deliveryCharge, deliveryCharge) || other.deliveryCharge == deliveryCharge)&&(identical(other.product, product) || other.product == product));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerRef,productId,id,qty,variant,price,discount,deliveryCharge,product);

@override
String toString() {
  return 'CartItem(customerRef: $customerRef, productId: $productId, id: $id, qty: $qty, variant: $variant, price: $price, discount: $discount, deliveryCharge: $deliveryCharge, product: $product)';
}


}

/// @nodoc
abstract mixin class _$CartItemCopyWith<$Res> implements $CartItemCopyWith<$Res> {
  factory _$CartItemCopyWith(_CartItem value, $Res Function(_CartItem) _then) = __$CartItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "customer_ref") String? customerRef,@JsonKey(name: "product_id") String? productId, String? id, int? qty, String? variant, double? price, double? discount, double? deliveryCharge,@JsonKey(includeFromJson: true, includeToJson: true) ProductModel? product
});


@override $ProductModelCopyWith<$Res>? get product;

}
/// @nodoc
class __$CartItemCopyWithImpl<$Res>
    implements _$CartItemCopyWith<$Res> {
  __$CartItemCopyWithImpl(this._self, this._then);

  final _CartItem _self;
  final $Res Function(_CartItem) _then;

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerRef = freezed,Object? productId = freezed,Object? id = freezed,Object? qty = freezed,Object? variant = freezed,Object? price = freezed,Object? discount = freezed,Object? deliveryCharge = freezed,Object? product = freezed,}) {
  return _then(_CartItem(
customerRef: freezed == customerRef ? _self.customerRef : customerRef // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,qty: freezed == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as int?,variant: freezed == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as double?,deliveryCharge: freezed == deliveryCharge ? _self.deliveryCharge : deliveryCharge // ignore: cast_nullable_to_non_nullable
as double?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductModel?,
  ));
}

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductModelCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductModelCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

// dart format on
