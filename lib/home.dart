import 'package:app2/app.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});
  @override
  State<MyHome> createState() => _MyState();
}

class _MyState extends State<MyHome> {
  GlobalKey<FormState> formState = GlobalKey();
  GlobalKey<FormState> formState2 = GlobalKey();
  bool isArabic = false;
  String? id;
  String? password;
  String lbl = "ID/Account number";
  String lbl2 = "Password";
  String hint = "enter your id/account number";
  String hint2 = "enter your password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(0),
        height: 700,
        width: 400,
        child: Stack(
          children: [
            Positioned(
              top: 10,
              right: 0,
              child: Container(color: Colors.red, height: 300, width: 360),
            ),
            Positioned(
              top: 310,
              left: 0,
              child: Container(color: Colors.white, height: 300, width: 360),
            ),
            Positioned(
              top: 20,
              left: 300,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    if (isArabic == false) {
                      lbl = "ادخل رقم الحساب";
                      lbl2 = "ادخل كلمة السر";
                      hint = "رقم الحساب";
                      hint2 = "كلمة السر";
                      isArabic = true;
                    } else {
                      lbl = "enter your id/account number";
                      lbl2 = "enter your password";
                      hint = "id/account number";
                      hint2 = "password";
                      isArabic = false;
                    }
                  });
                },
                icon: Icon(Icons.language, size: 30, color: Colors.deepPurple),
              ),
            ),
            Positioned(
              top: 210,
              child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                width: 330,
                height: 90,
                color: Colors.transparent,
                child: Form(
                  key: formState,
                  autovalidateMode: AutovalidateMode.always,
                  child: TextFormField(
                    maxLength: 8,
                    onSaved: (val) {
                      id = val;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "empty";
                      }
                      if (value.length < 8) {
                        return "id must be longer";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      label: Text(lbl),
                      hintText: hint,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 310,
              child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                width: 330,
                height: 90,
                color: Colors.transparent,
                child: Form(
                  key: formState2,
                  autovalidateMode: AutovalidateMode.always,
                  child: TextFormField(
                    onSaved: (val) {
                      password = val;
                    },
                    maxLength: 8,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "empty";
                      }
                      if (value.length < 8) {
                        return "password must be longer";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      label: Text(lbl2),
                      hintText: hint2,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 130,
              top: 500,
              child: MaterialButton(
                onPressed: () {
                  formState.currentState!.save();
                  formState2.currentState!.save();
                  if (formState.currentState!.validate() &&
                      formState2.currentState!.validate() &&
                      id == "12345678" &&
                      password == "12345678") {
                    // ignore: avoid_print
                    print(id);
                    // ignore: avoid_print
                    print(password);
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => App()),
                      (route) => false,
                    );
                  }
                  
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(
                          "Successful Login",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.green),
                        ),
                        content: Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 35,
                        ),
                      );
                    },
                  );
                },
                color: Colors.red,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
