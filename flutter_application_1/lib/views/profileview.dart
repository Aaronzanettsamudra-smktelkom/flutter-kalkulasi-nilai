import 'package:flutter/material.dart';

class Profileview extends StatelessWidget {
  String nama;
  String alamat;
  String? email;
  int kelas;

  Profileview({
    super.key,
    required this.nama,
    required this.alamat,
    this.email,
    required this.kelas,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text(nama), Text(alamat), Text(email!), Text("${kelas}")],
      ),
    );
  }
}
