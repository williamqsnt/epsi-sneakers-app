
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_project/Recap.dart';



class Reception extends StatefulWidget {
  const Reception({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;


  @override
  State<Reception> createState() => _ReceptionState();
}

class _ReceptionState extends State<Reception> {
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

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }


    return Scaffold(

        body:Column(
          children: [

            Checkbox(
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.resolveWith(getColor),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),

            GestureDetector(
              onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context)=> const Recap(title: "")));},
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child: Container()),
                        Expanded(child: Text("Boite de réception", style : TextStyle(fontSize : 15))),
                        Expanded(child: Container()),
                      ],
                    ),
                    SizedBox(height : 20),

                    Row(
                      children: [
                        Expanded(child : Container(height : 2, color : Colors.orange)),
                      ],
                    ),
                    SizedBox(height : 50),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(width : 40),
                        Text("Juillet", style : TextStyle(fontSize : 15, fontWeight: FontWeight.bold)),
                      ],
                    ),

                    Container(
                      height : 200, color : Color.fromRGBO(246, 246, 246, 100),
                      child:
                      Row(
                        children: [

                          Image(image : AssetImage('lib/assets/sneakers6.png')),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height : 80),
                              Text("Air force 1’ 07"),
                              Text("Merci pour votre commande"),
                              Text("À l'instant", style : TextStyle(color : Colors.grey)),
                            ],),
                        ],
                      ),

                    ),


                  ],
                ),
              ),
            )

          ],
        )
    );
  }
}


