import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const TugasPakBidin());
} // Tambahkan package carousel_slider

class TugasPakBidin extends StatelessWidget {
  const TugasPakBidin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Shopee | Toko online no.1 di Indonesia",
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 239, 237, 237),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Header dengan navigasi
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 243, 110, 44),
                ),
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Cari semua di Shopee",
                            prefixIcon: Icon(Icons.search, color: Colors.grey),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.message_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),

              // Slider Promosi
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 130,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                  ),
                  items: [
                    'https://cf.shopee.co.id/file/id-11134258-7r991-lzyuchtffd2g33_xxhdpi',
                    'https://cf.shopee.co.id/file/id-11134258-7r98u-lzyqbn4ufzyz16_xxhdpi',
                    'https://cf.shopee.co.id/file/id-11134258-7r98w-lzyrlfunqvvsab_xxhdpi',
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(i, fit: BoxFit.cover),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),

              // Menu Produk dengan scroll horizontal
              Container(
                margin: EdgeInsets.only(left: 15, bottom: 15, right: 15),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildMenuItem(Icons.phone_android, "Pulsa"),
                    _buildMenuItem(Icons.airplane_ticket, "Voucher"),
                    _buildMenuItem(Icons.bolt, "Tagihan"),
                    _buildMenuItem(Icons.local_grocery_store, "Belanja"),
                    _buildMenuItem(Icons.games, "Shopee Games"),
                    _buildMenuItem(Icons.window, "Lihat Lainnya"),
                  ],
                ),
              ),

              // Rekomendasi Produk
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        "Rekomendasi untuk Anda",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: GridView.count(
                        shrinkWrap: true, // Mengatur GridView sesuai konten
                        crossAxisCount: 2,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 20,
                        physics:
                            NeverScrollableScrollPhysics(), // Menonaktifkan scroll
                        children: [
                          _buildTransactionItem(
                            'https://down-id.img.susercontent.com/file/id-11134207-7r98p-lmanf3khuasf46',
                            "TURUN HARGA ! JAKET BOMBER PRIA MAN JACKET || JAKET BOMBER COWOK EKSEKUTIF MAN || JAKET BOMBER POLOS PRIA",
                          ),
                          _buildTransactionItem(
                            'https://down-id.img.susercontent.com/file/f53f25740dd16f44aa2aff1cdcaba527',
                            "Dompet kulit sintetis dompet pria murah dompet lipat pria dompet fashion pria",
                          ),
                          _buildTransactionItem(
                            'https://down-id.img.susercontent.com/file/84c840a78670a2848d1475dba1aec2b0',
                            "MAGSAFE CASE - Fullcover Anticrack on every side - For iPhone XR XSMAX 11 12 13 MINI PRO PROMAX 15 14 14PLUS 14PRO 14PROMAX",
                          ),
                          _buildTransactionItem(
                            'https://down-id.img.susercontent.com/file/id-11134207-7r98t-lwpeeqypwu9ac2',
                            "Jimmy and Martin - Basic Slim Chino Pants - S414",
                          ),
                          _buildTransactionItem(
                            'https://down-id.img.susercontent.com/file/id-11134207-7r98p-lmanf3khuasf46',
                            "TURUN HARGA ! JAKET BOMBER PRIA MAN JACKET || JAKET BOMBER COWOK EKSEKUTIF MAN || JAKET BOMBER POLOS PRIA",
                          ),
                          _buildTransactionItem(
                            'https://down-id.img.susercontent.com/file/f53f25740dd16f44aa2aff1cdcaba527',
                            "Dompet kulit sintetis dompet pria murah dompet lipat pria dompet fashion pria",
                          ),
                          _buildTransactionItem(
                            'https://down-id.img.susercontent.com/file/84c840a78670a2848d1475dba1aec2b0',
                            "MAGSAFE CASE - Fullcover Anticrack on every side - For iPhone XR XSMAX 11 12 13 MINI PRO PROMAX 15 14 14PLUS 14PRO 14PROMAX",
                          ),
                          _buildTransactionItem(
                            'https://down-id.img.susercontent.com/file/id-11134207-7r98t-lwpeeqypwu9ac2',
                            "Jimmy and Martin - Basic Slim Chino Pants - S414",
                          ),
                          // Tambahkan lebih banyak item jika diperlukan
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String label) {
    return Container(
      width: 80,
      margin: EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  color: Color.fromARGB(255, 210, 210, 210), width: 1),
            ),
            child: Icon(icon, size: 24, color: Colors.orange),
          ),
          SizedBox(height: 8),
          Text(label,
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

  Widget _buildTransactionItem(String imageUrl, String label) {
    return Container(
      height: 250, // Tinggi tetap yang kamu tentukan
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Mengatur teks ke kiri
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            child: Image.network(
              imageUrl,
              height: 150, // Menentukan tinggi gambar
              width: double.infinity, // Gambar memenuhi lebar container
              fit: BoxFit.cover, // Gambar menyesuaikan container
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0), // Memberikan jarak pada teks
            child: Text(
              label,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              maxLines: 2, // Batas maksimal 2 baris teks
              overflow:
                  TextOverflow.ellipsis, // Teks dipotong jika terlalu panjang
            ),
          ),
        ],
      ),
    );
  }
}
