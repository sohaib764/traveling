import 'package:flutter/material.dart';
import 'package:infantproduct/CartAppBar.dart';
import 'package:infantproduct/Itemwidget.dart';

class allcard extends StatelessWidget {
  const allcard({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: ListView(
        children: <Widget>[
          CartAppBar(),

          Container(
              alignment: Alignment.center,
              margin:
              EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text("BABIES CARE",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ))),
          ItemWidget(),

        ],
      ),
    );
  }
}
