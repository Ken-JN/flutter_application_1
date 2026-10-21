import 'package:flutter/material.dart';
import 'package:flutter_application_1/Menu/history_page.dart';
import 'package:flutter_application_1/Menu/home_page.dart';
import 'package:flutter_application_1/Menu/profile_page.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  final List<Widget> listPages = [
    HomePage(),
    HistoryPage(),
    ProfilePage(),
  ];
}
