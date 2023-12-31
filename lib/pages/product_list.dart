import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/cart_controller.dart';
import 'package:flutter_getx/models/cart_item.dart';
import 'package:flutter_getx/models/data.dart';
import 'package:get/get.dart';

class ProductList extends StatelessWidget {
 ProductList({super.key});

  final controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: listProduct.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: (context, index) {
        return Stack(
          children: [
            GestureDetector(
              onTap: () {
                // add product item to cart
                controller.addToCart(
                  product: CartItem(
                    productId: listProduct[index].id, 
                    price: listProduct[index].price,
                    quantity: 1
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipOval(
                  child: Container(
                    color: Colors.blue.shade200,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(listProduct[index].name),
                          Text(listProduct[index].price.toString()),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}