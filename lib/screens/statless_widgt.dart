// Day 1 about stateless widget and how it imapcat in this page
import 'package:flutter/material.dart';

class DAY1 extends StatelessWidget {
  const DAY1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blueGrey,
              centerTitle: true,
        title: Text("Statless Widget Tutorial"),      
      ),

      body: Center(
        child: Container(
          color: Colors.white30,
        ),
      )
    );
  }
}