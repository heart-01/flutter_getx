import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter ${DateTime.now().microsecondsSinceEpoch}'),
      ),
      body: const Center(
        child: Text(
          '0',
          style: TextStyle(fontSize: 100),
        ),
      ),
    );
  }
}
