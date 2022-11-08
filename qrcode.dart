
import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_project/Home.dart';
import 'package:flutter_project/Reception.dart';
import 'package:flutter_project/main.dart';
import 'package:flutter_project/payment.dart';
import 'package:flutter_project/sneaker.dart';



class Qrcode extends StatefulWidget {
  const Qrcode({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;


  @override
  State<Qrcode> createState() => _QrcodeState();
}

class _QrcodeState extends State<Qrcode> {
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

        body:ListView(children: [
          Padding(
            padding: const EdgeInsets.only(left: 320, top: 20, bottom: 70),
            child: GestureDetector(onTap:() {Navigator.pop(context);},child: Icon(Icons.cancel, size:50)),
          ),
          Container(child: Column(
            children: [
              Text("Nicolas Bredin", style: TextStyle(fontSize: 30),),
              Text("membre depuis décembre 2017")
            ],
          ),),
          Container(child: Image(image: AssetImage("lib/assets/qrcode.jpg")),),
          Container(child: Column(
            children: [
              Text("La façon la plus simpe et la plus rapide de se"),
              Text("connecter dans tous les nikes stores et lors de"),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Row(
                  children: [
                    Text("nos évènements SNKRS."),
                    Text("En savoir plus.", style: TextStyle(color: Color.fromRGBO(114, 125, 224, 100)),),
                  ],
                ),
              )
            ],
          ),),

        ],)
    );
  }
}