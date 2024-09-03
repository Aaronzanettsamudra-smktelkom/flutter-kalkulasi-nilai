import 'package:flutter/material.dart';

class ColumnRow extends StatelessWidget {
  const ColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Text("Pet Shop"),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 26, 201, 32),
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.blue.withOpacity(0.4),
                            spreadRadius: 7,
                            blurRadius: 7,
                            offset: Offset(3, 3))
                      ]),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage("assets/img/long cat.jpg"),
                        width: 110,
                      ),
                      Text(
                        "long cat",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Image(
                      image: AssetImage("assets/img/long cat.jpg"),
                      width: 110,
                    ),
                    Text(
                      "long cat",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
                Column(
                  children: [
                    Image(
                      image: AssetImage("assets/img/long cat.jpg"),
                      width: 110,
                    ),
                    Text(
                      "long cat",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
