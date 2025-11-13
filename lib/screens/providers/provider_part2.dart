// IN THIS WE SEE ABOUT CONSUMMER AND SELECTOR


import 'package:flutter/material.dart';
import 'package:flutter_tutorial/screens/providers/provider_part1.dart';

import 'package:provider/provider.dart';

class ProviderPart2 extends StatelessWidget {
  const ProviderPart2({super.key});

  @override
  Widget build(BuildContext context) {

    print("REBUILD");
    
    return Scaffold(
            appBar: AppBar(

              title: Text("PROVIDER PART TWO"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Consumer<Counterprovider>(
                    builder:(context,counter,child){

                          print("Only rebuild the Widgtes");

                          return Text(
                          "Count:${counter.count}",

                          style: TextStyle(

                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),

                          );

                    }
                    
                    
                     ),

                     SizedBox(height: 30,),

                     ElevatedButton(
                      onPressed:(){
                        
                        context.read<Counterprovider>().increment();

                      },
                       child: Text("INCREMENT"))
                ],
              ),
            ),

    );
  }
}