
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopywell/enums/common_enums.dart';
import 'package:shopywell/models/address_model.dart';
import 'package:shopywell/models/status_model.dart';
import 'package:shopywell/models/user_model.dart';
import 'package:shopywell/modules/checkout/repository/checkout_repository.dart';

part 'add_address_vm.g.dart';

@riverpod
class AddAddressVm extends _$AddAddressVm {
  @override
  AsyncValue<StatusModel<AddressModel>> build() {
    var box = Hive.box('firstTimeData');
    UserModel user = box.get('user', defaultValue: UserModel());
    return AsyncData(
      StatusModel<AddressModel>(
        status: OperationStatus.failure,
        data: AddressModel(email: user.email, password: user.password),
      ),
    );
  }

  void changeEmail(String? email) {
    state = AsyncData(
      state.value?.copyWith(data: state.value?.data?.copyWith(email: email)) ??
          StatusModel(),
    );
  }

  void changePincode(String? pincode) {
    state = AsyncData(
      state.value?.copyWith(
            data: state.value?.data?.copyWith(
              pinode: int.parse(pincode ?? "0"),
            ),
          ) ??
          StatusModel(),
    );
  }

  void changeAddress(String? address) {
    state = AsyncData(
      state.value?.copyWith(
            data: state.value?.data?.copyWith(address: address),
          ) ??
          StatusModel(),
    );
  }

  void changeCity(String? city) {
    state = AsyncData(
      state.value?.copyWith(data: state.value?.data?.copyWith(city: city)) ??
          StatusModel(),
    );
  }

  void changeState(String? states) {
    state = AsyncData(
      state.value?.copyWith(data: state.value?.data?.copyWith(state: states)) ??
          StatusModel(),
    );
  }

  void changeCountry(String? country) {
    state = AsyncData(
      state.value?.copyWith(
            data: state.value?.data?.copyWith(country: country),
          ) ??
          StatusModel(),
    );
  }

  void changeAccountNumber(String? acNo) {
    state = AsyncData(
      state.value?.copyWith(
            data: state.value?.data?.copyWith(bankAccount: acNo),
          ) ??
          StatusModel(),
    );
  }

  void changeAcName(String? acName) {
    state = AsyncData(
      state.value?.copyWith(
            data: state.value?.data?.copyWith(acHolderName: acName),
          ) ??
          StatusModel(),
    );
  }
  void changeIFSC(String? ifsc) {
    state = AsyncData(
      state.value?.copyWith(
            data: state.value?.data?.copyWith(ifscCode: ifsc),
          ) ??
          StatusModel(),
    );
  }
  Future<StatusModel<AddressModel>>saveAddress() async {
    if(state.value?.data?.email?.isNotEmpty!=true){
       state = AsyncData(
      state.value?.copyWith(
           status: OperationStatus.warning,message: "email cannot be empty",indicator: AddressErrorIndicator.email
          ) ??
          StatusModel()
    );
    
    }
    else if(state.value?.data?.pinode==null||state.value?.data?.pinode==0){
       state = AsyncData(
      state.value?.copyWith(
           status: OperationStatus.warning,message: "pincode cannot be empty",indicator: AddressErrorIndicator.pincode
          ) ??
          StatusModel());
    }else if(state.value?.data?.city?.isNotEmpty!=true){
       state = AsyncData(
      state.value?.copyWith(
           status: OperationStatus.warning,message: "city cannot be empty",indicator: AddressErrorIndicator.city
          ) ??
          StatusModel());
    }else if(state.value?.data?.state?.isNotEmpty!=true){
       state = AsyncData(
      state.value?.copyWith(
           status: OperationStatus.warning,message: "state cannot be empty",indicator: AddressErrorIndicator.state
          ) ??
          StatusModel());
    }else if(state.value?.data?.country?.isNotEmpty!=true){
       state = AsyncData(
      state.value?.copyWith(
           status: OperationStatus.warning,message: "country cannot be empty",indicator: AddressErrorIndicator.country
          ) ??
          StatusModel());
    }else if(state.value?.data?.bankAccount?.isNotEmpty!=true){
       state = AsyncData(
      state.value?.copyWith(
           status: OperationStatus.warning,message: "account number cannot be empty",indicator: AddressErrorIndicator.acNo
          ) ??
          StatusModel());
    }else if(state.value?.data?.ifscCode?.isNotEmpty!=true){
       state = AsyncData(
      state.value?.copyWith(
           status: OperationStatus.warning,message: "ifsc cannot be empty",indicator: AddressErrorIndicator.ifsc
          ) ??
          StatusModel());
    }else{
      AddressModel address=state.value?.data??AddressModel();
      state=AsyncLoading();
     StatusModel status= await CheckoutRepository.createAddress(address);
     state=AsyncData(StatusModel(title: status.title,message: status.message,status: status.status));
    
    }
    return state.value!;
  }
}
