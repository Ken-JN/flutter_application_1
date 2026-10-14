import 'package:flutter_application_1/Pages/registration_page.dart';
import 'package:flutter_application_1/Pages/confirmreg_page.dart';
import 'package:flutter_application_1/Pages/listmakanan_page.dart';
import 'package:flutter_application_1/Pages/detailistmakanan_page.dart';

import 'package:get/get.dart';

class Routes {

  static const String registration = "/registration";
  static const String confirmreg = "/confirm_reg";
  static const String listmakanan = "/list_makanan";
  static const String detaillistmakanan = "/detail_list_makanan";


  static final myPages=[

    GetPage(name: confirmreg, page: ()=> ConfirmRegPage()),
    GetPage(name: registration, page: ()=> RegistrationPage()),
    GetPage(name: listmakanan, page: ()=> ListMakananPage()),
    GetPage(name: detaillistmakanan, page: ()=> DetailListMakanan()),
  ];


}