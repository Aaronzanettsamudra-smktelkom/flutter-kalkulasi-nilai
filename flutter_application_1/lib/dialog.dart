import 'package:flutter/material.dart';

class dialog extends StatelessWidget {
  const dialog({super.key});

  @override
  Widget build(BuildContext context) {
    return layout();
  }
}

class layout extends StatelessWidget {
  const layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        child: Text('Show alert'),
        onPressed: () {
          showAlertDialog(context);
        },
      ),
    );
    ;
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = ElevatedButton(
    child: Text("Yes"),
    onPressed: () {},
  );

  // set up the alertdialog
  AlertDialog alert = AlertDialog(
      title: Text("trying dialog"),
      content: Text("is this tested successfully?"),
      actions: [
        okButton,
      ]);

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
