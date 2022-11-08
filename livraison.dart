import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class Livraison extends StatefulWidget {
  const Livraison({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<Livraison> createState() => _LivraisonState();
}

class _LivraisonState extends State<Livraison> {
  int pickLivraison = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: ListView(
          children: [
            Container(height: 110, color: Color.fromRGBO(217, 217, 217, 100), child: Padding(
              padding: const EdgeInsets.only(left: 350, top: 5),
            ),),
            Container(height:30,),
            Container(child: Row(children: [
              Text("  Adresse de livraison", style: TextStyle(fontSize: 30, color: Colors.black)),
              Container(width:80,),
              Container(color: Colors.black, width: 15, height: 3,)
            ],),),
            Container(height:30,),
            Container(height:2,color: Colors.grey,),
            Container(height:30,),
            Container(child: Row(children: [
              Container(width: 10,),
              GestureDetector(
                onTap:(){
                  setState(() {
                    pickLivraison = 1;
                  });
                },
                child: Container(width: 20, height: 20, decoration: BoxDecoration(border: Border.all(color: Colors.black),
                    color : pickLivraison == 1 ? Colors.black : Colors.white,
                    borderRadius:BorderRadius.all(Radius.circular(100)) ),),
              ),
              Container(width: 10,),
              Text("142 route de la cannière, 92140, Clamart", ),
            ],),),
            Container(height:30,),
            Container(height:2,color: Colors.grey,),
            Container(height:30,),
            Container(child: Row(children: [
              Container(width: 10,),
              GestureDetector(
                onTap:(){
                  setState(() {
                    pickLivraison = 2;
                  });
                },
                child: Container(width: 20, height: 20, decoration: BoxDecoration(border: Border.all(color: Colors.black),
                    color : pickLivraison == 2 ? Colors.black : Colors.white,
                    borderRadius:BorderRadius.all(Radius.circular(100)) ),),
              ),
              Container(width: 10,),
              Text("9 rue de la tannerie, 69000, Lyon", ),
            ],),),
            Container(height:30,),
            Container(height:2,color: Colors.grey,),
            Container(height:30,),
            Container(child: Row(children: [
              Container(width: 10,),
              GestureDetector(
                onTap:(){
                  setState(() {
                    pickLivraison = 3;
                  });
                },
                child: Container(width: 20, height: 20, decoration: BoxDecoration(border: Border.all(color: Colors.black),
                    color : pickLivraison == 3 ? Colors.black : Colors.white,
                    borderRadius:BorderRadius.all(Radius.circular(100)) ),),
              ),
              Container(width: 10,),
              Text("10 chemin de la cannebière, 01200, Thoissey")
            ],),),
            Container(height:30,),
            Container(height:2,color: Colors.grey,),
            Container(height: 50,),
            Container(height: 30,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {
                  print('bouton cliqué');
                }, child: GestureDetector(
                  onTap: () { Navigator.pop(context);},
                  child: Container(child: Padding(
                    padding: const EdgeInsets.only(top:15, left: 70),
                    child: Text('Retour', style: TextStyle(color: Colors.white, fontSize: 15),),
                  ), decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.black,),
                    height: 50, width: 190,),
                )),
              ],
            ),

          ],
        )
    );
  }
}