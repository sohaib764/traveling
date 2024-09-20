import 'package:flutter/material.dart';


class tab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Container(
          child: Card(
            elevation: 4,
            margin: EdgeInsets.all(20),
            child: InkWell(
              // InkWell provides the hover effect
              onTap: () {
               Navigator.pushNamed(context, "allcard") ;// Add your action when the card is tapped
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Image.asset(
                    'Images/15.png', // Replace with your item image path
                    fit: BoxFit.cover,
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Babies Care',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal,
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),

          ),
        ),
        Container(
          child: Card(
            elevation: 4,
            margin: EdgeInsets.all(20),
            child: InkWell(
              // InkWell provides the hover effect
              onTap: () {
                Navigator.pushNamed(context, "cat2") ;//
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Image.asset(
                    'Images/20.png', // Replace with your item image path
                    fit: BoxFit.cover,
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Babies Diapers',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal,
                          ),
                        ),


                      ],
                    ),
                  ),
                ],
              ),
            ),

          ),
        ),

        Container(
          child: Card(
            elevation: 4,
            margin: EdgeInsets.all(20),
            child: InkWell(
              // InkWell provides the hover effect
              onTap: () {
                Navigator.pushNamed(context, "cat3") ;//
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Image.asset(
                    'Images/24.png', // Replace with your item image path
                    fit: BoxFit.cover,
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'babies powder',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal,
                          ),
                        ),



                      ],
                    ),
                  ),
                ],
              ),
            ),

          ),
        ),
        Container(
          child: Card(
            elevation: 4,
            margin: EdgeInsets.all(20),
            child: InkWell(
              // InkWell provides the hover effect
              onTap: () {
                Navigator.pushNamed(context, "cat4") ;//
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Image.asset(
                    'Images/25.png', // Replace with your item image path
                    fit: BoxFit.cover,
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Babies Milk powder',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal,
                          ),
                        ),



                      ],
                    ),
                  ),
                ],
              ),
            ),

          ),
        ),
      ],
    );
  }
}
