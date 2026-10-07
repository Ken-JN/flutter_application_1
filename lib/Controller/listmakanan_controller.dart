import 'package:get/get.dart';
import 'package:flutter_application_1/Models/makanan_model.dart';

class ListmakananController extends GetxController {

  List<MakananModel> listMakanan = [
    MakananModel(
      namaMakanan: 'Soto Ayam',
      deskripsiMakanan: 'Soto ayam makanan khas Indonesia berupa sup ayam berkuah kuning dengan bumbu rempah seperti kunyit, serai, dan daun jeruk',
      hargaMakanan: 'Rp 15.000',
      gambar: 'https://o-cdf.oramiland.com/unsafe/cnc-magazine.oramiland.com/parenting/original_images/soto_ayam_bumbu_kuning.jpg',
      rating: '5',
      review: 'wuenak',
    ),
    MakananModel(
      namaMakanan: 'Lentog',
      deskripsiMakanan: 'Lentog makanan tradisional khas Kabupaten Kudus, Jawa Tengah, yang menyerupai lontong sayur dan sangat populer sebagai menu sarapan.',
      hargaMakanan: 'Rp 12.000',
      gambar: 'https://image.idn.media/post/20220101/screenshot-2022-01-02-05-10-19-72-1c337646f29875672b5a61192b9010f9-6d2cbb4bbec2340f770674be006d2944-0c6c08844a9f986440835cb11b7d41d0.jpg',
      rating: '4',
      review: 'Bumbune enak',
    ),
    MakananModel(
      namaMakanan: 'Sate Ayam',
      deskripsiMakanan: 'Sate ayam hidangan tradisional khas Indonesia berupa potongan daging ayam yang ditusuk menggunakan lidi bambu, lalu dipanggang di atas bara api arang hingga matang.',
      hargaMakanan: 'Rp 20.000',
      gambar: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYl7YyuGr_vIp41cytKJfAqOJxE7WNvzmXsdWxKQcAb_nmLws575GnxbY&s=10',
      rating: '5',
      review: 'Enak ',
    ),
    MakananModel(
      namaMakanan: 'Bakso',
      deskripsiMakanan: 'Bakso makanan berupa bola-bola daging yang sangat populer dan lazim ditemukan di pinggir jalan',
      hargaMakanan: 'Rp 10.000',
      gambar: 'https://asset.tribunnews.com/PdNdZ8WFnhSh8g0l5t0cPLGF478=/1200x675/filters:upscale():quality(30):format(webp):focal(0.5x0.5:0.5x0.5)/tribunnews/foto/bank/originals/bakso-sapi-kuah-1.jpg',
      rating: '4',
      review: 'Baksone enak',
    ),
    MakananModel(
      namaMakanan: 'Bolang Baling',
      deskripsiMakanan: 'Bolang-baling adalah roti goreng tradisional berbentuk kubus atau balok kecil yang mengembang dan kosong di bagian dalamnya, mirip bantal kecil.',
      hargaMakanan: 'Rp 8.000',
      gambar: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShlIIPuBs9f0b7ClpkhefMFWDOsbMZhLVzSHscLG4XWQ&s=10',
      rating: '3',
      review: 'Kureng',
    ),
  ];

}