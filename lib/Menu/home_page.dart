import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/detailistmakanan_page.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/Controller/listmakanan_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

   final ListmakananController controller = Get.put(ListmakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(title: Text("List Makanan")),
      body: Container(
        margin: EdgeInsets.all(15),
        height: 100,
        child: Obx(
          () => ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.listMakanan.length,
              itemBuilder: (context, index) {
                final makanan = controller.listMakanan[index];
            
                return InkWell(
                  onTap: () {
                    Get.toNamed(Routes.detaillistmakanan, arguments: makanan);
                  },
            
                  child: Card(
                    elevation: 10,
                    child: Container(
                      width: 150,
                      margin: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            makanan.namaMakanan,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Harga: " + makanan.hargaMakanan,
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      );
  }
}