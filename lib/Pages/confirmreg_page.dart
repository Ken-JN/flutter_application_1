import 'package:flutter/material.dart';
import 'package:flutter_application_1/Components/custom_button.dart';
import 'package:flutter_application_1/Controller/confirmreg_controller.dart';
import 'package:get/get.dart';

class ConfirmRegPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmregController());
    return Scaffold(
      appBar: AppBar(title: Text("Confirm Registration"),),
      body: Column(
        children: [
          SizedBox(height: 25),

          Text("Nama: ${controller.nama}", style: TextStyle(fontSize: 20, color: Colors.green),),
           Text("Alamat: ${controller.alamat}", style: TextStyle(fontSize: 20, color: Colors.green),),
           Text("Email: ${controller.email}", style: TextStyle(fontSize: 20, color: Colors.green),),
          Text("Nomor: ${controller.nomor}", style: TextStyle(fontSize: 20, color: Colors.green),),

          SizedBox(height: 25),
          
          CustomButton(buttonText: "Back", BackgroundColor: Colors.red, textColor: Colors.black, onPressed: Get.back,),
        ],
      ),
    );
  }
}