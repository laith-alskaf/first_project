import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/Op.dart';
import 'LogIn.dart';
import 'CreatAccount.dart';
import 'CheckBox.dart';
import 'Op.dart';
import 'Banner.dart';

class ContainerImage extends StatefulWidget {
  const ContainerImage({Key? key}) : super(key: key);
  static const String ConIm = "ContainerImage";

  @override
  State<ContainerImage> createState() => _ContainerImageState();
}

class _ContainerImageState extends State<ContainerImage> {
  String value = "s";
  TextEditingController username = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formstate = new GlobalKey<FormState>();

    send() {
      var formdata = formstate.currentState;
      if (formdata!.validate()) {
        Navigator.pushNamed(context, CheckBox.Check);
      } else {
        "NOt VALUE";
      }
    }

    return Material(
      color: Colors.blue,
      child: Container(
        width: 300,
        height: 300,
        decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://image.winudf.com/v2/image1/Y29tLmJsYWNraGR3YWxscGFwZXIuUGFwYXRoX3NjcmVlbl85XzE1OTMyNzUxOTRfMDU2/screen-6.jpg?fakeurl=1&type=.webp'))),
        child: Expanded(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 150),
                // width: 200,
                // height: 200,
                child: Image(image: AssetImage("images/ac.webp")),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 40, right: 40),
                width: double.maxFinite,
                height: 290,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white54,
                        style: BorderStyle.solid,
                        width: 2),
                    borderRadius: BorderRadius.circular(50)),
                child: Form(
                  autovalidateMode: AutovalidateMode.always,
                  key: formstate,
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child:const Text(
                        'LogIn',
                        style: TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            letterSpacing: 2,
                            shadows: [
                              BoxShadow(
                                  color: Colors.greenAccent,
                                  blurRadius: 15,
                                  spreadRadius: 1.9,
                                  offset: Offset(0.7, 0.7))
                            ]),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15, left: 10, right: 10),
                      child: TextFormField(
                        controller: username,
                        // onChanged: (text)
                        // {
                        //   setState(() {
                        //     value=text;
                        //   });
                        // },

                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.left,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                              Radius.circular(32.0),
                            )),
                            hintText: 'email',
                            hintStyle: TextStyle(color: Colors.greenAccent),
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.greenAccent,
                            ),
                            suffixIcon: Icon(
                              Icons.email,
                              color: Colors.greenAccent,
                            ),
                            filled: true),
                        validator: (text) {
                          if (text!.length < 20) {
                            return "لايمكن ان يكون الايمل اقل من 20 حرف";
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15, left: 10, right: 10),
                      child: TextFormField(

                        obscureText: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0))),
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.greenAccent),
                          prefixIcon: Icon(
                            Icons.password_sharp,
                            color: Colors.greenAccent,
                          ),
                          filled: true,
                          suffixIcon: Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.greenAccent,
                          ),
                        ),
                        cursorWidth: 5,
                        cursorHeight: 28,
                        cursorColor: Colors.black87,
                        validator: (text) {
                          if (text!.length < 10) {
                            return "لا يمكن ان يكون كلمة السر اقل من 10";
                          }

                          return null;
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 190, top: 10),
                      child:const  Text(
                        'Forget password?',
                        style: TextStyle(color: Colors.white54),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30, left: 20, right: 20),
                      width: 200,
                      height: 42,
                      decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow:const [
                            BoxShadow(
                                color: Colors.greenAccent,
                                blurRadius: 15,
                                spreadRadius: 1.9,
                                offset: Offset(0.7, 0.7))
                          ]),
                      child: FloatingActionButton(
                        onPressed: send,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70)),
                        child: Text(
                          'LogIn',
                          style: TextStyle(
                            color: Colors.greenAccent.shade700,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(top: 100)),
                  const Expanded(
                    child: Divider(
                      color: Colors.white54,
                      thickness: 2,
                      endIndent: 5,
                    ),
                  ),
                  Container(
                    width: 22,
                    // margin: EdgeInsets.only(top: 50,bottom: 10),
                    child: Expanded(
                      child: Text(
                        'OR',
                        style:
                            TextStyle(color: Colors.greenAccent, fontSize: 15),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.white54,
                      thickness: 2,
                      indent: 5,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 1, left: 20, right: 20),
                // margin: EdgeInsets.only(top: 50,bottom: 10),
                child: Text(
                  'Creat New Account',
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    decoration: TextDecoration.underline,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 161, top: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.facebook,
                      size: 45,
                      color: Colors.blue.shade800,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.messenger,
                      size: 38,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              FloatingActionButton(
                onPressed: () {
                  print('heloo laith');
                },
                child: Text('skdhkas'),
                elevation: 20,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 100,
                  shadowColor: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  animationDuration: const Duration(
                      days: 0,
                      hours: 0,
                      minutes: 0,
                      seconds: 3,
                      microseconds: 0,
                      milliseconds: 0),
                  onPrimary: Colors.red.shade700,
                ),
                icon: const Icon(
                  Icons.person,
                  color: Colors.amberAccent,
                ),
                label: const Text(
                  'Click me',
                  style: TextStyle(color: Colors.amberAccent),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
