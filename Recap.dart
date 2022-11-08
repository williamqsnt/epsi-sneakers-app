import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Recap(title: 'Tata'),
    );
  }
}

class Recap extends StatefulWidget {
  const Recap({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<Recap> createState() => _RecapState();
}

class _RecapState extends State<Recap> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: ListView(
          children: [
            Container(height : 50),
            Row(children: [Spacer(),
            GestureDetector(onTap:(){ Navigator.pop(context); },child: Icon(Icons.highlight_remove, size : 50)),
              Container(width : 20)
            ],),
            Container(height: 200,child:Image(image: AssetImage("lib/assets/sneakers6.png",))),
            Container(height:30,),
            Container(child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text("Nike Air Max Tuned White/White ", style: TextStyle(fontSize: 20 , color: Colors.black,fontWeight: FontWeight.w700 )),
              ),
            ],),),
            Container(child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 140),
                child: Text("#AFR9008586", style: TextStyle(fontSize: 20)),
              )
            ],),),
            Container(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Container(child: Row(children: [
                Icon(Icons.local_shipping),
                Container(width: 10,),
                Text("Information sur le transporteur:")
              ],)),
            ),
            Padding(
              padding: const EdgeInsets.only(left:100),
              child: Container(child: Row(children: [
                Text(" Livraison standard - Numéro de suivi")
              ],),),
            ),
            Container(height: 7,),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Container(child: Row(children: [
                Text("6C14958259120")
              ],),),
            ),
            Container(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Container(child: Row(children: [
                Icon(Icons.location_on_outlined),
                Container(width: 10,),
                Text("Nicolas Bredin")
              ],),),
            ),
            Padding(
              padding: const EdgeInsets.only(left:100),
              child: Container(child: Row(children: [
                Text("132 route de la cannière")
              ],),),
            ),
            Container(height: 7,),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Container(child: Row(children: [
                Text("92140 Clamart")
              ],),),
            ),
            Container(height: 7,),
            Padding(
              padding: const EdgeInsets.only(left:100),
              child: Container(child: Row(children: [
                Text("France")
              ],),),
            ),

            Container(height:30,),
            Container(height:2,color: Colors.grey,),
            Container(height:30,),
            Container(child: Row(children: [
              Container(width: 10,),
              Text("Numéro de la commande", style: TextStyle(fontWeight: FontWeight.w900), ),
              Container(width: 140,),
              Text("#AFR9008586")
            ],),),
            Container(height:30,),
            Container(height:2,color: Colors.grey,),
            Container(height:30,),
            Container(child: Row(children: [
              Container(width: 10,),
              Text("Date de commande", style: TextStyle(fontWeight: FontWeight.w900), ),
              Container(width: 140,),
              Text("3 aout 2022 à 11h29 ")
            ],),),
            Container(height:30,),
            Container(height:2,color: Colors.grey,),
            Container(height:30,),
            Container(child: Row(children: [
              Container(width: 10,),
              Text("Paiement", style: TextStyle(fontWeight: FontWeight.w900)),
              Container(width: 195,),
              Image(image:AssetImage("lib/assets/mastercard.jpg"),height: 30 ,),
              Text("Carte bancaire")

            ],),),
            Container(height:30,),
            Container(height:2,color: Colors.grey,),
            Container(height:30,),
            Container(child: Row(children: [
              Container(width: 10,),
              Text("Adresse de facturation", style: TextStyle(fontWeight: FontWeight.w900), ),
              Container(width: 100,),
              Text("Identique à l'adresse de"),
            ],),),
            Container(child: Padding(
              padding: const EdgeInsets.only(left: 350),
              child: Row(
                children: [
                  Text("livraison")
                ],
              ),
            ),),
            Container(height:30,),
            Container(height:2,color: Colors.grey,),
            Container(height:30,),


          ],
        )
    );
  }
}