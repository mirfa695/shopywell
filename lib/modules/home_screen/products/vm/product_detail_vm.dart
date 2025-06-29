import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopywell/models/product_model.dart';
import 'package:shopywell/modules/home_screen/products/products_repository.dart';

part 'product_detail_vm.g.dart';

@Riverpod(keepAlive: true)
class ProductDetailVm extends _$ProductDetailVm {
  Future<ProductModel> build() async {
    await getProductModel();
    return state.value!;
  }

  Future<ProductModel> getProductModel({ProductModel? product}) async {
    ProductModel productItem= await ProductsRepository.getProduct(product??state.value??ProductModel());
    state=AsyncData(productItem);
    return productItem;
  } 
}