
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class  Login extends StatelessWidget {
  const  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fetness & Health'),),
      body: Column(
           children: [

             //SizedBox(height:25),
    Image.asset('Images/mm.png',width: 500,height: 350,),
             SizedBox(height: 10),
             Text('Log in',style: TextStyle(fontSize: 25,backgroundColor: Colors.black12,letterSpacing:4 , color: Colors.black54 , shadows: [Shadow(color: Colors.black87, blurRadius: 8,offset: Offset(3, 3))]) )
             ,SizedBox(height:10)
             , TextField(
               keyboardType: TextInputType.name,
                 decoration: InputDecoration(
                   border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
                   focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green),borderRadius: BorderRadius.all(Radius.circular(32))),
                   
                     hintText: "Enter your name",
                   prefixIcon: Icon(Icons.drive_file_rename_outline),filled: true
                 )),
             TextField(
               keyboardType: TextInputType.number,
                 decoration: InputDecoration(
                     border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
                     focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green),borderRadius: BorderRadius.all(Radius.circular(32))),
                     hintText: "Enter your number",
                     prefixIcon: Icon(Icons.call)
                     ,filled: true)
             ),
        TextField(
          keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green),borderRadius: BorderRadius.all(Radius.circular(32))),
                hintText: "Enter your gmail"
                ,prefixIcon: Icon(Icons.email),filled: true)),
        TextField(
          keyboardType: TextInputType.visiblePassword,
    decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green),borderRadius: BorderRadius.all(Radius.circular(32))),
        hintText: "Enter your password",
        prefixIcon: Icon(Icons.visibility_off),filled: true))
             ,SizedBox(height: 20,),
             Container(
             height: 40, width: 20)
             ,FloatingActionButton(onPressed: (){}, child: Text('تسجيل الدخول',style: TextStyle(fontSize: 20,color: Colors.green))
    )


      ],
    )
    );
  }
}
