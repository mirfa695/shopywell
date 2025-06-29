import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopywell/models/product_model.dart';
part 'cart_item.freezed.dart';
part 'cart_item.g.dart';
@freezed
  abstract class CartItem with _$CartItem {
  const factory CartItem({
   @JsonKey(name: "customer_ref") String? customerRef,
    @JsonKey(name: "product_id") String? productId,
    String? id,
    int? qty,
    String? variant,
    double? price,
    double? discount,
    double? deliveryCharge,
    @JsonKey(includeFromJson: true,includeToJson: true) ProductModel? product
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) => _$CartItemFromJson(json);
  
}

extension CartItemExtension on CartItem{
double get totalPrice=>((this.price??0)*(this.qty??0))+(this.deliveryCharge??0);
}