import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quotedemo/pages/tabs/explore/explore.dart';

import '../tabs/home_page/home_page_view.dart';

class NavigationHandlerController extends GetxController {
  final currentIndex = 0.obs;
  final selectedIndex = 0.obs;

  onItemTapped(int index) {
    selectedIndex.value = index;
  }

  bool isCurrent(int index) {
    return selectedIndex.value == index;
  }

  List<Widget> widgetOptions = <Widget>[
    HomePagePage(),
    const ExploreScreen(),
    const Center(
      child: Text('Profile',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    ),
  ];
  late bool canVibrate;
  @override
  void onReady() async {}

  @override
  void onClose() {}
}
