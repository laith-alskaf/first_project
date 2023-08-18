import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/Banner.dart';
import 'package:flutter_app/CreatAccount.dart';
import 'package:flutter_app/Op.dart';

class chek extends StatefulWidget {
  const chek({Key? key}) : super(key: key);

  @override
  CheckBox createState() => CheckBox();
}

class CheckBox extends State<chek> {
  static const String Check = "CheckBox";
  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          // bottomNavigationBar: Container(child: Image.asset('images/ss.jpeg',height: 500,width: 500,),),
          backgroundColor: Colors.teal,
          appBar: AppBar(
            toolbarHeight: 60,
            bottom: TabBar(
              indicatorColor: Colors.redAccent,
              indicatorWeight: 5,
              indicatorPadding: EdgeInsets.only(bottom: 3),
              tabs: [
                Tab(
                  child: Text('Check Box One'),
                ),
                Tab(
                  child: Text('Check Box Two'),
                )
              ],
            ),
            leading: Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.lime,
                ),
                Container(
                  width: 350,
                  height: 90,
                  margin: EdgeInsets.only(left: 4),
                  color: Colors.lime,
                  child: Center(
                      child: Text(
                    'WELCOM APP',
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 3),
                    textDirection: TextDirection.ltr,
                  )),
                ),
                Container(
                    margin: EdgeInsets.only(left: 4),
                    child: Icon(
                      Icons.add_a_photo,
                      color: Colors.lime,
                    )),
              ],
            ),
          ),

          body: TabBarView(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 10,
                      left: 20,
                      right: 10,
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.pink,
                            style: BorderStyle.solid,
                            width: 2),
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: 10,
                                left: 20,
                              ),
                              child: Radio<int>(
                                value: 1,
                                groupValue: selectedValue,
                                activeColor: Colors.amber,
                                onChanged: (value) {
                                  setState(
                                    () {
                                      Navigator.pushReplacementNamed(
                                          context, Op.op);

                                      selectedValue = value!;
                                    },
                                  );
                                },
                              ),
                            ),
                            Text(
                              'famle',
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: 10,
                                left: 20,
                              ),
                              child: Radio<int>(
                                value: 2,
                                groupValue: selectedValue,
                                activeColor: Colors.purple,
                                onChanged: (value) {
                                  setState(
                                    () {
                                      Navigator.pushReplacementNamed(
                                          context, Baner.Ban);

                                      selectedValue = value!;
                                    },
                                  );
                                },
                              ),
                            ),
                            Text(
                              'male',
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.blue,
                child: Center(
                  child: Container(
                    color: Colors.black,
                    child: Text(
                      'Two Widget Now',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
