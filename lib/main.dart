import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //int _n = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
//        appBar: AppBar(
//          backgroundColor: Colors.red[500],
//          centerTitle: true,
//          title: Text(
//            "My Poor App",
//            style: TextStyle(
//                fontSize: 24,
//                fontWeight: FontWeight.bold,
//                letterSpacing: -2,
//                fontStyle: FontStyle.italic,
//                color: Colors.black),
//          ),
//          leading: Text(
//            "Leading",
//            style: TextStyle(color: Colors.red[100]),
//          ),
//          actions: <Widget>[
//            Text("Action"),
//          ],
//        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/lio.jpg'),
              ),
              Text(
                'Salehin',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    //fontStyle: FontStyle.italic,
                    fontSize: 35,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    //fontSize: 14,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal[100]),
              ),
              SizedBox(
                height: 30, //default value 16
                width: 150,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),

              //Container Widget [Sharp Corners of Boxes]
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                padding: EdgeInsets.all(15),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    SizedBox(width: 30),
                    Text(
                      '+880 1677-451525',
                      style: TextStyle(
                          letterSpacing: 2, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

              //Using Card() Widget instead of Container() to get Round Corners shape.
              // Card widget has not "Padding:" property.
              //But there is a "Padding()" widget Class
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                //padding: EdgeInsets.all(15),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.mail, color: Colors.teal),
                      SizedBox(width: 30),
                      Text(
                        'malam151319@gmail.com',
                        style: TextStyle(
                            letterSpacing: 1.5, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),

              //Card() + ListTile() >> Leading: and Title: [Auto Padding]
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                //padding: EdgeInsets.all(14),
                child: ListTile(
                  leading: Icon(
                    Icons.location_on,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'Narayanganj, Dhaka, BD',
                    style: TextStyle(
                        letterSpacing: 1.5, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
//        bottomNavigationBar: Text(
//          'Bottom Navigation: $_n times You\'ve clicked',
//          style: TextStyle(fontSize: 19, color: Colors.teal[100]),
//        ),
//        floatingActionButton: FloatingActionButton(
//          onPressed: () {
//            setState(() {
//              _n++;
//            });
//          },
//          backgroundColor:
//              Colors.teal[600], //press Ctrl+q to get Colors variation
//          child: Row(
//            children: <Widget>[
//              Text("Add"),
//              Icon(Icons.add),
//            ],
//          ),
//        ),
      ),
    );
  }
}
