import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/home_bottomnav.dart';
import 'package:flutter_getx/pages/test_route/home.dart';
import 'package:get/get.dart';

import 'pages/test_route/first.dart';
import 'pages/test_route/second.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // home: const HomeBottomNav(),
      initialRoute: '/home',
      getPages: [
        GetPage(
          name: '/home',
          page: () => const Home(),
        ),
        GetPage(
          name: '/first',
          page: () => const FirstScreen(),
        ),
        GetPage(
          name: '/second',
          page: () => const SecondScreen(),
        ),
      ],
    );
  }
}
