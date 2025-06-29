import 'package:hive/hive.dart';
import 'package:shopywell/enums/common_enums.dart';
import 'package:shopywell/helpers.dart/common_helpers.dart';
import 'package:shopywell/helpers.dart/fire_store_helpers.dart';
import 'package:shopywell/models/pricing_model.dart';
import 'package:shopywell/models/product_model.dart';
import 'package:shopywell/models/cart_item.dart';
import 'package:shopywell/models/status_model.dart';

class CartRepository {
   static final cart = FirestoreService(collectionName: 'cart');
   static final products = FirestoreService(collectionName: 'products');
static  Future<StatusModel> addToCart(ProductModel product,PricingModel selectedVariant) async {
    try{
      var box = Hive.box('firstTimeData');
  String userId = box.get('user_id', defaultValue: "");
  await cart.create(CartItem(productId: product.id,qty: 1, price:selectedVariant.price,variant: selectedVariant.variant,customerRef: userId, id: CommonHelpers.generateRandomString(8)).toJson());
 return StatusModel(title: "success",message: "successfully added to cart",status: OperationStatus.success);
 }catch(e){
  return StatusModel(title: "failed",message: e.toString(),status: OperationStatus.failure);
 }
  
  }
   static Future<List<CartItem>> getCartItems() async {
 try{
    var box = Hive.box('firstTimeData');
  String userId = box.get('user_id', defaultValue: "");
  List<Map<String,dynamic>> cartList= await cart.getAll(field: "customer_ref",isEqualTo: userId);
  List<CartItem> cartItems = cartList.map((e) => CartItem.fromJson(e)).toList();
  for (int i = 0; i < cartItems.length; i++) {
    final product = await products.getAll(
      field: "id",
      isEqualTo: cartItems[i].productId,
    ).then((v) => ProductModel.fromJson(v.firstOrNull ?? {}));
    cartItems[i] = cartItems[i].copyWith(product: product);
  }
  return cartItems;
 }catch(e){
  print(e);
  rethrow;
 }
  
  }
  }