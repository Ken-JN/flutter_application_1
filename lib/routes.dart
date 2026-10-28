import 'package:flutter_application_1/Menu/history_page.dart';
import 'package:flutter_application_1/Menu/home_page.dart';
import 'package:flutter_application_1/Menu/profile_page.dart';
import 'package:flutter_application_1/Pages/confirmreg_page.dart';
import 'package:flutter_application_1/Pages/detailistmakanan_page.dart';
import 'package:flutter_application_1/Pages/listmakanan_page.dart';
import 'package:flutter_application_1/Pages/mainmenu_page.dart';
import 'package:flutter_application_1/Pages/menu_drawer_page.dart';
import 'package:flutter_application_1/Pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirmreg = "/confirm_reg";
  static const String listmakanan = "/list_makanan";
  static const String detaillistmakanan = "/detail_list_makanan";
  static const String mainmenu = "/main_menu";
  static const String menudrawer = "/menudrawer";
  static const String history = "/history";
  static const String home = "/home";
  static const String profile = "/profile";

  static final myPages = [
    GetPage(name: confirmreg, page: () => ConfirmRegPage()),
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: listmakanan, page: () => ListMakananPage()),
    GetPage(name: detaillistmakanan, page: () => DetailListMakanan()),
    GetPage(name: mainmenu, page: () => const MainMenuPage()),
    GetPage(name: menudrawer, page: () => const MenuDrawerPage()),
    GetPage(name: history, page: () => const HistoryPage()),
    GetPage(name: home, page: () => HomePage()),
    GetPage(name: profile, page: () => const ProfilePage()),
  ];
}
