import 'package:first_app/screens/animepagedesign.dart';
import 'package:first_app/screens/fkdesign.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Pulkit",
    //theme: ThemeData.dark(),
    // theme: ThemeData.light(),
    theme: ThemeData(
        primaryColor: Colors.deepOrangeAccent,
        appBarTheme: AppBarTheme(
            color: Colors.grey.shade700, elevation: 5, shadowColor: Colors.black)),
    home: FlipkartDesign()
  ));
}
