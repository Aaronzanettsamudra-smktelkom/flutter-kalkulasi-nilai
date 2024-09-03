import 'package:flutter/material.dart';

class date_Widget extends StatefulWidget {
  final String? title;
  const date_Widget({super.key, required this.title});

  @override
  State<date_Widget> createState() => _dateWidgetState();
}

class _dateWidgetState extends State<date_Widget> {
  DateTime selectedDate = DateTime.now();
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("${selectedDate.toLocal()}".split(' ')[0]),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
              onPressed: () => {
                    _selectDate(context),
                    print(selectedDate.day +
                        selectedDate.month +
                        selectedDate.year)
                  },
              child: Text('Pilih Tanggal'))
        ],
      ),
    );
  }
}
