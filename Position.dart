
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_project/Home.dart';
import 'package:flutter_project/Reception.dart';
import 'package:flutter_project/main.dart';
import 'package:flutter_project/payment.dart';
import 'package:flutter_project/sneaker.dart';



class Position extends StatefulWidget {
  const Position({super.key, required this.title});



  final String title;


  @override
  State<Position> createState() => _PositionState();
}

class _PositionState extends State<Position> {



  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Container(
        child:
        ListView(
          children: [
            SizedBox(height : 20),
            Row(
              children: [
                SizedBox(width : 20),
                Text("Trouver un Nike Store", style : TextStyle(fontWeight: FontWeight.bold, fontSize : 25)),
                Spacer(),
                Image(image: AssetImage("lib/assets/nike.png"), width : 40),
                SizedBox(width : 20),

              ],
            ),

            TextField(
              decoration: InputDecoration(hintText: "Recherche d'emplacement", contentPadding: EdgeInsets.only(left : 15)),
              controller: _controller,
              onSubmitted: (String value) async {
                  print("valeur entrée");
              },
            ),
            SizedBox(height : 20),
            Row(
              children: [
                SizedBox(width : 10),
                Text("15 magasins près de chez vous", style: TextStyle(color : Color.fromRGBO(168, 112, 112, 100)),)
              ],
            ),
            SizedBox(height : 20),
            Container(
              padding : EdgeInsets.only(top : 20, bottom : 20, left : 20),
              child:
              Row(
                children: [
                  Image(image: AssetImage("lib/assets/position1.png")),
                  SizedBox(width : 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nike House of Innovation Paris", style : TextStyle(fontWeight: FontWeight.bold)),
                      Text('79 Ave. Des Champs-Elysees'),
                      Text('Paris, 75008, FR'),
                      Row(children: [Text('Ouvre bientot', style: TextStyle(color : Color.fromRGBO(255, 126, 0, 100)),), Text('• Ouvre à 10:00')],)
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding : EdgeInsets.only(top : 20, bottom : 20, left : 20),

              child:
              Row(
                children: [
                  Image(image: AssetImage("lib/assets/position2.png")),
                  SizedBox(width : 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nike By Haussmann", style : TextStyle(fontWeight: FontWeight.bold)),
                      Text('Citadium Paris'),
                      Text('50-56 Rue De Caumartin'),
                      Text('Paris, 75009, FR'),
                      Row(children: [Text('Ouvre bientot', style: TextStyle(color : Color.fromRGBO(255, 126, 0, 100)),), Text('• Ouvre à 10:00')],)
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding : EdgeInsets.only(top : 20, bottom : 20, left : 20),
              child:
              Row(
                children: [
                  Image(image: AssetImage("lib/assets/position3.png")),
                  SizedBox(width : 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nikelab P75 Paris", style : TextStyle(fontWeight: FontWeight.bold)),
                      Text('12 Rue Des Hospitalieres'),
                      Text('St. Gervais'),
                      Text('Paris, 75004, FR'),
                      Row(children: [Text('Ouvre bientot', style: TextStyle(color : Color.fromRGBO(255, 126, 0, 100)),), Text('• Ouvre à 19:30')],)
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding : EdgeInsets.only(top : 20, bottom : 20, left : 20),
              child:
              Row(
                children: [
                  Image(image: AssetImage("lib/assets/position4.png")),
                  SizedBox(width : 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nike factory store", style : TextStyle(fontWeight: FontWeight.bold)),
                      Text('ZI NORD  Ccal St gregoire 25 r Etang '),
                      Text('35760 Saint Gregoire'),
                      Row(children: [Text('Ouvre bientot', style: TextStyle(color : Color.fromRGBO(255, 126, 0, 100)),), Text('• Ferme à 20h00')],)
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding : EdgeInsets.only(top : 20, bottom : 20, left : 20),
              child:
              Row(
                children: [
                  Image(image: AssetImage("lib/assets/position5.png")),
                  SizedBox(width : 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nike Paris la defense", style : TextStyle(fontWeight: FontWeight.bold)),
                      Text('15 parvis la defense'),
                      Text('les quatres temps niveau zero'),
                      Text(' Puteaux 92092, FR '),
                      Row(children: [Text('Ouvre bientot', style: TextStyle(color : Color.fromRGBO(255, 126, 0, 100)),), Text('• Ferme à 20h30')],)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )


    );
  }
}
