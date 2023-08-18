import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'CheckBox.dart';

class CreatAccount extends StatelessWidget {
  static const String Screen = "CreatAccount";

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Creat Account',
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.symmetric(vertical: 33)),
          Image.asset(
            'images/ss.jpeg',
            width: double.infinity,
            height: 303,
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 15)),
          Text(
            "frist name",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                fontStyle: FontStyle.italic,
                color: Colors.green.shade300),
          ),
          TextField(
            textDirection: TextDirection.ltr,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40.0))),
              hintText: 'Your first name',
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Text(
            'last name',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                fontStyle: FontStyle.italic,
                color: Colors.green.shade300),
          ),
          TextField(
            textDirection: TextDirection.ltr,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40.0))),
              hintText: 'Your last name',
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Text(
            'your number',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                fontStyle: FontStyle.italic,
                color: Colors.green.shade300),
          ),
          TextField(
            textDirection: TextDirection.ltr,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40.0))),
              hintText: 'Your phone number',
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          SizedBox(
            height: 50,
            width: 150,
            child: Container(
              color: Colors.green.shade400,
              height: 50,
              width: 100,
              child: Center(
                  child: FloatingActionButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, CheckBox.Check);
                },
                child: Text(
                  'انشاء حساب',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              )),
            ),
          ),
        ],
      ),
    ));
  }
}
