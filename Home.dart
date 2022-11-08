
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_project/sneaker.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  bool isChecked = false;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }


  @override
  Widget build(BuildContext context) {




    return Scaffold(

        body:Container(
            child:
            ListView(
              children: [
                SizedBox(height : 20),
                Container(
                  margin : EdgeInsets.only(left : 50),
                  child:
                  Row(
                    children: [
                      Text("Feed", style : TextStyle(fontSize : 20, fontWeight: FontWeight.bold, )),
                      Container(width : 15),
                      Container(
                        decoration : BoxDecoration(
                            border : Border(bottom : BorderSide(
                              color : Colors.red,
                              width : 4.0,
                            ))
                        ),
                        child: Text("en stock", style : TextStyle(fontSize : 20, fontWeight: FontWeight.bold)),
                      ),
                      Container(width : 15),
                      Text("A venir", style : TextStyle(fontSize : 20, fontWeight: FontWeight.bold)),
                      Spacer(),
                      Image(image: AssetImage("lib/assets/nike.png"), width : 40),
                      Container(width : 20)
                    ],
                  ),
                ),
                SizedBox(height : 20),
                Center(child: Text("Filtrer la taille", style : TextStyle(fontSize : 20))),
                SizedBox(height : 20),
                Column(
                  children: [
                    Container(
                      margin : EdgeInsets.all(5),
                      child:
                      Row(
                        children: [
                          Expanded(child: GestureDetector(onTap: (){ print("clicked");},child: Container(height : 200, color : Colors.blue, child: Image(image : AssetImage('lib/assets/sneakers1.png'), fit: BoxFit.fill),))),
                          Container(width : 5),
                          Expanded(child: GestureDetector(onTap: (){ print("clicked");},child: Container(height : 200, color : Colors.blue, child: Image(image : AssetImage('lib/assets/sneakers2.png'), fit: BoxFit.fill),))),
                        ],
                      ),
                    ),
                    Container(
                      margin : EdgeInsets.all(5),
                      child:
                      Row(
                        children: [
                          Expanded(child: GestureDetector(onTap: (){ print("clicked");},child: Container(height : 200, color : Colors.blue, child: Image(image : AssetImage('lib/assets/sneakers3.png'), fit: BoxFit.fill),))),
                          Container(width : 5),
                          Expanded(child: GestureDetector(onTap: (){ print("clicked");},child: Container(height : 200, color : Colors.blue, child: Image(image : AssetImage('lib/assets/sneakers4.png'), fit: BoxFit.fill),))),
                        ],
                      ),
                    ),
                    Container(
                      margin : EdgeInsets.all(5),
                      child:
                      Row(
                        children: [
                          Expanded(child: GestureDetector(onTap: (){ print("clicked");},child: Container(height : 200, color : Colors.blue, child: Image(image : AssetImage('lib/assets/sneakers5.png'), fit: BoxFit.fill),))),
                          Container(width : 5),
                          Expanded(child: GestureDetector(onTap: (){ print("clicked");},child: Container(height : 200, color : Colors.blue, child: Image(image : AssetImage('lib/assets/sneakers1.png'), fit: BoxFit.fill),))),
                        ],
                      ),
                    ),
                    Container(
                      margin : EdgeInsets.all(5),
                      child:
                      Row(
                        children: [
                          Expanded(child: GestureDetector(onTap: (){ print("clicked");},child: Container(height : 200, color : Colors.blue, child: Image(image : AssetImage('lib/assets/sneakers1.png'), fit: BoxFit.fill),))),
                          Container(width : 5),
                          Expanded(child: GestureDetector(onTap: (){ Navigator.push(context, MaterialPageRoute(builder:(context) => const Sneaker(title: "sneaker")));},child: Container(height : 200, color : Colors.blue, child: Image(image : AssetImage('lib/assets/sneakers6.png'), fit: BoxFit.fill),))),
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
        )
    );
  }
}


