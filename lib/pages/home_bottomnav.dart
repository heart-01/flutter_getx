import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/bottom_nav_controller.dart';
import 'package:flutter_getx/pages/chat.dart';
import 'package:flutter_getx/pages/feed.dart';
import 'package:flutter_getx/pages/profile.dart';
import 'package:get/get.dart';

class HomeBottomNav extends StatelessWidget {
  const HomeBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<BottomNavController>(
      init: BottomNavController(),
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: const Text('GetX Navigation'),
        ),
        body: SafeArea(
          child: Center(
            child: IndexedStack(
              index: controller.navIndex.value,
              children: const [
                Feed(),
                Chat(),
                Profile(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: controller.navIndex.value,
          onDestinationSelected: ((index) {
            controller.navIndex.value = index;
          }),
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.rss_feed),
              label: 'Feed',
            ),
            NavigationDestination(
              icon: Icon(Icons.chat),
              label: 'Chat',
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
