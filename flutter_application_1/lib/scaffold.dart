import 'dart:io';
import 'dialog.dart';
import 'package:flutter/material.dart';

// stateless widget
// class scaffold extends StatelessWidget {
//   const scaffold({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("coba widget title"),
//         leading: IconButton(onPressed: () {}, icon: Icon(Icons.home_filled)),
//         actions: [
//           Text("Actions"),
//           IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_rounded))
//         ],
//         backgroundColor: Color.fromARGB(255, 89, 227, 255),
//         foregroundColor: Color.fromARGB(255, 255, 59, 59),
//       ),
//       body: Center(
//         child: Text(
//           "You have pressed the button",
//           style: TextStyle(
//             fontSize: 20,
//             color: Colors.deepOrange,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.accessibility_new), label: "Accessibility"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.add_business), label: "Add bussiness")
//         ],
//       ),
//     );
//   }
// }

// statefull widget
class scaffold extends StatefulWidget {
  @override
  _ScaffoldState createState() => _ScaffoldState();
}

class _ScaffoldState extends State<scaffold> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("coba widget title"),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.home_filled)),
        actions: [
          Text("Actions"),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_rounded))
        ],
        backgroundColor: Color.fromARGB(255, 89, 227, 255),
        foregroundColor: Color.fromARGB(255, 255, 59, 59),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Ini halaman ${_selectedIndex + 1}',
              style: TextStyle(fontSize: 24),
            ),
            // Image(image: AssetImage('assets/img/long cat.jpg')),
            dialog()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_to_photos_rounded),
            label: 'Posting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility_new),
            label: 'Accessibility',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apple),
            label: 'Apple Support',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
