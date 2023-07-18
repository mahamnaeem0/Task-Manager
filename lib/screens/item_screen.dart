import 'package:flutter/material.dart';
import 'endscreen.dart';
class ItemScreen extends StatefulWidget {
  const ItemScreen({super.key,required this.text,required this.price,required this.image,required this.des});
final String text;
    final int price;
    final String image;
    final String des;
  @override
  State<ItemScreen> createState() => _ItemScreen();
}

class _ItemScreen extends State<ItemScreen> {
    int inc=0;
    int dec=0;

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        
         height:size.height,
         width:size.width,
         child: Column(
          children: [
            
            Container(
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.orange,
                
              ),
              child: Column(
              children: [
                Container(
                  height: 200,
                  width: 120,
                  child: Image.asset(widget.image)),
             
              ],
              ),
            ),
             AppBar(
  
            backgroundColor: Color(0xffffffff),
          title: Row(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${widget.text}", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(padding: const EdgeInsets.only(left:200)),
                Text("${widget.price}", style: TextStyle(color: Colors.black, fontSize: 20),),          
            ],
          ),
       ]
            ),
             ]
             )
             ),
             SizedBox(height:60),
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 380,
                  child: Text("${widget.des}",style: TextStyle(color: Colors.black,fontSize: 16),)),
              ],
             ),
             Padding(padding: const EdgeInsets.only(bottom:70),),
              ElevatedButton(
      onPressed: (){
        Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => endscreen(
                        
                                      )));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
      child: Text(
       "add to cart" ,
        style: TextStyle(
          fontSize: 12,
          letterSpacing: 2,
          color: Colors.white,
        ),
      ),
          ),
         ]
      ),
    ),
    );
  }
}