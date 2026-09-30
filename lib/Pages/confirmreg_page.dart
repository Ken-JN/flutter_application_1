import 'package:flutter/material.dart';
import 'package:flutter_application_1/Components/custom_button.dart';
import 'package:flutter_application_1/Controller/confirmreg_controller.dart';
import 'package:get/get.dart';

class ConfirmRegPage extends StatelessWidget {
  const ConfirmRegPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmregController());
    return Scaffold(
      appBar: AppBar(title: Text("Confirm Registration"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25),

          Text("Nama: ${controller.nama}", style: TextStyle(fontSize: 20, color: Colors.green),),

          // ngambil disini https://yurduseven.net/fmt-2-how-to-draw-a-horizontal-line-in-flutter/
           const Divider(
                color: Colors.black,
                height: 2.5,
                thickness: 2,
                indent: 0,
                endIndent: 200,
              ),

           Text("Alamat: ${controller.alamat}", style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 76, 81, 175)),),

           const Divider(
                color: Colors.black,
                height: 2.5,
                thickness: 2,
                indent: 0,
                endIndent: 200,
              ),

           Text("Email: ${controller.email}", style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 76, 175, 149)),),

            const Divider(
                color: Colors.black,
                height: 2.5,
                thickness: 2,
                indent: 0,
                endIndent: 200,
              ),

          Text("Nomor: ${controller.nomor}", style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 0, 170, 255)),),

           const Divider(
                color: Colors.black,
                height: 2.5,
                thickness: 2,
                indent: 0,
                endIndent: 200,
              ),

          Text("Gender: ${controller.jenisKelamin}", style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 5, 182, 40))),


          SizedBox(height: 25),
          
          CustomButton(buttonText: "Back", BackgroundColor: Colors.red, textColor: Colors.black, onPressed: Get.back,),
        ],
      ),
    );
  }
}