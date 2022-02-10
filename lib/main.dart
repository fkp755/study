import 'package:flutter/material.dart';
import 'Pages/home_page.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "School",
    home: HomePage(),
    theme: ThemeData(
        primarySwatch: Colors.green),
  ));
}


