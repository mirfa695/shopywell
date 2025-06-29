import 'package:shopywell/demo_data/demo_products.dart';
import 'package:shopywell/models/product_model.dart';
import 'package:shopywell/modules/home_screen/products/products_repository.dart';

class ProductCreateDemo {
  static Future<void> createProducts() async {
    for(ProductModel product in demoProducts){
      print(product.toJson());
      await ProductsRepository.createProduct(product);
    }
  
  }
}