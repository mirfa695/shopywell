import 'package:shopywell/helpers.dart/fire_store_helpers.dart';
import 'package:shopywell/models/product_model.dart';

class ProductsRepository {
    static final products = FirestoreService(collectionName: 'products');
 static Future<void> createProduct(ProductModel model) async {
 try{
  await products.create(model.toJson());
 }catch(e){
  rethrow;
 }
  
  }
   static Future<List<ProductModel>> getProductsPreview({int limit=10}) async {
 try{
  List<Map<String,dynamic>> productList= await products.getAll(limit: 10);
  return productList.map((e)=>ProductModel.fromJson(e)).toList();
 }catch(e){
  print(e);
  rethrow;
 }
  
  }
    static Future<List<ProductModel>> getProductsList() async {
 try{
  List<Map<String,dynamic>> productList= await products.getAll();
  return productList.map((e)=>ProductModel.fromJson(e)).toList();
 }catch(e){
  print(e);
  rethrow;
 }
  
  }
   static Future<ProductModel> getProduct(ProductModel product) async {
 try{
  
  List<ProductModel> similiarItems=[];
  for(var similiarItem in product.similiarItems){
    similiarItems.add(await products.getAll(field: "id",isEqualTo: similiarItem).then((v)=>ProductModel.fromJson(v.firstOrNull??{})));
  }
   
  return product.copyWith(similiarProducts: similiarItems);
 }catch(e){
  print(e);
  rethrow;
 }
  
  }
}