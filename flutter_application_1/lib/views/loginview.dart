import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/profileview.dart';

class Loginview extends StatelessWidget {
  const Loginview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text('Halaman login'),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          child: Text('home'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
          child: Text('login'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => Profileview(
                          nama: "john wick",
                          alamat: "Jl. pacuan kuda No.43",
                          kelas: 12,
                        )));
          },
          child: Text('profil'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/transaksi', arguments: [
              {'id': 1, 'product': "laptop", 'price': "8.500.000"},
              {'id': 2, 'product': "hp", 'price': "1.700.000"},
              {'id': 3, 'product': "tablet", 'price': "2.000.000"},
              {'id': 4, 'product': "pc", 'price': "13.999.999"},
            ]);
          },
          child: Text('transaksi'),
        ),
      ]),
    );
  }
}
