// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductModel {

 String? get id; String? get image;@JsonKey(name: "product_name") String? get productName; String? get overview; String? get description; double? get rating; List<PricingModel> get pricing;@JsonKey(name: "similiar_items") List<String> get similiarItems;@JsonKey(includeFromJson: true, includeToJson: true) List<ProductModel> get similiarProducts;
/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductModelCopyWith<ProductModel> get copyWith => _$ProductModelCopyWithImpl<ProductModel>(this as ProductModel, _$identity);

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.image, image) || other.image == image)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.description, description) || other.description == description)&&(identical(other.rating, rating) || other.rating == rating)&&const DeepCollectionEquality().equals(other.pricing, pricing)&&const DeepCollectionEquality().equals(other.similiarItems, similiarItems)&&const DeepCollectionEquality().equals(other.similiarProducts, similiarProducts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,image,productName,overview,description,rating,const DeepCollectionEquality().hash(pricing),const DeepCollectionEquality().hash(similiarItems),const DeepCollectionEquality().hash(similiarProducts));

@override
String toString() {
  return 'ProductModel(id: $id, image: $image, productName: $productName, overview: $overview, description: $description, rating: $rating, pricing: $pricing, similiarItems: $similiarItems, similiarProducts: $similiarProducts)';
}


}

/// @nodoc
abstract mixin class $ProductModelCopyWith<$Res>  {
  factory $ProductModelCopyWith(ProductModel value, $Res Function(ProductModel) _then) = _$ProductModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? image,@JsonKey(name: "product_name") String? productName, String? overview, String? description, double? rating, List<PricingModel> pricing,@JsonKey(name: "similiar_items") List<String> similiarItems,@JsonKey(includeFromJson: true, includeToJson: true) List<ProductModel> similiarProducts
});




}
/// @nodoc
class _$ProductModelCopyWithImpl<$Res>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._self, this._then);

  final ProductModel _self;
  final $Res Function(ProductModel) _then;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? image = freezed,Object? productName = freezed,Object? overview = freezed,Object? description = freezed,Object? rating = freezed,Object? pricing = null,Object? similiarItems = null,Object? similiarProducts = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,pricing: null == pricing ? _self.pricing : pricing // ignore: cast_nullable_to_non_nullable
as List<PricingModel>,similiarItems: null == similiarItems ? _self.similiarItems : similiarItems // ignore: cast_nullable_to_non_nullable
as List<String>,similiarProducts: null == similiarProducts ? _self.similiarProducts : similiarProducts // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ProductModel implements ProductModel {
  const _ProductModel({this.id, this.image, @JsonKey(name: "product_name") this.productName, this.overview, this.description, this.rating, final  List<PricingModel> pricing = const <PricingModel>[], @JsonKey(name: "similiar_items") final  List<String> similiarItems = const [], @JsonKey(includeFromJson: true, includeToJson: true) final  List<ProductModel> similiarProducts = const []}): _pricing = pricing,_similiarItems = similiarItems,_similiarProducts = similiarProducts;
  factory _ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

@override final  String? id;
@override final  String? image;
@override@JsonKey(name: "product_name") final  String? productName;
@override final  String? overview;
@override final  String? description;
@override final  double? rating;
 final  List<PricingModel> _pricing;
@override@JsonKey() List<PricingModel> get pricing {
  if (_pricing is EqualUnmodifiableListView) return _pricing;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pricing);
}

 final  List<String> _similiarItems;
@override@JsonKey(name: "similiar_items") List<String> get similiarItems {
  if (_similiarItems is EqualUnmodifiableListView) return _similiarItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_similiarItems);
}

 final  List<ProductModel> _similiarProducts;
@override@JsonKey(includeFromJson: true, includeToJson: true) List<ProductModel> get similiarProducts {
  if (_similiarProducts is EqualUnmodifiableListView) return _similiarProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_similiarProducts);
}


/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductModelCopyWith<_ProductModel> get copyWith => __$ProductModelCopyWithImpl<_ProductModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.image, image) || other.image == image)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.description, description) || other.description == description)&&(identical(other.rating, rating) || other.rating == rating)&&const DeepCollectionEquality().equals(other._pricing, _pricing)&&const DeepCollectionEquality().equals(other._similiarItems, _similiarItems)&&const DeepCollectionEquality().equals(other._similiarProducts, _similiarProducts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,image,productName,overview,description,rating,const DeepCollectionEquality().hash(_pricing),const DeepCollectionEquality().hash(_similiarItems),const DeepCollectionEquality().hash(_similiarProducts));

@override
String toString() {
  return 'ProductModel(id: $id, image: $image, productName: $productName, overview: $overview, description: $description, rating: $rating, pricing: $pricing, similiarItems: $similiarItems, similiarProducts: $similiarProducts)';
}


}

/// @nodoc
abstract mixin class _$ProductModelCopyWith<$Res> implements $ProductModelCopyWith<$Res> {
  factory _$ProductModelCopyWith(_ProductModel value, $Res Function(_ProductModel) _then) = __$ProductModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? image,@JsonKey(name: "product_name") String? productName, String? overview, String? description, double? rating, List<PricingModel> pricing,@JsonKey(name: "similiar_items") List<String> similiarItems,@JsonKey(includeFromJson: true, includeToJson: true) List<ProductModel> similiarProducts
});




}
/// @nodoc
class __$ProductModelCopyWithImpl<$Res>
    implements _$ProductModelCopyWith<$Res> {
  __$ProductModelCopyWithImpl(this._self, this._then);

  final _ProductModel _self;
  final $Res Function(_ProductModel) _then;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? image = freezed,Object? productName = freezed,Object? overview = freezed,Object? description = freezed,Object? rating = freezed,Object? pricing = null,Object? similiarItems = null,Object? similiarProducts = null,}) {
  return _then(_ProductModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,pricing: null == pricing ? _self._pricing : pricing // ignore: cast_nullable_to_non_nullable
as List<PricingModel>,similiarItems: null == similiarItems ? _self._similiarItems : similiarItems // ignore: cast_nullable_to_non_nullable
as List<String>,similiarProducts: null == similiarProducts ? _self._similiarProducts : similiarProducts // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,
  ));
}


}

// dart format on
