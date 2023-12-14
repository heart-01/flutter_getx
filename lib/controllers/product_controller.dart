import 'package:flutter_getx/models/product.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  RxList<Product> productList = <Product>[].obs;
  
  Product getProduct({required String productId}) {
    return productList.firstWhere((item) => (item.id == productId));
  }
}
