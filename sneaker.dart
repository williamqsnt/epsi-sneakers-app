import 'package:flutter/material.dart';
import 'package:flutter_project/Transaction.dart';
import 'package:flutter_project/choixpaiement.dart';
import 'package:flutter_project/livraison.dart';
import 'package:flutter_project/payment.dart';


class Sneaker extends StatefulWidget {
  const Sneaker({super.key, required this.title});



  final String title;

  @override
  State<Sneaker> createState() => _SneakerState();
}

class _SneakerState extends State<Sneaker> {

  int selectedSize = 1;
  int checked = 0;


  void initState() {
    super.initState();
    var iconchecked = Icon(Icons.border_all);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Column(
          children: [
            Expanded(
              flex: 6,
              child: Container(
                color: Color.fromARGB(255, 246, 246, 246),
                child: Column(
                    children: [
                      Container(height: 50),
                      Row(
                        children: [
                          Spacer(),
                          GestureDetector(onTap: () {
                            Navigator.pop(context);
                          }, child: Icon(Icons.highlight_remove, size: 50)),
                          Container(width: 40)
                        ],
                      ),
                      Container(
                        child: Image(
                            image: AssetImage('lib/assets/sneakers6.png'),
                            fit: BoxFit.fill),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.info_outlined),
                          Text("1500 points d'expériences !")
                        ],
                      )

                    ]
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                child:
                Column(
                  children: [
                    Expanded(flex: 1, child: Container()),
                    Expanded(flex: 2,
                        child: Container(
                          margin: EdgeInsets.only(right: 80), child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Air force 1'07", style: TextStyle(
                                fontSize: 35, color: Colors.grey)),
                            SizedBox(height: 10),
                            Text("Fresh", style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold)),
                            Text("129,99€", style: TextStyle(fontSize: 25))
                          ],
                        ),)),
                    Expanded(flex: 2, child: Container(child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(isScrollControlled: true,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20))),
                                context: context,
                                builder: (content){
                                return StatefulBuilder(
                                builder : (BuildContext context, StateSetter setState){
                                  return buildSheet(context, setState);
                            }
                                );
                            });
                          }
                          , child: Container(
                          width: 250,
                          height: 80,
                          decoration: BoxDecoration(color: Colors.black,
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(child: Text("129,99€", style: TextStyle(
                              color: Colors.white, fontSize: 25)))
                          ,
                        ),
                        )
                      ],
                    ),))
                  ],
                ),

              ),
            ),
          ],
        )

    );
  }

  Widget buildSheet(BuildContext context, StateSetter setState) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
            padding: EdgeInsets.all(30),
            child:
            Column(
              children: [
                Row(
                  children: [
                    Container(height: 100),
                    Text("Sélectionner une pointure homme",
                        style: TextStyle(fontSize: 20)),
                    Spacer(),
                    GestureDetector(onTap: () {
                      Navigator.pop(context);
                    }, child: Icon(Icons.remove)),
                  ],
                ),
                Column(children: [
                  Row(
                    children: [
                      GestureDetector(onTap: () {
                        print("hello");

                        setState((){
                          selectedSize = 0;
                        });

                      },
                          child: Container(decoration: BoxDecoration(
                              color: selectedSize == 0? Colors.black : Colors.white,
                              border: Border.all(
                                  width: 2.0, color: Colors.brown),
                              borderRadius: BorderRadius.circular(15)),
                              padding: EdgeInsets.all(20),
                              child: Text(
                                  "EUR 36", style: TextStyle(fontSize: 20, color : selectedSize == 0? Colors.white : Colors.black,)))),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap:(){
                          setState((){
                            selectedSize = 1;
                          });
                        },
                        child: Container(decoration: BoxDecoration(color: selectedSize == 1? Colors.black : Colors.white,

                            border: Border.all(width: 2.0, color: Colors.brown),
                            borderRadius: BorderRadius.circular(15)),
                            padding: EdgeInsets.all(20),
                            child: Text(
                                "EUR 37", style: TextStyle(fontSize: 20, color : selectedSize == 1? Colors.white : Colors.black,))),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap:(){
                          setState((){
                            selectedSize = 2;
                          });
                        },
                        child: Container(decoration: BoxDecoration(color: selectedSize == 2? Colors.black : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.brown),
                            borderRadius: BorderRadius.circular(15)),
                            padding: EdgeInsets.all(20),
                            child: Text(
                                "EUR 38", style: TextStyle(fontSize: 20, color : selectedSize == 2? Colors.white : Colors.black,))),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(decoration: BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 100),
                          border: Border.all(width: 2.0,
                              color: Color.fromRGBO(217, 217, 217, 100)),
                          borderRadius: BorderRadius.circular(15)),
                          padding: EdgeInsets.all(20),
                          child: Text("EUR 39", style: TextStyle(
                              fontSize: 20, color: Colors.black))),
                      SizedBox(width: 10),
                      Container(decoration: BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 100),
                          border: Border.all(width: 2.0,
                              color: Color.fromRGBO(217, 217, 217, 100)),
                          borderRadius: BorderRadius.circular(15)),
                          padding: EdgeInsets.all(20),
                          child: Text("EUR 40", style: TextStyle(
                              fontSize: 20, color: Colors.black))),
                      SizedBox(width: 10),
                      Container(decoration: BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 100),
                          border: Border.all(width: 2.0,
                              color: Color.fromRGBO(217, 217, 217, 100)),
                          borderRadius: BorderRadius.circular(15)),
                          padding: EdgeInsets.all(20),
                          child: Text("EUR 41", style: TextStyle(
                              fontSize: 20, color: Colors.black)))
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(decoration: BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 100),
                          border: Border.all(width: 2.0,
                              color: Color.fromRGBO(217, 217, 217, 100)),
                          borderRadius: BorderRadius.circular(15)),
                          padding: EdgeInsets.all(20),
                          child: Text("EUR 42", style: TextStyle(
                              fontSize: 20, color: Colors.black))),
                      SizedBox(width: 10),
                      Container(decoration: BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 100),
                          border: Border.all(width: 2.0,
                              color: Color.fromRGBO(217, 217, 217, 100)),
                          borderRadius: BorderRadius.circular(15)),
                          padding: EdgeInsets.all(20),
                          child: Text("EUR 43", style: TextStyle(
                              fontSize: 20, color: Colors.black))),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap:(){
                          setState((){
                            selectedSize = 4;
                          });
                        },
                        child: Container(decoration: BoxDecoration(color: selectedSize == 4? Colors.black : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.brown),
                            borderRadius: BorderRadius.circular(15)),
                            padding: EdgeInsets.all(20),
                            child: Text(
                                "EUR 44", style: TextStyle(fontSize: 20, color : selectedSize == 4? Colors.white : Colors.black,))),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      GestureDetector(
                        onTap:(){
                          setState((){
                            selectedSize = 5;
                          });
                        },
                        child: Container(decoration: BoxDecoration(color: selectedSize == 5? Colors.black : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.brown),
                            borderRadius: BorderRadius.circular(15)),
                            padding: EdgeInsets.all(20),
                            child: Text(
                                "EUR 45", style: TextStyle(fontSize: 20, color : selectedSize == 5? Colors.white : Colors.black,))),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap:(){
                          setState((){
                            selectedSize = 6;
                          });
                        },
                        child: Container(decoration: BoxDecoration(color: selectedSize == 6? Colors.black : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.brown),
                            borderRadius: BorderRadius.circular(15)),
                            padding: EdgeInsets.all(20),
                            child: Text(
                                "EUR 46", style: TextStyle(fontSize: 20, color : selectedSize == 6? Colors.white : Colors.black,))),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap:(){
                          setState((){
                            selectedSize = 7;
                          });
                        },
                        child: Container(decoration: BoxDecoration(color: selectedSize == 7? Colors.black : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.brown),
                            borderRadius: BorderRadius.circular(15)),
                            padding: EdgeInsets.all(20),
                            child: Text(
                                "EUR 47", style: TextStyle(fontSize: 20, color : selectedSize == 7? Colors.white : Colors.black,))),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      GestureDetector(
                        onTap:(){
                          setState((){
                            selectedSize = 8;
                          });
                        },
                        child: Container(decoration: BoxDecoration(color: selectedSize == 8? Colors.black : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.brown),
                            borderRadius: BorderRadius.circular(15)),
                            padding: EdgeInsets.all(20),
                            child: Text(
                                "EUR 48", style: TextStyle(fontSize: 20, color : selectedSize == 8? Colors.white : Colors.black,))),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20))),
                          context: context,
                          builder: (content) => buildPayment(context));
                    },

                    child: Container(
                      width: 250,
                      height: 80,
                      decoration: BoxDecoration(color: Colors.black,
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(child: Text("Continuer", style: TextStyle(
                          color: Colors.white, fontSize: 25)))
                      ,
                    ),
                  )

                ],)
              ],
            )
        )
      ],
    );
  }
  Widget buildPayment(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              padding: EdgeInsets.all(30),
              child:
              Column(

                children: [
                  Row(
                    children: [
                      Container(width: 85),
                      Text("Air Force 1'70", style: TextStyle(fontSize: 30),),
                      Spacer(),
                      GestureDetector(onTap: () {
                        Navigator.pop(context);
                      }, child: Icon(Icons.remove)),

                    ],
                  ),
                  Container(height: 20,),
                  Text("Blanc/Blanc/Blanc",
                      style: TextStyle(fontSize: 25, color: Colors.grey)),
                ],
              ),
            ),

            Container(height: 2, color: Colors.grey,),
            Container(height: 30,),
            Container(child: Row(children: [
              Text("  Pointure",
                  style: TextStyle(fontSize: 25, color: Colors.black)),
              Container(width: 150,),
              Text("Homme 44",
                style: TextStyle(fontSize: 25, color: Colors.grey),),
              Icon(Icons.add, size: 26, color: Colors.grey,),
            ],),),
            Container(height: 30,),
            Container(height: 2, color: Colors.grey,),
            Container(height: 30,),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>
                    const Livraison(
                        title: "Livraison")));
              },
              child: Container(child: Row(children: [
                Text("  Livraison",
                    style: TextStyle(fontSize: 25, color: Colors.black)),
                Container(width: 30,),
                Text("Av. Salvador Salengro",
                  style: TextStyle(fontSize: 25, color: Colors.grey),),
                Icon(Icons.add, size: 26, color: Colors.grey,),
              ],),),
            ),
            Container(height: 30,),
            Container(height: 2, color: Colors.grey,),
            Container(height: 30,),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>
                    const Choixpaiement(
                        title: "choix de paiement")));
              },
              child: Container(child: Row(children: [
                Text("  Paiement",
                    style: TextStyle(fontSize: 25, color: Colors.black)),
                Container(width: 130,),
                Image(image: AssetImage('lib/assets/visa.jpg'), height: 30),
                Container(width: 10,),
                Text("0220",
                  style: TextStyle(fontSize: 25, color: Colors.grey),),
                Icon(Icons.add, size: 26, color: Colors.grey,),
              ],),),
            ),
            Container(height: 30,),
            Container(height: 2, color: Colors.grey,),
            Container(height: 30,),
            Container(child: Row(children: [
              Text("  Total",
                  style: TextStyle(fontSize: 25, color: Colors.black)),
              Container(width: 20,),
              Text("129, 99 € taxes comprises",
                style: TextStyle(fontSize: 25, color: Colors.grey),),
              Icon(Icons.add, size: 26, color: Colors.grey,),
            ],),),
            Container(height: 30,),
            Container(height: 2, color: Colors.grey,),
            Container(height: 50,),
            Container(child: Row(children: [
              Column(children: [
                Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: GestureDetector(
                      onTap:() {
                        setState(() {
                          print("cliqué");
                        });
                      },
                        child:
                        Icon(Icons.check_box_outlined),
                )
                )],),
              Container(width: 20,),
              Column(children: [
                Row(children: [
                  Text("En cochant cette case, vous confirmez avoir lu,",
                      style: TextStyle(fontSize: 15, color: Colors.grey))
                ],),
                Row(children: [
                  Text("compris et accepté nos Condition de vente et",
                      style: TextStyle(fontSize: 15, color: Colors.grey))
                ],),
                Row(children: [
                  Text("notre politique de confidentialité",
                      style: TextStyle(fontSize: 15, color: Colors.grey))
                ],),
              ],)
            ],),),
            SizedBox(height: 50),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(

                  child: TextButton(onPressed: () {
                    onTap:
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>
                        const Transaction(
                            title: "boite de réception")));
                  }, child: Container(child: Padding(
                    padding: const EdgeInsets.only(top: 14, left: 37),
                    child: Text('Soumettre le paiement',
                      style: TextStyle(color: Colors.white, fontSize: 20),),
                  ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.black,),
                    height: 50,
                    width: 280,)),
                ),
              ],
            ),
            SizedBox(height: 50),


          ],
        )
      ],
    );
  }
}


