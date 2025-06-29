import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopywell/models/category_model.dart';
import 'package:shopywell/modules/home_screen/product_elements/product_elements_repository.dart';

part 'category_vm.g.dart';

@riverpod
class CategoryVm extends _$CategoryVm {
  Future<List<CategoryModel>> build() async {
    return await ProductElementsRepository.getAllCategories();
  }
}