import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color(0xFFE0F2F1)),
              accountName: Text(
                "Infant Store",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
              ),
              accountEmail: Text(
                "Infantstore@gmail.com",
                style: TextStyle(fontSize: 16, color: Colors.teal),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("Images/store1.png"),
              ),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.teal,
            ),
            title: Text(
              "Home",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              CupertinoIcons.person,
              color: Colors.teal,
            ),
            title: Text(
              "Account",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.teal,
            ),
            title: Text(
              "My Order",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              CupertinoIcons.settings_solid,
              color: Colors.teal,
            ),
            title: Text(
              "Settings",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, "Login");
            },
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.teal,
            ),
            title: Text(
              "Logout",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
