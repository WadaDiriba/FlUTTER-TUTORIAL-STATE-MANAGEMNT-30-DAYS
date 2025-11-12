import 'dart:math';

import 'package:flutter/material.dart';

class DAY2PART4 extends StatefulWidget {
  const DAY2PART4({super.key});

  @override
  State<DAY2PART4> createState() => _DAY2PART4State();
}

class _DAY2PART4State extends State<DAY2PART4> {


  Color backgroundColor=Colors.blue;

  Color buttonColor=Colors.green;

bool _isBright=true;

  void _changeEverything(){
   setState(() {
     backgroundColor = Color.fromARGB(
  255, // not 256
  Random().nextInt(256),
  Random().nextInt(256),
  Random().nextInt(256),
);

buttonColor = Color.fromRGBO(
  Random().nextInt(256),
  Random().nextInt(256),
  Random().nextInt(256),
  1, // opacity
);


       _isBright = !_isBright;
   });
   
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar(
            centerTitle: true,
            backgroundColor:Colors.blueGrey,
            title: Text("Stateful PART4",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            ),
           ),

      body: AnimatedContainer(
        
        duration: Duration(seconds: 5),
        
        color: backgroundColor,
        curve: Curves.easeInOut,


        child:Center(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              AnimatedDefaultTextStyle(
                
                child:Text("Animation"), style:TextStyle(

                  fontSize: _isBright?28:56,
                  color: _isBright?Colors.black:Colors.white,

                  fontWeight: FontWeight.bold
                ),
                
                 duration: Duration(milliseconds: 800)
                 
                 ),

                 AnimatedContainer(
                  
                  duration: Duration(seconds: 5),
                  curve: Curves.easeInOut,

                decoration: BoxDecoration(

                  color: buttonColor,
                  borderRadius: BorderRadius.circular(_isBright?16:40),
                  boxShadow: [

                    BoxShadow(

                      color: Colors.black26,
                      blurRadius: 10,
                      spreadRadius: 2,
                    )
                  ]
                ),
                   child: ElevatedButton(
                    
                    style:ElevatedButton.styleFrom(
                           padding: EdgeInsets.symmetric(
                            vertical: 32,
                            horizontal: 40),
                      backgroundColor: Colors.transparent,

                      shadowColor: Colors.transparent,
                    ),
                    onPressed:_changeEverything, 
                    
                    child: Text("Chnage color of Everthing",
                    style: TextStyle(

                      fontSize: 20,
                    
                    ),
                    )),
                  ),

                  


            ],

            
          ),


        ),

        
        ),

        
    );
  }
}