import 'package:shopywell/helpers.dart/fire_store_helpers.dart';
import 'package:shopywell/models/category_model.dart';

class ProductElementsRepository {
  static final categories = FirestoreService(collectionName: 'categories');
  static final adsCollection = FirestoreService(collectionName: 'ads');
  static Future<List<CategoryModel>> getAllCategories()async{
   List<Map<String, dynamic>> categoryList= await categories.getAll();
   return categoryList.map((e)=>CategoryModel.fromJson(e)).toList();
  }
  static Future<List<String>> getAdImages()async{
   List<Map<String, dynamic>> adList= await adsCollection.getAll();
   return adList.map((e)=>e["image"].toString()).toList();
  }
}