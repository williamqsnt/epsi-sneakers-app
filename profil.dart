
import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_project/Home.dart';
import 'package:flutter_project/Reception.dart';
import 'package:flutter_project/main.dart';
import 'package:flutter_project/payment.dart';
import 'package:flutter_project/qrcode.dart';
import 'package:flutter_project/sneaker.dart';



class Profil extends StatefulWidget {
  const Profil({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;


  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
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
          ListView(
            children: [
              Row(
                children: [
                  Spacer(),
                  Container(
                    margin : EdgeInsets.all(20),
                    child:Image(image: AssetImage("lib/assets/nike.png"), width : 40),
                  )
                ],
              ),
              Image(image: AssetImage("lib/assets/bgprofil.png")),
              Container(
                child: Column(
                  children: [
                    SizedBox(height : 20),
                    Container(
                      width : 150,
                      child:
                      Column(children: [
                        Image(image: AssetImage("lib/assets/profil.png")),
                        Text("3500 / 5000 pts"),
                        Image(image : AssetImage("lib/assets/progressbar.png")),
                      ],),
                    ),

                    Container(
                        decoration: BoxDecoration(border : Border.all(width: 2.0, color: Color.fromRGBO(228, 21, 47, 100)),borderRadius: BorderRadius.all(Radius.circular(20), ),
                          color : Color.fromRGBO(255, 229, 220, 100),
                    ),
                      margin : EdgeInsets.all(20),
                      padding : EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Le SN Club est le programme de fidelité de SNKRS, progressez de niveaux pour gagner des recompences, des accès exclusifs aux drops et des offres speciales"),
                          SizedBox(height : 20),
                          Text("1) 10 % de reduction sur vos cinq prochaines commande"),
                          Text("2) 30 % de reduction sur vos cinq prochaines commande"),
                          Text("3) 15 % de chance d’obtenir une raffle"),
                          Text("4) 20 % de chance d’obtenir une raffle")
                        ],
                      ),
                    ),
                    Container(
                      child: 
                      Column(
                        children: [
                          Text("PASS NIKE", style : TextStyle( decoration: TextDecoration.underline)),
                          GestureDetector(onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context)=> const Qrcode(title: "qr") ));},child: Image(image: AssetImage("lib/assets/qrcode.jpg"), width : 200))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
          ,
        )
    );
  }

}

