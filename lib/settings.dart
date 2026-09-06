import 'package:app2/drawer.dart';
import 'package:flutter/material.dart';

class MySettings extends StatelessWidget {
  const MySettings({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          backgroundColor: Color(0xFFA22D2D),
          foregroundColor: Colors.white,
          title: Text("settings"),
        ),
      ),
    );
  }
}
