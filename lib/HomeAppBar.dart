import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Icon(
                Icons.menu,
                size: 30,
                color: Colors.orange.shade100,
              )),
          Padding(
            padding: EdgeInsets.only(left: 100),
            child: Text("Travel Budgeter",
                style: GoogleFonts.poppins(
                    color: Colors.orange.shade100,
                    textStyle: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.w500))),
          ),

//badges flutter
          Spacer(),
          badges.Badge(
            position: badges.BadgePosition.topEnd(top: -10, end: -12),
            showBadge: true,
            ignorePointer: false,
            onTap: () {
              Navigator.pushNamed(context, "cartpage");
              Navigator.pushNamed(context, "cartitem");
            },
            badgeContent: Text(
              "5",
              style: TextStyle(color: Colors.white),
            ),
            badgeStyle: badges.BadgeStyle(
              shape: badges.BadgeShape.circle,
              badgeColor: Colors.red,
              padding: EdgeInsets.all(5),
              borderRadius: BorderRadius.circular(4),
            ), // badgesz.BadgeStyle
            child: Icon(
              Icons.notifications,
              size: 30,
              color: Colors.orange.shade100,
            ),
          ),
        ],
      ),
    );
  }
}
