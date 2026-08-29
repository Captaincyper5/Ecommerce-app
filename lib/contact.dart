import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('conact'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Center(
            child: Text(
              "contact",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: MaterialButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil("home", (route) => false);
              },
              color: Colors.amber,
              textColor: Colors.white,
              child: Text("go to home"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: MaterialButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil("about", (route) => false);
              },
              color: Colors.amber,
              textColor: Colors.white,
              child: Text("back"),
            ),
          ),
        ],
      ),
    );
  }
}
