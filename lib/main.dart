import 'package:flutter/material.dart';
import 'package:infantproduct/CartPage.dart';
import 'package:infantproduct/HomePage.dart';
import 'package:infantproduct/Itemwidget.dart';
import 'package:infantproduct/Login.dart';
import 'package:infantproduct/bottomnavbar.dart';
import 'package:infantproduct/cat2.dart';
import 'package:infantproduct/cat3.dart';
import 'package:infantproduct/cat4.dart';
import 'package:infantproduct/tab.dart';
import 'package:infantproduct/trending_widget.dart';

import 'ItemPage.dart';
import 'allcard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Infant product",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const bottomnavbar(),
      routes: {
        "HomePage": (context) => HomePage(),
        "tab": (context) => tab(),
        "allcard": (context) => allcard(),
        "cat2": (context) => cat2(),
        "cat3": (context) => cat3(),
        "cat4": (context) => cat4(),
        "Itemwidget": (context) => ItemWidget(),
        "cartpage": (context) => CartPage(),
        "itempage": (context) => ItemPage(),
        "Login": (context) => Login(),
      },
    );
  }
}
