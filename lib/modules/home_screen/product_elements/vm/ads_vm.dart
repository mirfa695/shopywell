import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopywell/modules/home_screen/product_elements/product_elements_repository.dart';

part 'ads_vm.g.dart';

@riverpod
class AdsVm extends _$AdsVm {
  Future<List<String>> build() async {
    return await ProductElementsRepository.getAdImages();
  }
}