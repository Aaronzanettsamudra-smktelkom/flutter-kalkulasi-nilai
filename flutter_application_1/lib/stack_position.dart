import 'package:flutter/material.dart';

class StackPosition extends StatelessWidget {
  const StackPosition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 219, 219, 219),
      body: Container(
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 59, 255, 65),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                ),
                height: 230,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Positioned(
                        top: 10,
                        left: 50,
                        child: Image(
                          image: AssetImage("assets/img/hamsters image.png"),
                          height: 180,
                          // width: MediaQuery.of(context).size.width * 20 / 100,
                        )),
                    Positioned(child: Text("Saldo Rp. Infinity")),
                    Positioned(child: Icon(Icons.all_inclusive))
                  ],
                )
                // Column(
                //   children: [
                //     Image(
                //       image: AssetImage("assets/img/hamsters image.png"),
                //       height: 200,
                //       // width: MediaQuery.of(context).size.width * 20 / 100,
                //     ),
                //     Container(
                //       width: MediaQuery.of(context).size.width,
                //       padding: EdgeInsets.only(left: 20, right: 20),
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Text("Saldo Rp. Infinity"),
                //           Icon(Icons.all_inclusive)
                //         ],
                //       ),
                //     ),
                //   ],
                // )
                )
          ],
        ),
      ),
    );
  }
}
