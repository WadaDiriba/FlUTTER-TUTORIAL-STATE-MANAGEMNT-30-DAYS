import 'dart:math';

import 'package:flutter/material.dart';

class DAY2PART3 extends StatefulWidget {
  const DAY2PART3({super.key});

  @override
  State<DAY2PART3> createState() => _DAY2PART3State();
}
class _DAY2PART3State extends State<DAY2PART3> {

  Color Animatebackground=Colors.white60;

  void _changeColor(){

    Animatebackground=Color.fromARGB(   
      256,  
      Random().nextInt(250),
      Random().nextInt(252),
      Random().nextInt(256),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor:Animatebackground,
      appBar: AppBar(
        centerTitle: true,
           backgroundColor: Colors.blueGrey,
        title: Text("PART 3 OF STATEFUL",
        style: TextStyle(

          fontSize: 20,
        ),
        ),
      ),

      body: AnimatedContainer(
        
        duration: Duration(seconds: 10),
        
        curve: Curves.linear,

        color:Animatebackground,
        child: Center(
            child: ElevatedButton(
              onPressed:_changeColor,
               child:Text("Change Background",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
               
               ),
               
               ),
        ),
        ),
    );
  }
}