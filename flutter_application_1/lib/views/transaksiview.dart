import 'package:flutter/material.dart';

class Transaksiview extends StatelessWidget {
  const Transaksiview({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as List;
    return Column(children: [
      Text("Id: ${args[0]['id']}"),
      Text("Nama produk: ${args[0]['product']}"),
      Text("Harga: ${args[0]['price']}"),
      IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back)),
    ]);
  }
}
