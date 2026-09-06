import 'package:app2/about.dart';
import 'package:app2/settings.dart';
import 'package:flutter/material.dart';
import 'package:app2/app.dart';
import 'package:app2/list.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(color: Color(0xFFA22D2D), height: 80),
          MyList(
            icn: Icons.home,
            title: "home",
            tap: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => App()),
                (route) => false,
              );
            },
          ),
          MyList(
            icn: Icons.settings,
            title: "settings",
            tap: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => MySettings()),
                (route) => false,
              );
            },
          ),
          MyList(
            icn: Icons.info,
            title: "about",
            tap: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => MyAbout()),
                (route) => false,
              );
            },
          ),
          Spacer(),
          Text(
            "version 1.0.0",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
