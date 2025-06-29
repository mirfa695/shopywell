import 'package:hive/hive.dart';
import 'package:shopywell/enums/common_enums.dart';
import 'package:shopywell/helpers.dart/common_helpers.dart';
import 'package:shopywell/helpers.dart/fire_store_helpers.dart';
import 'package:shopywell/models/address_model.dart';
import 'package:shopywell/models/purchase_model.dart';
import 'package:shopywell/models/status_model.dart';

class CheckoutRepository {
    static final checkout = FirestoreService(collectionName: 'address');
       static final purchase = FirestoreService(collectionName: 'purchase');
 static Future<StatusModel> createAddress(AddressModel model) async {
 try{
   var box = Hive.box('firstTimeData');
  String userId = box.get('user_id', defaultValue: "");
  await checkout.create(model.copyWith(customerRef: userId,id: CommonHelpers.generateRandomString(8)).toJson());
 return StatusModel(status: OperationStatus.success);
 }catch(e){
return StatusModel(status: OperationStatus.failure,title: "Error",message: e.toString());
 }
  
  }
     static Future<List<AddressModel>> getAddressList() async {
 try{
    var box = Hive.box('firstTimeData');
  String userId = box.get('user_id', defaultValue: "");
  List<Map<String,dynamic>> address= await checkout.getAll(field: "customer_ref",isEqualTo: userId);
  List<AddressModel> addressess = address.map((e) => AddressModel.fromJson(e)).toList();
  
  return addressess;
 }catch(e){
  print(e);
  rethrow;
 }
  
  }
  static Future<StatusModel> createPuchase(PurchaseModel model) async {
 try{
   var box = Hive.box('firstTimeData');
  String userId = box.get('user_id', defaultValue: "");
  print(model.copyWith(customerRef: userId,purchaseItemIds: model.purchaseItems?.map((e)=>e.id??"").toList()??[],addressRef: model.address?.id).toJson());
  await purchase.create(model.copyWith(customerRef: userId,purchaseItemIds: model.purchaseItems?.map((e)=>e.id??"").toList()??[],addressRef: model.address?.id).toJson());
 return StatusModel(status: OperationStatus.success);
 }catch(e){
  print(e);
return StatusModel(status: OperationStatus.failure,title: "Error",message: e.toString());
 }
  
  }
}