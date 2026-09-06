import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  const MyList({
    super.key,
    required this.icn,
    required this.title,
    required this.tap,
  });
  final IconData icn;
  final String title;
  final dynamic tap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: Border.all(color: Colors.black),
      leading: Icon(icn, size: 40),
      tileColor: Colors.grey,
      title: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      onTap: tap,
    );
  }
}
