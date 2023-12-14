import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/cart_controller.dart';
import 'package:flutter_getx/controllers/product_controller.dart';
import 'package:get/get.dart';

class ProductCart extends StatelessWidget {
  ProductCart({super.key});

  final cartController = Get.find<CartController>();
  final productCoontroller = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 118.0,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cartController.cartItemList.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemBuilder: (context, index) {
          final product = productCoontroller.getProduct(
            productId: cartController.cartItemList[index].productId,
          );
          return Stack(
            children: [
              // product item
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipOval(
                  child: Container(
                    color: Colors.green.shade200,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(product.name),
                          Text("x${cartController.cartItemList[index].quantity}"),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // Button delete
              Positioned(
                top: 8,
                right: 4,
                child: GestureDetector(
                  onTap: () {
                    // remove product item from cart
                    cartController.deleteItemFfromCart(
                      productId: cartController.cartItemList[index].productId,
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(
                      Icons.remove_circle,
                      size: 32,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
