import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopywell/models/address_model.dart';
import 'package:shopywell/models/cart_item.dart';
import 'package:shopywell/models/purchase_model.dart';

part 'checkout_cart_vm.g.dart';

@Riverpod(keepAlive: true)
class CheckoutCartVm extends _$CheckoutCartVm {
   Future<PurchaseModel> build() async {
   
    return PurchaseModel();
  }

   setPurchaseModel({List<CartItem>? cartItems, AddressModel? address}) async {
    PurchaseModel purchaseModel=PurchaseModel(purchaseItems: cartItems,address: address,total: cartItems?.grandTotal??0,deliveryCharge: cartItems?.shippingCharge);
    state=AsyncData(purchaseModel);
   
  } 
}