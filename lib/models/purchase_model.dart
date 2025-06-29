import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopywell/enums/common_enums.dart';
import 'package:shopywell/models/address_model.dart';
import 'package:shopywell/models/cart_item.dart';

part 'purchase_model.freezed.dart';
part 'purchase_model.g.dart';
@freezed
  abstract class PurchaseModel with _$PurchaseModel {
  const factory PurchaseModel({
   @JsonKey(name: "customer_ref") String? customerRef,
    @JsonKey(name: "purchase_item_ids") List<String>? purchaseItemIds,
   @JsonKey(name: "address_ref") String? addressRef,
   @Default(0) double total,
    double? discount,
    double? deliveryCharge,
    @Default(DeliveryStatus.placed) @JsonKey(name: "delivery_status") DeliveryStatus deliveryStatus,
    @JsonKey(includeFromJson: false,includeToJson: false) List<CartItem>? purchaseItems,
    @JsonKey(includeFromJson: false,includeToJson: false) AddressModel? address,
  }) = _PurchaseModel;

  factory PurchaseModel.fromJson(Map<String, dynamic> json) => _$PurchaseModelFromJson(json);
  
}

extension CartItemsCalc on List<CartItem>{
  double get totalPrice=> this.fold(
    0.0,
    (sum, item) => sum + ((item.price??0) * (item.qty??0)),
  );
  double get shippingCharge=> this.fold(
    0.0,
    (sum, item) => sum + (item.deliveryCharge??0),
  );
  double get grandTotal=> this.totalPrice+this.shippingCharge;
}