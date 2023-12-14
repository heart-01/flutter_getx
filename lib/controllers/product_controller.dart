import 'package:flutter_getx/models/data.dart';
import 'package:flutter_getx/models/product.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  Product getProduct({required String productId}) {
    return listProduct.firstWhere((item) => (item.id == productId));
  }
}
