import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/app_controller.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static final _controller = Get.put(AppController()); // Call app_controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter ${DateTime.now().microsecondsSinceEpoch}'),
      ),
      body: Center(
        child: Obx(
          () => Text(
            '${_controller.counter.value}',
            style: const TextStyle(fontSize: 100),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _controller.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
