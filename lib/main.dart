import 'package:flutter/material.dart';
import 'package:my_app_donskova/background.dart';

void main() {
  runApp(
    MaterialApp(
    debugShowCheckedModeBanner: false,
    home: (Scaffold(
      body: GradientContainer(const Color.fromARGB(192, 228, 9, 9), const Color.fromARGB(255, 195, 0, 221), const Color.fromARGB(218, 13, 33, 221)),
      )
    )
  )
);

}
