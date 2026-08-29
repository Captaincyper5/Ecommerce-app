import 'package:app2/about.dart';
import 'package:app2/contact.dart';
import 'package:app2/homepage.dart';

import 'package:app2/scroll.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyState();
}

class _MyState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyScrollBehavior(),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        "home": (context) => HomePage(),
        "about": (context) => About(),
        "contact": (context) => Contact(),
      },
    );
  }
}
