import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemWidget2 extends StatefulWidget {
  const ItemWidget2({super.key});

  @override
  State<ItemWidget2> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget2> {
  @override
  Widget build(BuildContext context) {
    List datesData = [
      '',
      "Pampers Diaper",
      'PURE BEST',
      'CUTIES DIAPER',
      'HUGGIES',
      'CHEEPERS ',
      'PAMPERS ',
      'CUTIES COMPLETE CARE'
      ,
      'HUGGIES'
    ];

    List price = [
      '',
      "\$24",
      '\$200',
      '\$22',
      '\$90',
      '\$20 ',
      '\$902 ',
      '\$99',
      '\$99'
    ];

    List desc = [
      'NEW VERSION DIAPERS',
      'NEW VERSION DIAPERS',
      'NEW DIAPERS',
      'NEW  DIAPERS',
      'NEW  DIAPERS',
      'NEW VERSION DIAPERS',
      'NEW VERSION DIAPERS',
      'NEW VERSION DIAPERS',
      'NEW VERSION DIAPERS'
    ];
    return GridView.count(
      childAspectRatio: 0.52,
      crossAxisCount: 2,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,

      physics: ScrollPhysics(),
      children: [
        for (int i = 1; i < 9; i++)
          Container(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
            ),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.teal.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "-50%",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Icon(Icons.favorite_border, color: Colors.red)
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "itempage");
                  },
                  child: Container(
                    child: Image.asset(
                      "baby diaper/$i.png",
                      height: 150,
                      width: 150,
                    ),
                  ),
                ),
                Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        datesData[i],
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.teal,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(

                        alignment: Alignment.center,
                        child: Text(
                          desc[i],
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 10),
                      child: RatingBar.builder(
                        glowColor: Colors.blueGrey,
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemSize: 20,
                        itemPadding: EdgeInsets.symmetric(horizontal: 2),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.orange[700],

                        ),
                        onRatingUpdate: (index) {},
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(

                                price[i],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.teal,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.shopping_cart_checkout,
                                color: Colors.teal,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
      ],
    );
  }
}
