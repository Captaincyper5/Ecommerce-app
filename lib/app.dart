import 'package:flutter/material.dart';
import 'package:app2/drawer.dart';
class App extends StatefulWidget {
  const App({super.key});
  @override
  State<App> createState() => _MyState();
}

class _MyState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text('home'),
          backgroundColor: const Color(0xFFB41414),
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}
