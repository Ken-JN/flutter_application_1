import 'package:flutter/material.dart';
import 'package:flutter_application_1/Components/custom_textField.dart';
import 'package:flutter_application_1/Controller/kalkulator_controller.dart';
import 'package:get/get.dart';

class KalkulatorPage extends StatelessWidget {
  KalkulatorPage({super.key});

  final TextEditingController txtAngka1 = TextEditingController();
  final TextEditingController txtAngka2 = TextEditingController();
  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalkulator"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomTextField(txtController: txtAngka1, MyHint: "Input angka", textColor: Colors.black, isNumber: true,),
              ),
              Expanded(
                child: CustomTextField(txtController: txtAngka2, MyHint: "Input angka", textColor: Colors.black, isNumber: true, ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)),
                onPressed: () {
                  int angka1 = int.parse(txtAngka1.text);
                  int angka2 = int.parse(txtAngka2.text);
                  controller.tambah(angka1, angka2);
                },
                child: Text('+'),
              ),

              SizedBox(width: 20),

              ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)),
                onPressed: () {
                  int angka1 = int.parse(txtAngka1.text);
                  int angka2 = int.parse(txtAngka2.text);
                  controller.kurang(angka1, angka2);
                },
                child: Text('-'),
              ),

              SizedBox(width: 20),

              ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
                onPressed: () {
                  int angka1 = int.parse(txtAngka1.text);
                  int angka2 = int.parse(txtAngka2.text);
                  controller.kali(angka1, angka2);
                },
                child: Text('x'),
              ),

              SizedBox(width: 20),

              ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
                onPressed: () {
                  int angka1 = int.parse(txtAngka1.text);
                  int angka2 = int.parse(txtAngka2.text);
                  controller.bagi(angka1, angka2);
                },
                child: Text('/'),
              ),
              SizedBox(width: 20),
            ],
          ),

          SizedBox(height: 30),

          Obx(
            () => Text(
              controller.hasil.toString(),
            ),
          ),

          SizedBox(height: 30),

          ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
            onPressed: () {
              controller.reset();

              txtAngka1.clear();
              txtAngka2.clear();
            },
            child: Text('Reset'),
          ),
        ],
      ),
    );
  }
}