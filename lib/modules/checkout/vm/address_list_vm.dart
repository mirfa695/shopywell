import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopywell/models/address_model.dart';
import 'package:shopywell/modules/checkout/repository/checkout_repository.dart';

part 'address_list_vm.g.dart';

@riverpod
class AddressListVm extends _$AddressListVm {
  Future<List<AddressModel>> build() async {
    return await CheckoutRepository.getAddressList();
  }
}