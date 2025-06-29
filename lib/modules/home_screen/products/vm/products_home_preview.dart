import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopywell/models/product_model.dart';
import 'package:shopywell/modules/home_screen/products/products_repository.dart';

part 'products_home_preview.g.dart';

@riverpod
class ProductsHomePreview extends _$ProductsHomePreview {
  Future<List<ProductModel>> build() async {
    return await ProductsRepository.getProductsPreview();
  }
}