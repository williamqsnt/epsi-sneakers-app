
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_project/Home.dart';
import 'package:flutter_project/Reception.dart';
import 'package:flutter_project/main.dart';
import 'package:flutter_project/payment.dart';
import 'package:flutter_project/sneaker.dart';



class Transaction extends StatefulWidget {
  const Transaction({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;


  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
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
        body: Container(
          child:
          Column(
            children: [
              Image(image: AssetImage("lib/assets/sneakers6.png")),
              SizedBox(height : 50),
              Icon(Icons.check_box_outlined, size : 80),
              SizedBox(height : 20),
              Text("La transaction a été effectué", style : TextStyle(fontSize : 25, fontWeight: FontWeight.w500)),
              Text("avec succès !", style : TextStyle(fontSize : 25, fontWeight:FontWeight.w500)),
              SizedBox(height : 20),
              Text("Retrouvez la commande dans", style : TextStyle(fontSize : 15, fontWeight: FontWeight.w500)),
              Text("votre boite de réception", style : TextStyle(fontSize : 15, fontWeight:FontWeight.w500)),
              SizedBox(height : 20),
              Text("Vous avez obtenu 1500 points", style : TextStyle(fontSize : 22, color : Color.fromRGBO(235, 183, 183, 100))),
              Text("d'expérience supplémentaires", style : TextStyle(fontSize : 22, color : Color.fromRGBO(235, 183, 183, 100))),
              SizedBox(height : 20),
              GestureDetector(

                child: TextButton(onPressed: () {
                  onTap:          Navigator.push(context, MaterialPageRoute(builder:(context) => const MyHomePage(title :"boite de réception")));
                } ,child: Container(child: Padding(
                  padding: const EdgeInsets.only(top:14, left: 40),
                  child: Text("Revenir à l'accueil", style: TextStyle(color: Colors.white, fontSize: 20),),
                ), decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Colors.black,),
                  height: 50, width: 250,)),
              ),
            ],
          )
          ,
        )
    );
  }

}