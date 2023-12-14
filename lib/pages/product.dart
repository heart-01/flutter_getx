import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/cart_controller.dart';
import 'package:flutter_getx/pages/product_cart.dart';
import 'package:flutter_getx/pages/product_list.dart';
import 'package:get/get.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
        init: CartController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Product'),
            ),
            body: SingleChildScrollView(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Wrap(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 8.0),
                        child: Text('Cart',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ),
                      // list item in shopping cart
                      (controller.cartItemList.isEmpty)
                          ? const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Text('Empty Cart')],
                            )
                          : ProductCart(),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 8.0),
                        child: Text('Products',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ),
                      // list item in gridview
                      ProductList(),
                    ],
                  );
                },
              ),
            ),
          );
        });
  }
}
