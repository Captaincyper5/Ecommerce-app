import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Center(
            child: Text(
              "about",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: MaterialButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil("contact", (route) => false);
              },
              color: Colors.amber,
              textColor: Colors.white,
              child: Text("go to contact page"),
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
              child: Text("back"),
            ),
          ),
        ],
      ),
    );
  }
}
