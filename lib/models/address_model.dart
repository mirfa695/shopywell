import 'package:freezed_annotation/freezed_annotation.dart';
part 'address_model.freezed.dart';
part 'address_model.g.dart';
@freezed
  abstract class AddressModel with _$AddressModel {
  const factory AddressModel({
    String? id,
   @JsonKey(name: "customer_ref") String? customerRef,
     @JsonKey(name: "pin_code") int? pinode,
     String? email,
     String? password,
    String? address,
    String? city,
    String? state,
   String? country,
  @JsonKey(name: "bank_account")  String? bankAccount,
  @JsonKey(name: "ac_holder_name")  String? acHolderName,
@JsonKey(name: "ifsc_code")String? ifscCode,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) => _$AddressModelFromJson(json);
  
}