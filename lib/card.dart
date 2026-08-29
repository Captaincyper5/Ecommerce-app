import 'package:flutter/material.dart';

class Custom extends StatelessWidget {
  final String name;
  final String age;
  final String email;
  final String image;
  const Custom({
    super.key,
    required this.name,
    required this.age,
    required this.email,
    required this.image,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            padding: EdgeInsets.all(5),
            child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset("images/$image", fit: BoxFit.cover)),
          ),
          Expanded(
            child: ListTile(
              textColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              title: Text(name),
              subtitle: Text(age),
              trailing: Text(email),
            ),
          ),
        ],
      ),
    );
  }
}
