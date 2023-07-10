import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'homescreen.dart';
import 'signup.dart';
class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    GlobalKey<FormState> formKey =GlobalKey<FormState>();
    TextEditingController usernameCtrl = TextEditingController();
    return Scaffold(
  
      body:Container(
         height: size.height,
         width:size.width,
         padding: const EdgeInsets.only(top:77, left: 20,right:20),
         color: Color.fromARGB(255, 253, 253, 253),
        child:Form(
         key:formKey,
          child: Column(
          children:[
            Text("Welcome Back", style: TextStyle(color: Color.fromARGB(255, 12, 9, 9), fontSize: 30, letterSpacing:5 ),),
             Padding(padding: EdgeInsets.only(top:23,bottom:26),child:Text("Login to your account")),
            TextFormField(
              controller: usernameCtrl,
             validator: RequiredValidator(errorText: "Required*"),
              decoration: const InputDecoration(
                
                border: OutlineInputBorder(),
                
                prefixIcon: Icon(Icons.person),
                hintText:"abcd", labelText:'username',
              ),
              
            ),
            SizedBox(height:16),
          
             TextFormField(
              obscureText:true,
               validator: LengthRangeValidator(
                    min: 8,
                    max: 10,
                    errorText: "Password length should be 8-10"),
              decoration: const InputDecoration(
                 border: OutlineInputBorder(),
                 
                prefixIcon: Icon(Icons.password),
                hintText:"xxxxxx",labelText: 'Password',
              ),
            ),
            SizedBox(height:26),
            SizedBox(
                height: 52,
                width: size.width,
                child: ElevatedButton(
              
                    onPressed: () {
                      
                      if (formKey.currentState!.validate() == true) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen(
                                  username: usernameCtrl.text,
                                    )));
                      }
                    },
                     style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
              ),
               SizedBox(
                height: 52,
                width: size.width,
                
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
              
              new GestureDetector(
  onTap: () {
    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => signup(
                                  
                                    )));
  },
  child: new Text("  Sign up", style: TextStyle(color: Color.fromARGB(255, 253, 144, 54)),),
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