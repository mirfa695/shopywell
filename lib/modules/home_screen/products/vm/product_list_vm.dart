import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopywell/models/product_model.dart';
import 'package:shopywell/modules/home_screen/products/products_repository.dart';

part 'product_list_vm.g.dart';

@riverpod
class ProductListVm extends _$ProductListVm {
  Future<List<ProductModel>> build() async {
    return await ProductsRepository.getProductsList();
  }
}