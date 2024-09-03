import 'package:flutter/material.dart';

void main() {
  runApp(tugas_modul());
}

class tugas_modul extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tugas Modul (UI sederhana)'),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Bagian "Berita Terbaru" dan "Pertandingan Hari Ini"
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Berita Terbaru',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Trending',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  // Container Pertama
                  Container(
                    width: double.infinity,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.blue)),
                    child: Column(
                      children: [
                        Image.network(
                          'https://asset.kompas.com/crops/2r-qwSpgpHZm8rLMPD3hoV_rEfc=/0x0:612x306/780x390/data/photo/2023/02/22/63f5b60a64cda.jpeg',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '8 Istilah Penyakit yang Cuma Ada di Indonesia',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          color: Colors.blue,
                          width: double.infinity,
                          padding: EdgeInsets.all(4),
                          child: Text(
                            'Selengkapnya...',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  // Container Kedua
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Image.network(
                            'https://asset.kompas.com/crops/N4_DrxW2ulCytgh75xnR4IEPDqk=/0x0:0x0/750x500/data/photo/2024/08/19/66c34379a962c.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Politikus Partai Golongan Karya (Golkar) Ridwan Kamil bakal mendaftar sebagai bakal calon gubernur Jakarta ke Kantor Komisi Pemilihan Umum (KPU) besok, Rabu (28/8/2024). "Ridwan Kamil akan mendaftar (sebagai bacagub) tanggal 28 Agustus 2024," ujar Ketua Divisi Sosialisasi, Pendidikan Pemilih, dan Partisipasi Masyarakat KPU Jakarta Astri Megatari saat dikonfirmasi Kompas.com, Selasa (27/8/2024).',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  // Copy-Paste Container Kedua
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Image.network(
                            'https://asset.kompas.com/crops/LhEjAmLRocF8tcRyZYmyzZCMiag=/0x0:0x0/750x500/data/photo/2024/08/26/66cc28ef21e1b.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Kepala Sekretariat Presiden sekaligus Penjabat (Pj) Gubernur DKI Jakarta, Heru Budi Hartono, mengimbau masyarakat di Jakarta untuk bekerja dari rumah (work from home/WFH) pada 5 September 2024. Imbauan ini dikeluarkan lantaran adanya dua agenda besar yang akan berlangsung di kawasan Senayan, Jakarta Pusat, yakni Misa Akbar yang dipimpin oleh Paus Fransiskus di Gelora Bung Karno (GBK) dan Indonesia Sustainability Forum (ISF) di Jakarta Convention Center (JCC). Baca juga: Sejarah di Balik Busana Paus, Pemimpin Tertinggi Gereja Katolik "Penekanan kami adalah bahwa di tanggal 5 (September) selain ada kepala negara, tamu negara, juga ada kegiatan kenegaraan lainnya yang bersamaan yaitu Indonesia Sustainability Forum yang diadakan di Jakarta Convention Center (JCC)," ujar Heru di Kompleks Istana Kepresidenan, Jakarta, Senin (26/8/2024).',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
