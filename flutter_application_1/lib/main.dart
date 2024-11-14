import 'package:flutter/material.dart';
import 'package:flutter_application_1/column_row.dart';
import 'package:flutter_application_1/dialog.dart';
import 'package:flutter_application_1/scaffold.dart';
import 'package:flutter_application_1/stack_position.dart';
import 'package:flutter_application_1/tugas_pak_bidin.dart';
import 'package:flutter_application_1/views/homeview.dart';
import 'package:flutter_application_1/views/loginview.dart';
import 'package:flutter_application_1/views/movie_view.dart';
import 'package:flutter_application_1/views/profileview.dart';
import 'package:flutter_application_1/views/transaksiview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/movie',
      routes: {
        '/login': (_) => Loginview(),
        '/movie': (_) => MovieView(),
        // '/home': (_) => Homeview(),
        '/profile': (_) => Profileview(
              nama: "budi",
              alamat: "Jl. hariono No.32",
              kelas: 12,
            ),
        '/transaksi': (_) => Transaksiview()
      },
    );

    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Belajar Flutter Cuy',
    //   // theme: ThemeData(
    //   //   colorScheme:
    //   //       ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 69, 141, 224)),
    //   //   useMaterial3: true,
    //   // ),
    //   // home: const MyHomePage(title: 'Belajar Flutter'),
    //   // home: Image(image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg')),
    //   // home: scaffold(),
    //   // home: dialog(),
    //   // home: ColumnRow(),
    //   // home: StackPosition(),
    //   home: TugasPakBidin(),
    // );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
