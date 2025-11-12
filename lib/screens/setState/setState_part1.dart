import 'package:flutter/material.dart';

class SetstatePart1 extends StatefulWidget {
  const SetstatePart1({super.key});

  @override
  State<SetstatePart1> createState() => _SetstatePart1State();
}

class _SetstatePart1State extends State<SetstatePart1> {

  Color background=Colors.blueGrey;

  bool _isVisible=true;

   void _toggleText(){

    setState(() {
      _isVisible=!_isVisible;
    });
   }
  @override
  Widget build(BuildContext context) {

    return Scaffold(

        backgroundColor: background,
      appBar: AppBar(
         backgroundColor:const Color.fromARGB(255, 212, 225, 231),
         centerTitle: true,
        title: Text("STATE PART ONE"),
      ),

      body: Center(

        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [

            if(_isVisible)

            Text("Wada Diriba",
             style: TextStyle(

              fontSize: 30,
              fontWeight: FontWeight.bold,

             ),
            ),

            SizedBox(height: 30),

            ElevatedButton(

              style: ElevatedButton.styleFrom(
                shadowColor: Colors.deepOrange,
                shape:RoundedRectangleBorder(
                   
                  side:BorderSide(
                    color: Colors.black45,
                    
                  ),
                  
                ),
                
              ),
              onPressed:_toggleText, 
              child: Text(_isVisible?"Hide":"Show"))
          ],
        ),
      ),
    );
  }
}