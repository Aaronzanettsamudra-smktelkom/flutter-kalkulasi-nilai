import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// builder
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Penilaian Siswa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PenilaianSiswaPage(),
    );
  }
}

class PenilaianSiswaPage extends StatefulWidget {
  @override
  PenilaianSiswaPageState createState() => PenilaianSiswaPageState();
}

class PenilaianSiswaPageState extends State<PenilaianSiswaPage> {
  // deklarasi
  final TextEditingController _controller = TextEditingController();
  final List<int> _nilaiList = [];
  String _kategori = '';
  String _errorMessage = '';
  double _rataRata = 0.0;

  // kalkulasi rata rata & kategori
  void _hitungKategori() {
    setState(() {
      int? nilai = int.tryParse(_controller.text);

      if (nilai == null || nilai < 0 || nilai > 100) {
        _errorMessage = 'Nilai tidak valid, masukkan angka antara 0-100.';
        return;
      }

      _errorMessage = '';
      _nilaiList.add(nilai);
      _controller.clear();

      if (_nilaiList.isNotEmpty) {
        _rataRata = _nilaiList.reduce((a, b) => a + b) / _nilaiList.length;

        if (_rataRata >= 85) {
          _kategori = 'A';
        } else if (_rataRata >= 70) {
          _kategori = 'B';
        } else if (_rataRata >= 55) {
          _kategori = 'C';
        } else {
          _kategori = 'D';
        }
      }
    });
  }

  // fungsi reset
  void _reset() {
    setState(() {
      _nilaiList.clear();
      _kategori = '';
      _rataRata = 0.0;
      _errorMessage = '';
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Penilaian Siswa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Masukkan nilai siswa',
                errorText: _errorMessage.isNotEmpty ? _errorMessage : null,
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _hitungKategori,
              child: Text('Tambahkan Nilai'),
            ),
            SizedBox(height: 20),
            Text(
              _nilaiList.isNotEmpty
                  ? 'Nilai yang dimasukkan: ${_nilaiList.join(', ')}'
                  : 'Nilai yang dimasukkan:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              _nilaiList.isNotEmpty
                  ? 'Rata-rata Nilai: ${_rataRata.toStringAsFixed(2)}'
                  : 'Rata-rata Nilai: 0',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              _kategori.isNotEmpty
                  ? 'Kategori Nilai Rata-rata: $_kategori'
                  : 'Kategori Nilai Rata-rata: ',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _reset,
              child: Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
