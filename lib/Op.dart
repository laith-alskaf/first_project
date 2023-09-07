import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'Image continer.dart';
import 'Banner.dart';

class Op extends StatelessWidget {
  static const String op = 'OP';

  const Op({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white54,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset('images/ss.jpeg', width: 44),
                ),
                accountName: Text('Laith AL-skaf'),
                accountEmail: Text('liethmhmad231@gmail.com')
            ),
            ListTile(
              title: Text(
                'Home',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontStyle: FontStyle.italic),
              ),
              leading: Icon(
                Icons.home,
                size: 50,
              ),
              onTap: () {
                SetGar(context);
              },
            ),
            Padding(padding: EdgeInsets.all(20)),
            ListTile(
              title: Text(
                'Help',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontStyle: FontStyle.italic),
              ),
              leading: Icon(
                Icons.help,
                size: 50,
              ),
              onTap: () {},
            ),
            Padding(padding: EdgeInsets.all(20)),
            ListTile(
                title: Text(
                  'Time',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontStyle: FontStyle.italic),
                ),
                leading: Icon(
                  Icons.alarm,
                  size: 50,
                ),
                onTap: () {}),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(
          'GridView',
          style: TextStyle(
              color: Colors.white, fontSize: 40, fontStyle: FontStyle.italic),
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 180,
          childAspectRatio: 1 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          Card(
            color: Colors.blue.shade700,
          ),
          Card(
            color: Colors.blue.shade200,
            child: Center(
                child: Text(
              'Slman',
              style: TextStyle(fontSize: 50, color: Colors.blue.shade300),
            )),
          ),
          Card(
            color: Colors.red,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, ContainerImage.ConIm);
              },
              child: SizedBox(
                width: 80,
                child: Text('ContainerImage',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    textDirection: TextDirection.ltr),
              ),
            ),
          ),
          Card(
            color: Colors.purple.shade200,
          ),
          Card(
            color: Colors.teal.shade200,
            child: Image.asset(
              'images/ss.jpeg',
            ),
            elevation: 90,
            shadowColor: Colors.blue.shade800,
          ),
          Card(
            color: Colors.green.shade200,
          ),
          Card(
            color: Colors.indigo.shade200,
          ),
          Card(
            color: Colors.pink.shade200,
          ),
          Card(
            color: Colors.green.shade400,
          ),
          Card(
            color: Colors.green.shade400,
          ),
        ],
      ),
    );
  }

  static SetGar(context) {
    Navigator.pushNamed(context, Baner.Ban);
  }
}
