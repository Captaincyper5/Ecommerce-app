import 'package:app2/product.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _MyState();
}

class _MyState extends State<Homepage> {
  List categories = [
    {"income": Icons.laptop, "title": "Laptop"},
    {"income": Icons.phone_android, "title": "Phone"},
    {"income": Icons.electric_bike, "title": "Bike"},
    {"income": Icons.card_giftcard, "title": "Gift"},
    {"income": Icons.electric_car, "title": "Car"},
  ];
  List image = [
    {"image": "images/a.jpg", "price": "3.00\$", "title": "M-13"},
    {"image": "images/b.jpg", "price": "2.00\$", "title": "QS3"},
    {"image": "images/a.jpg", "price": "3.00\$", "title": "M-13"},
    {"image": "images/b.jpg", "price": "2.00\$", "title": "QS3"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange,
        iconSize: 25,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: "products",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "profile",
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      hintText: "search",
                      hintStyle: TextStyle(color: Colors.blue),
                      prefix: Icon(Icons.search, color: Colors.black),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.menu, size: 35, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "categories",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              height: 80,
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Icon(categories[i]["income"]),
                        ),
                        Text(
                          categories[i]["title"],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Text(
              "best selling",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            GridView.builder(
              itemCount: 4,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 200,
              ),
              itemBuilder: (context, i) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Product(data: image[i]),
                      ),
                    );
                  },
                  child: Card(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          width: 300,
                          height: 100,
                          padding: EdgeInsets.all(10),
                          child: Image.asset(image[i]["image"]),
                        ),
                        Text(
                          image[i]["price"],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight(800),
                            color: Colors.green,
                          ),
                        ),
                        Text(
                          image[i]["title"],
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight(800),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
