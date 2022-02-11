import 'package:flutter/material.dart';
import 'Pages/home_page.dart';
import 'Pages/login_page.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "School",
    home: LoginPage(),
    theme: ThemeData(
        primarySwatch: Colors.green),
    routes: {
      "/login": (context)=> LoginPage(),
      "/home": (context)=> HomePage(),
    },
  ));
}


