import 'package:flutter/material.dart';

class image_widget extends StatefulWidget {
  const image_widget({super.key});

  @override
  State<image_widget> createState() => _image_widgetState();
}

class _image_widgetState extends State<image_widget> {
  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage('assets/img/long cat.jpg'));
  }
}
