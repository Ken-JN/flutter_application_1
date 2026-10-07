import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/detailistmakanan_page.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/Controller/listmakanan_controller.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListmakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Makanan"),),
      body: Container(
        margin: EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: controller.listMakanan.length, 
          itemBuilder: (context, index){
          final makanan = controller.listMakanan[index];
          return InkWell(
            onTap: (){ 
              Get.to(
                () => const DetailListMakanan(),
                arguments: makanan,
              );
            },
            child: Card(
              elevation: 10,
              child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    makanan.namaMakanan,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text("Harga: " + makanan.hargaMakanan, style: TextStyle(fontSize: 16),),
                ],
              ),
            ),
            ),
          );
        }),
      ),
    );
  }
}