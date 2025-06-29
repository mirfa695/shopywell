// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddressModel {

 String? get id;@JsonKey(name: "customer_ref") String? get customerRef;@JsonKey(name: "pin_code") int? get pinode; String? get email; String? get password; String? get address; String? get city; String? get state; String? get country;@JsonKey(name: "bank_account") String? get bankAccount;@JsonKey(name: "ac_holder_name") String? get acHolderName;@JsonKey(name: "ifsc_code") String? get ifscCode;
/// Create a copy of AddressModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressModelCopyWith<AddressModel> get copyWith => _$AddressModelCopyWithImpl<AddressModel>(this as AddressModel, _$identity);

  /// Serializes this AddressModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressModel&&(identical(other.id, id) || other.id == id)&&(identical(other.customerRef, customerRef) || other.customerRef == customerRef)&&(identical(other.pinode, pinode) || other.pinode == pinode)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country)&&(identical(other.bankAccount, bankAccount) || other.bankAccount == bankAccount)&&(identical(other.acHolderName, acHolderName) || other.acHolderName == acHolderName)&&(identical(other.ifscCode, ifscCode) || other.ifscCode == ifscCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,customerRef,pinode,email,password,address,city,state,country,bankAccount,acHolderName,ifscCode);

@override
String toString() {
  return 'AddressModel(id: $id, customerRef: $customerRef, pinode: $pinode, email: $email, password: $password, address: $address, city: $city, state: $state, country: $country, bankAccount: $bankAccount, acHolderName: $acHolderName, ifscCode: $ifscCode)';
}


}

/// @nodoc
abstract mixin class $AddressModelCopyWith<$Res>  {
  factory $AddressModelCopyWith(AddressModel value, $Res Function(AddressModel) _then) = _$AddressModelCopyWithImpl;
@useResult
$Res call({
 String? id,@JsonKey(name: "customer_ref") String? customerRef,@JsonKey(name: "pin_code") int? pinode, String? email, String? password, String? address, String? city, String? state, String? country,@JsonKey(name: "bank_account") String? bankAccount,@JsonKey(name: "ac_holder_name") String? acHolderName,@JsonKey(name: "ifsc_code") String? ifscCode
});




}
/// @nodoc
class _$AddressModelCopyWithImpl<$Res>
    implements $AddressModelCopyWith<$Res> {
  _$AddressModelCopyWithImpl(this._self, this._then);

  final AddressModel _self;
  final $Res Function(AddressModel) _then;

/// Create a copy of AddressModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? customerRef = freezed,Object? pinode = freezed,Object? email = freezed,Object? password = freezed,Object? address = freezed,Object? city = freezed,Object? state = freezed,Object? country = freezed,Object? bankAccount = freezed,Object? acHolderName = freezed,Object? ifscCode = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,customerRef: freezed == customerRef ? _self.customerRef : customerRef // ignore: cast_nullable_to_non_nullable
as String?,pinode: freezed == pinode ? _self.pinode : pinode // ignore: cast_nullable_to_non_nullable
as int?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,bankAccount: freezed == bankAccount ? _self.bankAccount : bankAccount // ignore: cast_nullable_to_non_nullable
as String?,acHolderName: freezed == acHolderName ? _self.acHolderName : acHolderName // ignore: cast_nullable_to_non_nullable
as String?,ifscCode: freezed == ifscCode ? _self.ifscCode : ifscCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AddressModel implements AddressModel {
  const _AddressModel({this.id, @JsonKey(name: "customer_ref") this.customerRef, @JsonKey(name: "pin_code") this.pinode, this.email, this.password, this.address, this.city, this.state, this.country, @JsonKey(name: "bank_account") this.bankAccount, @JsonKey(name: "ac_holder_name") this.acHolderName, @JsonKey(name: "ifsc_code") this.ifscCode});
  factory _AddressModel.fromJson(Map<String, dynamic> json) => _$AddressModelFromJson(json);

@override final  String? id;
@override@JsonKey(name: "customer_ref") final  String? customerRef;
@override@JsonKey(name: "pin_code") final  int? pinode;
@override final  String? email;
@override final  String? password;
@override final  String? address;
@override final  String? city;
@override final  String? state;
@override final  String? country;
@override@JsonKey(name: "bank_account") final  String? bankAccount;
@override@JsonKey(name: "ac_holder_name") final  String? acHolderName;
@override@JsonKey(name: "ifsc_code") final  String? ifscCode;

/// Create a copy of AddressModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressModelCopyWith<_AddressModel> get copyWith => __$AddressModelCopyWithImpl<_AddressModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressModel&&(identical(other.id, id) || other.id == id)&&(identical(other.customerRef, customerRef) || other.customerRef == customerRef)&&(identical(other.pinode, pinode) || other.pinode == pinode)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country)&&(identical(other.bankAccount, bankAccount) || other.bankAccount == bankAccount)&&(identical(other.acHolderName, acHolderName) || other.acHolderName == acHolderName)&&(identical(other.ifscCode, ifscCode) || other.ifscCode == ifscCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,customerRef,pinode,email,password,address,city,state,country,bankAccount,acHolderName,ifscCode);

@override
String toString() {
  return 'AddressModel(id: $id, customerRef: $customerRef, pinode: $pinode, email: $email, password: $password, address: $address, city: $city, state: $state, country: $country, bankAccount: $bankAccount, acHolderName: $acHolderName, ifscCode: $ifscCode)';
}


}

/// @nodoc
abstract mixin class _$AddressModelCopyWith<$Res> implements $AddressModelCopyWith<$Res> {
  factory _$AddressModelCopyWith(_AddressModel value, $Res Function(_AddressModel) _then) = __$AddressModelCopyWithImpl;
@override @useResult
$Res call({
 String? id,@JsonKey(name: "customer_ref") String? customerRef,@JsonKey(name: "pin_code") int? pinode, String? email, String? password, String? address, String? city, String? state, String? country,@JsonKey(name: "bank_account") String? bankAccount,@JsonKey(name: "ac_holder_name") String? acHolderName,@JsonKey(name: "ifsc_code") String? ifscCode
});




}
/// @nodoc
class __$AddressModelCopyWithImpl<$Res>
    implements _$AddressModelCopyWith<$Res> {
  __$AddressModelCopyWithImpl(this._self, this._then);

  final _AddressModel _self;
  final $Res Function(_AddressModel) _then;

/// Create a copy of AddressModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? customerRef = freezed,Object? pinode = freezed,Object? email = freezed,Object? password = freezed,Object? address = freezed,Object? city = freezed,Object? state = freezed,Object? country = freezed,Object? bankAccount = freezed,Object? acHolderName = freezed,Object? ifscCode = freezed,}) {
  return _then(_AddressModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,customerRef: freezed == customerRef ? _self.customerRef : customerRef // ignore: cast_nullable_to_non_nullable
as String?,pinode: freezed == pinode ? _self.pinode : pinode // ignore: cast_nullable_to_non_nullable
as int?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,bankAccount: freezed == bankAccount ? _self.bankAccount : bankAccount // ignore: cast_nullable_to_non_nullable
as String?,acHolderName: freezed == acHolderName ? _self.acHolderName : acHolderName // ignore: cast_nullable_to_non_nullable
as String?,ifscCode: freezed == ifscCode ? _self.ifscCode : ifscCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
