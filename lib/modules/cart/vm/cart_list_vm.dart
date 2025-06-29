import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopywell/models/cart_item.dart';
import 'package:shopywell/models/product_model.dart';
import 'package:shopywell/modules/cart/repository/cart_repository.dart';
import 'package:shopywell/modules/home_screen/products/products_repository.dart';

part 'cart_list_vm.g.dart';

@riverpod
class CartList extends _$CartList {
  Future<List<CartItem>> build() async {
    return await CartRepository.getCartItems();
  }
}