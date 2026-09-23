import 'package:get/get.dart';

class KalkulatorController extends GetxController{


  var hasil = 0.obs; // obs singaktan dari observe untuk mereload hasil


  void tambah(int angka1, int angka2){
    int hasilTambah = angka1 + angka2;
    hasil.value = hasilTambah;
    Get.snackbar(
      "Hasil Tambah",
      "Hasilnya ${hasilTambah}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kurang(int angka1, int angka2){
    int hasilKurang = angka1 - angka2;
    hasil.value = hasilKurang;
     Get.snackbar(
      "Hasil Kurang",
      "Hasilnya ${hasilKurang}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
  void kali(int angka1, int angka2){
    int hasilKali = angka1 * angka2;
    hasil.value = hasilKali;
     Get.snackbar(
      "Hasil Kali",
      "Hasilnya ${hasilKali}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
  void bagi(int angka1, int angka2){
    if (angka2 != 0){
      int hasilBagi = angka1 ~/ angka2;
      hasil.value = hasilBagi;
       Get.snackbar(
      "Hasil Bagi",
      "Hasilnya ${hasilBagi}",
      snackPosition: SnackPosition.BOTTOM,
    );
    }else{
      hasil.value = 0;
       Get.snackbar(
      "Tidak bisa Membagi",
      "Hasilnya NOLLLL",
      snackPosition: SnackPosition.BOTTOM,
    );
    }
    // int hasilBagi = angka1 ~/ angka2;
    
    // hasil.value = hasilBagi;
  }
  void reset (){
    hasil.value = 0;
  }
}