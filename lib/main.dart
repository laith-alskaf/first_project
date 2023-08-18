import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Op.dart';
import 'LogIn.dart';
import 'CreatAccount.dart';
import 'CheckBox.dart';
import 'Op.dart';
import 'Banner.dart';

import 'Image continer.dart';

void main() {
  runApp(
    Myapp(),
  );
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'welcom to app laith',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: LogIn(),
      initialRoute: LogIn.Log,
      routes: {
        LogIn.Log: (context) => LogIn(),
        CreatAccount.Screen: (context) => CreatAccount(),
        CheckBox.Check: (context) => chek(),
        Op.op: (context) => Op(),
        Baner.Ban: (context) => Baner(),
        ContainerImage.ConIm: (context) => ContainerImage(),
      },
    );
  }
}
