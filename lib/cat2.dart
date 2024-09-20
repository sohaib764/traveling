import 'package:flutter/material.dart';
import 'package:infantproduct/CartAppBar.dart';
import 'package:infantproduct/itemwidget2.dart';

class cat2 extends StatelessWidget {
  const cat2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          CartAppBar(),
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text("BABIES Diapers",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ))),
          ItemWidget2(),
        ],
      ),
    );
  }
}
