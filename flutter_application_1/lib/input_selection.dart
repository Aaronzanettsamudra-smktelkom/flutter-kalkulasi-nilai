import 'package:flutter/material.dart';

// class inputSelection extends StatefulWidget {
//   const inputSelection({super.key});

//   @override
//   State<inputSelection> createState() => _inputSelectionState();
// }

// class _inputSelectionState extends State<inputSelection> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

class inputSelection extends StatefulWidget {
  const inputSelection({super.key});

  @override
  State<inputSelection> createState() => _inputSelectionState();
}

class _inputSelectionState extends State<inputSelection> {
  TextEditingController fullname = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: fullname,
          obscureText: false,
          onChanged: (a) {
            setState(() {});
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text("Input your name"),
          ),
        ),
        Text(fullname.text),
      ],
    );
  }
}
