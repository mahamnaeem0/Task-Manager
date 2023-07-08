import 'package:flutter/material.dart';
 import 'get_started_screen.dart';
 import 'package:flutter_app/commons/reusable_button.dart';
class LogoScreen extends StatelessWidget {
  const LogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:Colors.white ,
      body: Container(
       
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
                 Container(
                  child: Image.asset("assets/wok.png")),
             
                Container(
                  height: 4,
                  width:160
                 ,
                  decoration: BoxDecoration(color: Colors.orange),
                ),
                
                Text("FOOD CENTER", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold,fontSize:20, letterSpacing:3) ),
                 SizedBox(height:70),
                 ReusableButton(
  buttonText: 'Started',
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GetStartedScreen()),
    );
  },
)
            ],
          ),
        ),
      ),
    );
  }
}