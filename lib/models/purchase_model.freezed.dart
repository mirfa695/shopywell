// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PurchaseModel {

@JsonKey(name: "customer_ref") String? get customerRef;@JsonKey(name: "purchase_item_ids") List<String>? get purchaseItemIds;@JsonKey(name: "address_ref") String? get addressRef; double get total; double? get discount; double? get deliveryCharge;@JsonKey(name: "delivery_status") DeliveryStatus get deliveryStatus;@JsonKey(includeFromJson: false, includeToJson: false) List<CartItem>? get purchaseItems;@JsonKey(includeFromJson: false, includeToJson: false) AddressModel? get address;
/// Create a copy of PurchaseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseModelCopyWith<PurchaseModel> get copyWith => _$PurchaseModelCopyWithImpl<PurchaseModel>(this as PurchaseModel, _$identity);

  /// Serializes this PurchaseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseModel&&(identical(other.customerRef, customerRef) || other.customerRef == customerRef)&&const DeepCollectionEquality().equals(other.purchaseItemIds, purchaseItemIds)&&(identical(other.addressRef, addressRef) || other.addressRef == addressRef)&&(identical(other.total, total) || other.total == total)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.deliveryCharge, deliveryCharge) || other.deliveryCharge == deliveryCharge)&&(identical(other.deliveryStatus, deliveryStatus) || other.deliveryStatus == deliveryStatus)&&const DeepCollectionEquality().equals(other.purchaseItems, purchaseItems)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerRef,const DeepCollectionEquality().hash(purchaseItemIds),addressRef,total,discount,deliveryCharge,deliveryStatus,const DeepCollectionEquality().hash(purchaseItems),address);

@override
String toString() {
  return 'PurchaseModel(customerRef: $customerRef, purchaseItemIds: $purchaseItemIds, addressRef: $addressRef, total: $total, discount: $discount, deliveryCharge: $deliveryCharge, deliveryStatus: $deliveryStatus, purchaseItems: $purchaseItems, address: $address)';
}


}

/// @nodoc
abstract mixin class $PurchaseModelCopyWith<$Res>  {
  factory $PurchaseModelCopyWith(PurchaseModel value, $Res Function(PurchaseModel) _then) = _$PurchaseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "customer_ref") String? customerRef,@JsonKey(name: "purchase_item_ids") List<String>? purchaseItemIds,@JsonKey(name: "address_ref") String? addressRef, double total, double? discount, double? deliveryCharge,@JsonKey(name: "delivery_status") DeliveryStatus deliveryStatus,@JsonKey(includeFromJson: false, includeToJson: false) List<CartItem>? purchaseItems,@JsonKey(includeFromJson: false, includeToJson: false) AddressModel? address
});


$AddressModelCopyWith<$Res>? get address;

}
/// @nodoc
class _$PurchaseModelCopyWithImpl<$Res>
    implements $PurchaseModelCopyWith<$Res> {
  _$PurchaseModelCopyWithImpl(this._self, this._then);

  final PurchaseModel _self;
  final $Res Function(PurchaseModel) _then;

/// Create a copy of PurchaseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerRef = freezed,Object? purchaseItemIds = freezed,Object? addressRef = freezed,Object? total = null,Object? discount = freezed,Object? deliveryCharge = freezed,Object? deliveryStatus = null,Object? purchaseItems = freezed,Object? address = freezed,}) {
  return _then(_self.copyWith(
customerRef: freezed == customerRef ? _self.customerRef : customerRef // ignore: cast_nullable_to_non_nullable
as String?,purchaseItemIds: freezed == purchaseItemIds ? _self.purchaseItemIds : purchaseItemIds // ignore: cast_nullable_to_non_nullable
as List<String>?,addressRef: freezed == addressRef ? _self.addressRef : addressRef // ignore: cast_nullable_to_non_nullable
as String?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as double?,deliveryCharge: freezed == deliveryCharge ? _self.deliveryCharge : deliveryCharge // ignore: cast_nullable_to_non_nullable
as double?,deliveryStatus: null == deliveryStatus ? _self.deliveryStatus : deliveryStatus // ignore: cast_nullable_to_non_nullable
as DeliveryStatus,purchaseItems: freezed == purchaseItems ? _self.purchaseItems : purchaseItems // ignore: cast_nullable_to_non_nullable
as List<CartItem>?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as AddressModel?,
  ));
}
/// Create a copy of PurchaseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressModelCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $AddressModelCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _PurchaseModel implements PurchaseModel {
  const _PurchaseModel({@JsonKey(name: "customer_ref") this.customerRef, @JsonKey(name: "purchase_item_ids") final  List<String>? purchaseItemIds, @JsonKey(name: "address_ref") this.addressRef, this.total = 0, this.discount, this.deliveryCharge, @JsonKey(name: "delivery_status") this.deliveryStatus = DeliveryStatus.placed, @JsonKey(includeFromJson: false, includeToJson: false) final  List<CartItem>? purchaseItems, @JsonKey(includeFromJson: false, includeToJson: false) this.address}): _purchaseItemIds = purchaseItemIds,_purchaseItems = purchaseItems;
  factory _PurchaseModel.fromJson(Map<String, dynamic> json) => _$PurchaseModelFromJson(json);

@override@JsonKey(name: "customer_ref") final  String? customerRef;
 final  List<String>? _purchaseItemIds;
@override@JsonKey(name: "purchase_item_ids") List<String>? get purchaseItemIds {
  final value = _purchaseItemIds;
  if (value == null) return null;
  if (_purchaseItemIds is EqualUnmodifiableListView) return _purchaseItemIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "address_ref") final  String? addressRef;
@override@JsonKey() final  double total;
@override final  double? discount;
@override final  double? deliveryCharge;
@override@JsonKey(name: "delivery_status") final  DeliveryStatus deliveryStatus;
 final  List<CartItem>? _purchaseItems;
@override@JsonKey(includeFromJson: false, includeToJson: false) List<CartItem>? get purchaseItems {
  final value = _purchaseItems;
  if (value == null) return null;
  if (_purchaseItems is EqualUnmodifiableListView) return _purchaseItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(includeFromJson: false, includeToJson: false) final  AddressModel? address;

/// Create a copy of PurchaseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PurchaseModelCopyWith<_PurchaseModel> get copyWith => __$PurchaseModelCopyWithImpl<_PurchaseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PurchaseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PurchaseModel&&(identical(other.customerRef, customerRef) || other.customerRef == customerRef)&&const DeepCollectionEquality().equals(other._purchaseItemIds, _purchaseItemIds)&&(identical(other.addressRef, addressRef) || other.addressRef == addressRef)&&(identical(other.total, total) || other.total == total)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.deliveryCharge, deliveryCharge) || other.deliveryCharge == deliveryCharge)&&(identical(other.deliveryStatus, deliveryStatus) || other.deliveryStatus == deliveryStatus)&&const DeepCollectionEquality().equals(other._purchaseItems, _purchaseItems)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerRef,const DeepCollectionEquality().hash(_purchaseItemIds),addressRef,total,discount,deliveryCharge,deliveryStatus,const DeepCollectionEquality().hash(_purchaseItems),address);

@override
String toString() {
  return 'PurchaseModel(customerRef: $customerRef, purchaseItemIds: $purchaseItemIds, addressRef: $addressRef, total: $total, discount: $discount, deliveryCharge: $deliveryCharge, deliveryStatus: $deliveryStatus, purchaseItems: $purchaseItems, address: $address)';
}


}

/// @nodoc
abstract mixin class _$PurchaseModelCopyWith<$Res> implements $PurchaseModelCopyWith<$Res> {
  factory _$PurchaseModelCopyWith(_PurchaseModel value, $Res Function(_PurchaseModel) _then) = __$PurchaseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "customer_ref") String? customerRef,@JsonKey(name: "purchase_item_ids") List<String>? purchaseItemIds,@JsonKey(name: "address_ref") String? addressRef, double total, double? discount, double? deliveryCharge,@JsonKey(name: "delivery_status") DeliveryStatus deliveryStatus,@JsonKey(includeFromJson: false, includeToJson: false) List<CartItem>? purchaseItems,@JsonKey(includeFromJson: false, includeToJson: false) AddressModel? address
});


@override $AddressModelCopyWith<$Res>? get address;

}
/// @nodoc
class __$PurchaseModelCopyWithImpl<$Res>
    implements _$PurchaseModelCopyWith<$Res> {
  __$PurchaseModelCopyWithImpl(this._self, this._then);

  final _PurchaseModel _self;
  final $Res Function(_PurchaseModel) _then;

/// Create a copy of PurchaseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerRef = freezed,Object? purchaseItemIds = freezed,Object? addressRef = freezed,Object? total = null,Object? discount = freezed,Object? deliveryCharge = freezed,Object? deliveryStatus = null,Object? purchaseItems = freezed,Object? address = freezed,}) {
  return _then(_PurchaseModel(
customerRef: freezed == customerRef ? _self.customerRef : customerRef // ignore: cast_nullable_to_non_nullable
as String?,purchaseItemIds: freezed == purchaseItemIds ? _self._purchaseItemIds : purchaseItemIds // ignore: cast_nullable_to_non_nullable
as List<String>?,addressRef: freezed == addressRef ? _self.addressRef : addressRef // ignore: cast_nullable_to_non_nullable
as String?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as double?,deliveryCharge: freezed == deliveryCharge ? _self.deliveryCharge : deliveryCharge // ignore: cast_nullable_to_non_nullable
as double?,deliveryStatus: null == deliveryStatus ? _self.deliveryStatus : deliveryStatus // ignore: cast_nullable_to_non_nullable
as DeliveryStatus,purchaseItems: freezed == purchaseItems ? _self._purchaseItems : purchaseItems // ignore: cast_nullable_to_non_nullable
as List<CartItem>?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as AddressModel?,
  ));
}

/// Create a copy of PurchaseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressModelCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $AddressModelCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}

// dart format on
