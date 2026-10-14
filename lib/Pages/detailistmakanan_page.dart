import 'package:flutter/material.dart';
import 'package:flutter_application_1/Controller/detaillistmakanan_controller.dart';
import 'package:get/get.dart';

class DetailListMakanan extends StatelessWidget {
  const DetailListMakanan({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DetaillistmakananController());

    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Makanan"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
   
              Card(
                child: Image.network(
                  controller.gambar,
                  height: 200,
                  width: double.infinity,
                ),
              ),

              SizedBox(height: 15), 

              Text(
                controller.namaMakanan,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 5),


              Text(
                "Harga: " + controller.hargaMakanan,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  Icon(Icons.star, color: Color.fromARGB(255, 248, 186, 2)),
                  Icon(Icons.star, color: Color.fromARGB(255, 248, 186, 2)),
                  Icon(Icons.star, color: Color.fromARGB(255, 248, 186, 2)),
                  Icon(Icons.star, color: Color.fromARGB(255, 248, 186, 2)),
                  Icon(Icons.star, color: Color.fromARGB(255, 248, 186, 2)),
                  SizedBox(width: 5),
                  Text(
                    controller.rating + " / 5",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              SizedBox(height: 15),

   
              Text(
                "Detail Makanan:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                controller.deskripsiMakanan,
                style: TextStyle(fontSize: 16),
              ),

              SizedBox(height: 15),
              SizedBox(height: 10),

   
              Text(
                "Review Pelanggan:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),

              Card(
                elevation: 5,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Budi Santoso",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(Icons.star, color: Color.fromARGB(255, 248, 186, 2), size: 18),
                          Icon(Icons.star, color: Color.fromARGB(255, 248, 186, 2), size: 18),
                          Icon(Icons.star, color: Color.fromARGB(255, 248, 186, 2), size: 18),
                          Icon(Icons.star, color: Color.fromARGB(255, 248, 186, 2), size: 18),
                          Icon(Icons.star, color: Color.fromARGB(255, 248, 186, 2), size: 18),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        controller.review,
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}