import 'package:flutter/material.dart';

class DAY2 extends StatefulWidget {
  const DAY2({super.key});

  @override
  State<DAY2> createState() => _DAY2State();
}

class _DAY2State extends State<DAY2> {

  int count=0;

  void increment(){

    setState(() {
      count++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(

          backgroundColor: Colors.blueGrey,

          title: Text("Stateful Widget Tutorial"),
         ),
      body: Center(
        child: Text(
          "Coount:$count;",
        style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        
        onPressed:increment,


        child: Icon(Icons.add)),
        
        
    );
  }
}