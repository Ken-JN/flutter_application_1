import 'package:get/get.dart';
import 'package:flutter_application_1/Models/makanan_model.dart';

class DetaillistmakananController extends GetxController {
  late MakananModel makanan;
  late String namaMakanan;
  late String deskripsiMakanan;
  late String hargaMakanan;
  late String gambar;
  late String rating;
  late String review;

  @override
  void onInit() {
    super.onInit();
    makanan = Get.arguments;
    namaMakanan = makanan.namaMakanan;
    deskripsiMakanan = makanan.deskripsiMakanan;
    hargaMakanan = makanan.hargaMakanan;
    gambar = makanan.gambar;
    rating = makanan.rating;
    review = makanan.review;
  }
}

