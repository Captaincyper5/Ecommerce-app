import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home page'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Center(
            child: Text(
              "homepage",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: MaterialButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil("about", (route) => false);
              },
              color: Colors.amber,
              textColor: Colors.white,
              child: Text("go to about page"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: MaterialButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("contact");
              },
              color: Colors.amber,
              textColor: Colors.white,
              child: Text("go to contact page"),
            ),
          ),
        ],
      ),
    );
  }
}
