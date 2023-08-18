import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/CreatAccount.dart';
import 'package:flutter_app/Op.dart';

class Baner extends StatelessWidget {
  const Baner({Key? key}) : super(key: key);
  static const String Ban='Baner';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text('Banner',style: TextStyle(color: Colors.white,fontSize: 40,fontStyle: FontStyle.italic),),

      ),

      body: Column(

        children: <Widget>[
          SizedBox(height: 20,),
      Center(
        child: Container(
          color: Colors.amber,
          height:250 ,
          width: 400,

          child: Center(
            child: Banner(
                message:'20% خصم',
                location:BannerLocation.topEnd,
                child: Column (
                  children: <Widget> [

                    Center(child: Text('APO GAFAR',style: TextStyle(fontSize: 45,color: Colors.cyanAccent.shade700,fontWeight: FontWeight.bold),)),

                    SizedBox(
                      height: 5,
                    ),

                    Text('Laith is Perfect',style: TextStyle(fontSize: 20,color: Colors.pinkAccent.shade700,fontWeight: FontWeight.bold),),

                    SizedBox(
                      height: 5,
                    ),

                    Text('Are you ok',style: TextStyle(fontSize: 20,color: Colors.pinkAccent.shade700,fontWeight: FontWeight.bold),),

                    SizedBox(
                      height: 5,
                    ),

                  ],


                ),

              ),
          ),
        ),
      ),
          SizedBox(
            height: 20,
          ),

          Container(
            height: 400,
            width: double.infinity,
            child: ListView(

              scrollDirection: Axis.horizontal,
              children: [
                Image.asset('images/ss.jpeg',),
                SizedBox(
                  height: 5,
                ),
                Image.asset('images/old.jpg',),
                SizedBox(
                  height: 5,
                ),
                Image.asset('images/ss.jpeg',),
                SizedBox(
                  height: 5,
                ),
                Image.asset('images/old.jpg',),
                SizedBox(
                  height: 5,
                ),
                Image.asset('images/ss.jpeg',),
              ],

            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
              validator: (text){

              },
            style: TextStyle(),
            cursorColor: Colors.deepPurple,
            cursorWidth: 4,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.green,width: 3.1)


              ),

              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2.4,style: BorderStyle.solid,color: Colors.yellowAccent),
                  borderRadius: BorderRadius.circular(20)
              ),


              focusColor: Colors.red,
               label:Text('Are you ok',style: TextStyle(fontSize: 20,color: Colors.pinkAccent.shade700,fontWeight: FontWeight.bold),) ,
              hintText: 'Laith',
              prefix: Icon(Icons.face,color: Colors.deepPurple,),
              suffix: Icon(Icons.account_box,color: Colors.deepPurple,),
              counter: Text('Are you ok',style: TextStyle(fontSize: 20,color: Colors.pinkAccent.shade700,fontWeight: FontWeight.bold),) ,
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2.4,style: BorderStyle.solid,color: Colors.red),
                  borderRadius: BorderRadius.circular(20)
              ),

            ),

          )

      ],
      ),


    );
  }
}
