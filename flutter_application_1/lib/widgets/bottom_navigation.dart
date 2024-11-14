import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/profileview.dart';

class MenuBottom extends StatefulWidget {
  int activePage;
  MenuBottom(this.activePage);

  @override
  State<MenuBottom> createState() => _MenuBottomState();
}

class _MenuBottomState extends State<MenuBottom> {
  int _selectedItem = 0;
  void getlink(index) {
    setState(() {
      _selectedItem = index;
    });
    if (index == 0) {
      Navigator.pushReplacementNamed(context, '/');
    } else if (index == 1) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => Profileview(
                    nama: "budi",
                    alamat: "Jl. hariono No.32",
                    kelas: 12,
                  )));
    } else if (index == 2) {
      Navigator.pushReplacementNamed(
        context,
        '/transaksi',
        arguments: {
          "id": 1,
          "product": "buah",
          "price": 4000,
        },
      );
    } else if (index == 3) {
      Navigator.pushReplacementNamed(context, '/movie');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: widget.activePage,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: getlink,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Movie',
          ),
        ]);
  }
}
