import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/test_route/first.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const FirstScreen()),
                child: const Text('Go.to First Screen'),
              ),
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () => Get.toNamed('/second'),
                child: const Text('Go.toName Second Screen'),
              ),
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () => Get.offAllNamed('/second'),
                child: const Text('Go.offAllName Second Screen'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
