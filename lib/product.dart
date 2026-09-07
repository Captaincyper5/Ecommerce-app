import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  final dynamic data;
  const Product({super.key, required this.data});
  @override
  State<Product> createState() => _MyState();
}

class _MyState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(),
      appBar: AppBar(
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shop_outlined),
            Text(' Ecommeric', style: TextStyle(fontWeight: FontWeight(800))),
            Text(
              ' Yasino',
              style: TextStyle(
                color: Colors.yellowAccent,
                fontWeight: FontWeight(800),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.grey,
        foregroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "Scroll down to see more",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight(800),
              ),
            ),
          ),
          Image.asset(widget.data["image"]),
          Container(
            padding: EdgeInsets.all(5),
            child: Text(
              widget.data["title"],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight(800)),
            ),
          ),

          Container(
            padding: EdgeInsets.all(5),
            child: Text(
              widget.data["price"],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight(800),
                color: Colors.deepOrange,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "colors ",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight(800)),
              ),
              SizedBox(width: 10),
              Container(
                width: 13,
                height: 13,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              Text(" Grey"),
              SizedBox(width: 10),
              Container(
                width: 13,
                height: 13,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              Text(" Black"),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 4),
            child: Text(
              "Size: 34  35  40  42",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight(800)),
            ),
          ),
          Container(
            width: 100,
            height: 50,
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 90),
            child: MaterialButton(
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: Colors.black,
              textColor: Colors.white,
              onPressed: () {},
              child: Text("Add To Cart", style: TextStyle(fontSize: 16)),
            ),
          ),
        ],
      ),
    );
  }
}
