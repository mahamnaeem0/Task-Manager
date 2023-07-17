import 'package:flutter/material.dart';
import 'signup.dart';
import 'login.dart';
class Homescreen extends StatelessWidget {
  const Homescreen ({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange,
    
      title: const Text('                       MENU CART          ',
      style: 
      TextStyle(fontSize: 23,fontWeight: FontWeight.bold, ),),
      ),
      
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color:Colors.grey,
              ),
              child: Text('   Go To   ' ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 34),),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: const Text('login page'),
              onTap: (){
                Navigator.pop(context, 
                                
                                  
                                    );
              },
            ),
            ListTile(
              leading: Icon(
              Icons.car_crash,
            ),
            title: const Text('signup page'),
            onTap: (){
              Navigator.pop(context,
                                  
                                    );
            },
            ),

          ],
        ),
      ),
     
    body: SingleChildScrollView(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: size.height,
        width: size.width,
        color: Colors.white,
        padding: const EdgeInsets.only(bottom: 20),
         child:
             Column(
             mainAxisAlignment: MainAxisAlignment.start,
          
                  children: [
                    Padding(padding: const EdgeInsets.only(bottom: 20,),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only( bottom: 40, left:15 ),
                            
                        child:
                          
                           InkWell(
                            onTap:(){             
                            }, 
                            
                            child:
                             Image.asset('assets/friedrice.jpg',height: 70,width: 120,),     
                        
                        )
                        ),
                       
                        Text('Fried Rice',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w100),),
                        Column(
                          children: [
                            ElevatedButton(
      onPressed: (){},
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
                            
                            Text('price:3000',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w100),),
                          ],
                        ),
                        ],
                      
                    ),
      
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 40, left: 15),
                          child: InkWell(onTap:(){},
                            child: Image.asset('assets/mancho.jpg',height: 70,width: 120,),

                          
                       
),),

Text('Mancho Soup', style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w100),),
Column(
  mainAxisAlignment: MainAxisAlignment.start,
  children:[
          ElevatedButton(
      onPressed: (){},
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
      Text('price:2000', style: TextStyle(fontSize: 13,fontWeight: FontWeight.w100),),
  ],
),
                      ],
                      
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 40,left: 15),
                          child: InkWell(onTap:(){},
                          child: Image.asset('assets/noodels.jpg',height: 70,width: 120,),
                          ),
                        ),
 
Text('Noodles', style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w100),),
Column(
  mainAxisAlignment: MainAxisAlignment.end,
  children:[
         ElevatedButton(
      onPressed: (){},
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
      Text('price:2000', style: TextStyle(fontSize: 13,fontWeight: FontWeight.w100),
      ),
      Container(),
  ],
),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 40, left: 15),
                          child: InkWell(onTap:(){},
                          child: Image.asset('assets/wokspecial.jpg',height: 70,width: 120,),
                          ),
                        ),

Text('Wok Special', style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w100),),

Column(
  mainAxisAlignment: MainAxisAlignment.start,
  children:[
           ElevatedButton(
      onPressed: (){},
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
      Text('price:3000', style: TextStyle(fontSize: 13,fontWeight: FontWeight.w100),),
  ],
),
                      ],
                    ),
                  ],
             
           
           ),
           
           ),
    ),
    );
    
  }
}
