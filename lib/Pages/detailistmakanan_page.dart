import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/makanan_model.dart';
import 'package:get/get.dart';

class DetailListMakanan extends StatelessWidget {
  const DetailListMakanan({super.key});

  @override
  Widget build(BuildContext context) {

    final MakananModel makanan = Get.arguments;

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
   
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  makanan.gambar,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(height: 15),

          
              Text(
                makanan.namaMakanan,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 5),

    
              Text(
                "Harga: " + makanan.hargaMakanan,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  SizedBox(width: 5),
                  Text(
                    makanan.rating + " / 5",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              SizedBox(height: 15),
              Divider(thickness: 2),
              SizedBox(height: 10),

    
              Text(
                "Detail Makanan:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                makanan.deskripsiMakanan,
                style: TextStyle(fontSize: 16),
              ),

              SizedBox(height: 15),
              Divider(thickness: 2),
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
                          Icon(Icons.star, color: Colors.amber, size: 18),
                          Icon(Icons.star, color: Colors.amber, size: 18),
                          Icon(Icons.star, color: Colors.amber, size: 18),
                          Icon(Icons.star, color: Colors.amber, size: 18),
                          Icon(Icons.star, color: Colors.amber, size: 18),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        makanan.review,
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