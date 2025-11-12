import 'dart:math';

import 'package:flutter/material.dart';

class DAY2PART2 extends StatefulWidget {
  const DAY2PART2({super.key});

  @override
  State<DAY2PART2> createState() => _DAY2PART2State();
}

class _DAY2PART2State extends State<DAY2PART2> {

  Color changebackground=Colors.blue;

  void _changeColor(){

          setState(() {

          changebackground = Color.fromARGB(
              255, // fully visible color
           Random().nextInt(256), // Red
               Random().nextInt(256), // Green
               Random().nextInt(256), // Blue
              );

          });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: changebackground,
      
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text(" Stateful Widget PART TWO",
          
          style: TextStyle(

            fontSize: 30,
          ),),
        ),
      body: Center(
        child: ElevatedButton(
        
          onPressed: _changeColor,
          child: Text(
            
            "Change Color",
            style: TextStyle(
        
              fontWeight: FontWeight.bold,
            ),
                
          ),
        ),
      ),


    );
  }
}