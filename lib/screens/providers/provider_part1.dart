

import 'dart:math';

import 'package:flutter/material.dart';



class Counterprovider with ChangeNotifier{

      int _count=0;

  Color _bgColor=Colors.lightGreen;

  int get count=>_count;

  Color get backColor=>_bgColor;


  void changeBackgroundColor() {
    _bgColor = Color.fromARGB(
      255,
      Random().nextInt(256),
      Random().nextInt(256),
      Random().nextInt(256),
    );
    notifyListeners(); 
  }


  void increment(){

    _count++;

     notifyListeners();
  }

  void reset(){

    _count=0;

    notifyListeners();
  }

  void decrement(){

    _count--;

    notifyListeners();
  }
}