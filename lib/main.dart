import 'package:flutter/material.dart';
import 'package:flutter_tutorial/screens/setstate_part3.dart';

import 'package:flutter_tutorial/screens/stful_widgetpart4.dart';
import 'package:flutter_tutorial/screens/setState_part1.dart';
import 'package:flutter_tutorial/screens/setState_part2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
         theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.teal),
      home:SetstatePart3(), 
    );
  }
}
