import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});
  @override
  State<MyHome> createState() => _MyState();
}

class _MyState extends State<MyHome> {
  GlobalKey<FormState> formstate = GlobalKey();
  String? username;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WELCOME IN MY APP'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Form(
        key: formstate,
        autovalidateMode: AutovalidateMode.always,
        child: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Column(
                children: [
                  TextFormField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                        RegExp(r'[a-zA-Z\0-9\s\u0600\u06FF]'),
                      ),
                    ],
                    maxLength: 50,
                    decoration: InputDecoration(
                      label: Text("username"),
                      hintText: "enter your username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onSaved: (val) {
                      username = val;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "empty";
                      }
                      if (RegExp(r'[0-9]').hasMatch(value)) {
                        return "don't write numbers";
                      }
                      if (value.length < 10) {
                        return "name length must be longer";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    maxLength: 16,
                    obscureText: true,
                    decoration: InputDecoration(
                      label: Text("password"),
                      hintText: "enter password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onSaved: (val) {
                      password = val;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "empty";
                      }
                      if (value.length < 10) {
                        return "password length must be longer";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 240),
                  MaterialButton(
                    onPressed: () {
                      if (formstate.currentState!.validate()) {
                        formstate.currentState!.save();
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Icon(
                                Icons.check_circle,
                                color: Colors.green,
                              ),
                              content: Text(
                                "successful sign",
                                textAlign: TextAlign.center,
                              ),
                              contentTextStyle: TextStyle(color: Colors.green),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            );
                          },
                        );
                        // ignore: avoid_print
                        print(username);
                        // ignore: avoid_print
                        print(password);
                      }
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text("sign"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
