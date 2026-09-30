import 'package:flutter/material.dart';
import 'package:flutter_application_1/Components/custom_button.dart';
import 'package:flutter_application_1/Components/custom_textField.dart';
import 'package:flutter_application_1/Controller/registration_controller.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';
import 'package:dropdown_flutter/dropdown_flutter.dart';

//https://pub.dev/packages/dropdown_flutter

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();
    TextEditingController txtNomor = TextEditingController();
    final controller = Get.put(RegistrationController());

    const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

    return Scaffold(
      appBar: AppBar(title: Text("Halaman Rsgistrasi")),
      body: Column(
        children: [
          CustomTextField(
            txtController: txtNama,
            MyHint: "Input Nama",
            textColor: Colors.black,
            isNumber: false,
          ),
          CustomTextField(
            txtController: txtAlamat,
            MyHint: "Input Alamat",
            textColor: Colors.black,
            isNumber: false,
          ),
          CustomTextField(
            txtController: txtEmail,
            MyHint: "Input Email",
            textColor: Colors.black,
            isNumber: false,
          ),
          CustomTextField(
            txtController: txtNomor,
            MyHint: "Input Nomor WA",
            textColor: Colors.black,
            isNumber: true,
          ),

     Obx(() => DropdownButton<String>(
              value: controller.jenisKelamin.value,
              items: const ['Laki-laki', 'Perempuan'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                if (value != null) {
                  controller.jenisKelamin.value = value;
                }
              },
            )),

          SizedBox(height: 25),

          CustomButton(
            buttonText: "Confirm",
            BackgroundColor: Colors.green,
            textColor: Colors.white,
            onPressed: () {
              Get.toNamed(
                Routes.confirmreg,
                arguments: {
                  'name': txtNama.text.toString(),
                  'alamat': txtAlamat.text.toString(),
                  'email': txtEmail.text.toString(),
                  'nomor': txtNomor.text.toString(),
                  'jenis_kelamin': controller.jenisKelamin.value,
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
