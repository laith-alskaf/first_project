// import 'dart:convert';
// import 'dart:html';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/CreatAccount.dart';
import 'Banner.dart';

class LogIn extends StatefulWidget {
  static const String Log = "LogIn";

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // تاخذ خصائصها من ال materialApp تورث خصائصها منها وخصوصا ال text
        backgroundColor: Colors.white54,
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.blue.shade500,
          title: Container(
            width: 300,
            height: 100,
            //transform:Matrix4.tryInvert(1,0),  لقلب الشكل وعمله مسطح &&&&&&&&&&&&&&&&&
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 9),
                borderRadius: BorderRadius.circular(90)),
            child: Center(
              child: Text(
                'Welcom',
                style: TextStyle(
                    fontSize: 63,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          centerTitle: true,
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.lightBlueAccent,
          iconSize: 25,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.arrow_back), label: 'hi'),
            BottomNavigationBarItem(icon: Icon(Icons.account_box), label: 'hi'),
          ],
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/old.jpg',
                width: double.infinity,
              ),

              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              //  GestureDetector(
              //    onTap:() {
              //      String email=emailController.text;
              //      String password=passwordController.text;
              //     if(email.isNotEmpty&&password.isNotEmpty)
              //       login(email,password,context);
              //    },
              // child:
              Container(
                color: Colors.lightBlue,
                width: 200,
                height: 42,
                child: Center(
                    child: Text(
                  'LogIn',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 30,
                  ),
                  textDirection: TextDirection.ltr,
                )),
              ),

              Padding(padding: EdgeInsets.symmetric(vertical: 12)),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0))),
                  hintText: 'email',
                  prefixIcon: Icon(Icons.person),
                  suffixIcon: Icon(Icons.email),
                ),
                cursorWidth: 5,
                cursorHeight: 28,
                cursorColor: Colors.black87,
              ),

              Padding(padding: EdgeInsets.symmetric(vertical: 10)),

              TextField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0))),
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.password_sharp),
                ),
                cursorWidth: 5,
                cursorHeight: 28,
                cursorColor: Colors.black87,
              ),

              Padding(padding: EdgeInsets.symmetric(vertical: 5)),

              GestureDetector(
                onTap: () {
                  String email = emailController.text;
                  String password = passwordController.text;
                  // if(email.isNotEmpty&&password.isNotEmpty){
                  //   login(email,password,context);}
                },
                child: Container(
                  width: 200,
                  height: 42,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 15,
                            spreadRadius: 1.9,
                            offset: Offset(0.7, 0.7))
                      ]),
                  child: ListTile(
                    title: Center(
                      child: Text(
                        'تسجيل دخول',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                    onTap: () {
                      SetGar(context);
                    },
                  ),
                ),
              ),
              Divider(height: 20, color: Colors.green, thickness: 1),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    splashColor: Colors.pink,
                    onPressed: () {
                      Navigator.pushNamed(context, CreatAccount.Screen);
                    },
                    child: SizedBox(
                      width: 80,
                      child: Text('انشاء حساب',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                          textDirection: TextDirection.ltr),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Future login(String Email,String password,context)async{
  //   var url ='http://192.168.43.75/login.php';
  //   var data={'email':Email,'password':password};
  //   var response=await http.post(Uri.parse(url),body:data);
  //   var responseBody=jsonDecode(response.body);
  //   if(responseBody['succese']>0){
  //     Navigator.pushReplacementNamed(context, 'CheckBox');
  //   }
  //   // else {
  //   //   Fluttertoast.showToast(
  //   //     msg:"لقد حصل خطأ",
  //   //     toastLength:Toast.LENGTH_LONG,
  //   //     gravity: ToastGravity.CENTER,
  //   //       backgroundColor: Colors.red,
  //   //     textColor: Colors.white,
  //   //     fontSize: 16.5,
  //   //   );
  //   // }
  //   }
  static SetGar(context) {
    Navigator.pushReplacementNamed(context, Baner.Ban);
  }
}
