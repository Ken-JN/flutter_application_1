import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ConfirmregController extends GetxController {
late String nama;
late String alamat;
late String email;
late String nomor;
late String jenisKelamin;


 @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    nama = arguments['name'];
    alamat = arguments['alamat'];
    email = arguments['email'];
    nomor = arguments['nomor'];
    jenisKelamin = arguments['jenis_kelamin'];
  }
}