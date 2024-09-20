import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infantproduct/CartPage.dart';
import 'package:infantproduct/HomePage.dart';
import 'package:infantproduct/Login.dart';

class bottomnavbar extends StatefulWidget {
  const bottomnavbar({super.key});

  @override
  State<bottomnavbar> createState() => _bottomnavbarState();
}

class _bottomnavbarState extends State<bottomnavbar> {
  final items = const [
    Icon(
      Icons.add_shopping_cart,
      size: 30,
    ),
    Icon(
      Icons.home,
      size: 30,
    ),
    Icon(
      Icons.person,
      size: 30,
    ),
  ];
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        onTap: (selctedIndex) {
          setState(() {
            index = selctedIndex;
          });
        },
        color: Colors.orange,
        backgroundColor: Colors.orange.shade200,
        height: 70,
        buttonBackgroundColor: Colors.orange,
        animationCurve: Curves.easeInBack,
        animationDuration: const Duration(milliseconds: 300),
        // animationCurve: ,
      ),
      body: Container(child: getSelectedWidget(index: index)),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = const CartPage();
        break;
      case 1:
        widget = const HomePage();
        break;
      default:
        widget = const Login();
        break;
    }
    return widget;
  }
}
