import 'package:flutter_getx/models/cart_item.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  RxList<CartItem> cartItemList = <CartItem>[].obs;

  void addToCart({required CartItem product}) {
    // Check if the product is already in the cart
    if (cartItemList.where((item) => item.productId == product.productId).isEmpty) {
      cartItemList.add(product);
    } else {
      // If the product is already in the cart, increase the quantity
      cartItemList.firstWhere((item) => item.productId == product.productId).quantity++;
    }

    update(); // Update the UI when using GetBuilder
  }

  deleteItemFfromCart({required String productId}) {
    cartItemList.removeWhere((element) => (element.productId == productId));
    
    update(); // Update the UI when using GetBuilder
  }
}
