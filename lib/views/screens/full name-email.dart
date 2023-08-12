import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       
body:Column(
  
  children:  [
    IconButton(alignment: Alignment.topLeft,
    padding: EdgeInsets.only(left: 20,top: 61),

                icon:const Icon(Icons.arrow_back,),
                onPressed: (){},
            ),
            SizedBox(height: 90),
            Container(
              child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                  Text('Full name',textAlign: TextAlign.left,),
                  TextField(style: TextStyle(color: Colors.black)),
                  SizedBox(height: 10,),
                  Text('E-mail',textAlign: TextAlign.left,),
                  TextField(style: TextStyle(color: Colors.black)),
                  SizedBox(height: 10,),
                  Text('Password',textAlign: TextAlign.left,),
                  TextField(style: TextStyle(color: Colors.black)),
                  SizedBox(height: 10,),
                  Text('Confirm Password',textAlign: TextAlign.left,),
                  TextField(style: TextStyle(color: Colors.black)),
                ]),
              ),

           ),
           SizedBox(height: 30,),
           SizedBox(
            height: 60,
    child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: SizedBox(
                           
                                        width: double.infinity,
                                        height: 50,
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                             primary: Color.fromARGB(221, 29, 184, 83),
                             shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(25))),
                                            onPressed: () {
                           Navigator.pushNamed(context, 'verify');
                                            },
                                            child: Text("Continue")),
                                      ),
                        ),
  ),

           
  ],
  
),
 
    );
  }
}