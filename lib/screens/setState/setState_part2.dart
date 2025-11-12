import 'package:flutter/material.dart';

class SetstatePart2 extends StatefulWidget {
  const SetstatePart2({super.key});

  @override
  State<SetstatePart2> createState() => _SetstatePart2State();
}

class _SetstatePart2State extends State<SetstatePart2> {

   bool _isDark = false;
  bool _showPassword = false;
  String _message = "Welcome!";

  void _passwordshow(){

   setState(() {
      _showPassword=!_showPassword;
   });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:_isDark? Colors.black:Colors.white,when we use the containeranimated
      appBar: AppBar(

         backgroundColor:_isDark? const Color.fromARGB(255, 237, 130, 130)
         :const Color.fromARGB(255, 39, 207, 50),
        centerTitle: true,
       
        title: Text("STATE PART TWO",
        
        style: TextStyle(

          fontWeight: FontWeight.bold,
        ),),
      ),

      body: AnimatedContainer(

        duration: Duration(seconds: 5),

        curve:Curves.easeInOut,
          color: _isDark ? Colors.black : Colors.white,
        child: Center(
        
          child: Column(
        
            mainAxisAlignment: MainAxisAlignment.center,
        
            children: [
              Text(
        
                _message,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight:FontWeight.bold,
                ),
              ),
        
              SizedBox(height: 40),
        
              SizedBox(
        
                width: 250,
                child: TextField(
                  
                  obscureText:!_showPassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
        
                      borderRadius: BorderRadius.circular(20),
                      
                    ),
        
                    
                    labelText: "Password",
                    suffixIcon: IconButton(
                      onPressed:_passwordshow,
        
                      icon: Icon(
                        _showPassword
                        ?Icons.visibility
                        :Icons.visibility_off,
                      ),
                    )
                  ),
        
                ),
              ),
        
              SizedBox(height: 30),
        
              SwitchListTile(
                value:_isDark, 
                onChanged:(value){
        
                  setState(() {
                   _isDark = value;
                    _message = _isDark
                     ? "DARK MODE ON"
                      : "LIGHT MODE ON";
        
        
                    
                  });
                }
                
                
                )
            ],
          ),
        ),
      ),
    );
  }
}