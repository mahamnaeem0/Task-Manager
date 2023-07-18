import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'item_screen.dart';
class endscreen extends StatelessWidget {
  const endscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 254, 254, 254),
         body: Container(

        child:Center(
        child: Column(
          children: [
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           ElevatedButton(
   onPressed: () {
                                Navigator.pop(
                                    context,
                                  );
                              },
  child: Icon(Icons.logout, color: Color.fromARGB(255, 255, 248, 244)),
  style: ElevatedButton.styleFrom(
    shape: CircleBorder(
           side: BorderSide(
      color: Color.fromARGB(255, 238, 134, 65),
    ),
    ),
 )
    ),
]
),
SizedBox(height:60),
Image.asset("assets/right.png"),
             
               
                Text("Your Order Has Been",
               style: TextStyle(
                
                fontSize: 25,
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: (FontWeight.w600),
               )),
  Text("Successfully placed",
               style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 1, 1, 1),
                fontWeight: (FontWeight.w600),
               )),
      
         
       
    ],
    ),
    
    )
    )
    );
    
    
  }
}