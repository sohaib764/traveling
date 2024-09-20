import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infantproduct/CategoriesWidget.dart';
import 'package:infantproduct/HomeAppBar.dart';
import 'package:infantproduct/tab.dart';
import 'package:infantproduct/trending_widget.dart';
import 'DrawerWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    String dropdownvalue = 'Item 1';

    // List of items in our dropdown menu
    var itemsss = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
    return Scaffold(
      body: ListView(
        children: <Widget>[
          HomeAppBar(),
          Container(
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                )),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  /*
                  DropdownButton(

                    // Initial Value
                    value: dropdownvalue,

                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),

                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),*/

                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Text("Explore The Beautifull World",
                        style: GoogleFonts.charmonman(
                            color: Colors.orange,
                            textStyle: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500))),
                  ),
                  trending_widget(),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Text("Categories",
                        style: GoogleFonts.anton(
                            color: Colors.orange,
                            textStyle: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500))),
                  ),
                  CategoriesWidget(),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Text("Best Selling Categories",
                          style: GoogleFonts.charmonman(
                              color: Colors.orange,
                              textStyle: const TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w500))),
                    ),
                  ),
                  //ItemWidget(),
                  tab(),
                ],
              ),
            ),
          ),
        ],
      ),
      drawer: DrawerWidget(),
    );
  }
}
