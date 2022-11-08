
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_project/Home.dart';
import 'package:flutter_project/Reception.dart';
import 'package:flutter_project/Transaction.dart';
import 'package:flutter_project/main.dart';



class Payment extends StatefulWidget {
  const Payment({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;


  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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

    int _currentIndex = 0;
    final List<Widget> _children = [
      MyApp(),
      Reception(title: ""),
    ];



    void onTabTapped(int index) {
      setState(() {
        _currentIndex = index;
      });
    }


    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items:[
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color : Colors.black),
              label : ""
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.mail, color : Colors.black),
              label : ""
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, color : Colors.black),
              label : ""
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, color : Colors.black),
              label : ""
          )
        ],
      ),
    );
  }
}


