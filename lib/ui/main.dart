import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Op.dart';
import 'package:get/get.dart';
import 'view/login_view/LogIn.dart';
import '../CreatAccount.dart';
import '../CheckBox.dart';
import '../Banner.dart';
import '../Image continer.dart';

void main() {
  runApp(
    Myapp(),
  );
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.circularReveal,
      transitionDuration: const Duration(milliseconds: 12),
      debugShowCheckedModeBanner: false,
      title: 'welcom to app laith',
      builder: BotToastInit(),
      navigatorObservers: [BotToastNavigatorObserver()],
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
