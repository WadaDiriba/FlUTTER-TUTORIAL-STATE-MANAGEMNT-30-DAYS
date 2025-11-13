import 'package:flutter/material.dart';
import 'package:flutter_tutorial/screens/providers/provider_part1.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final counter=Provider.of<Counterprovider>(context);
    final background = Provider.of<Counterprovider>(context);


    return Scaffold(

         

        
      body: AnimatedContainer(

        duration: Duration(seconds: 4),

        curve: Curves.easeInOut,
        child: Container(
        
            color:background.backColor,
          child: Center(
          
            child:Text(
          
               "Count:${counter.count}",
          
               style: TextStyle(
          
                fontSize: 40,
          
                fontWeight: FontWeight.bold,
               ),
            ),
          ),
        ),
      ),


      floatingActionButton:Row(

        mainAxisAlignment: MainAxisAlignment.center,
          children: [

               FloatingActionButton(
                
                onPressed: counter.increment,
                child: Icon(Icons.add),
                   backgroundColor: Colors.deepPurple,
                ),

                SizedBox(width: 30),
                 FloatingActionButton(
                
                onPressed: counter.reset,
                child: Icon(Icons.refresh),
                   backgroundColor: Colors.grey,
                ),
                 SizedBox(width: 30),
                 FloatingActionButton(
                
                onPressed: counter.decrement,
                child: Icon(Icons.text_decrease),
                   backgroundColor: Colors.red,
                ),

               FloatingActionButton(
                
                onPressed: counter.changeBackgroundColor,
                child: Icon(Icons.add),
                   backgroundColor: Colors.red,
                ),
                

          ],



      ),
    );
  }
}