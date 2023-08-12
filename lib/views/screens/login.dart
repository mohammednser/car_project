
import 'package:flutter/material.dart';



class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController countryController = TextEditingController();
  bool? check1 = false,check2 = true, check3 = false;
  @override
  void initState() {
    // TODO: implement initState
    countryController.text = "+1";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            

body:Column(
  
  children:  [
    IconButton(alignment: Alignment.topLeft,
    padding: EdgeInsets.only(left: 20,top: 61),

                icon:const Icon(Icons.cancel_sharp,),
                onPressed: (){},
            ),
            SizedBox(height: 90),
            Row(
                   
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
               
                
                 SizedBox(
                     width: 15,

                      child: TextField(
                        controller: countryController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                        
                      ),
                      
                    ),
                     SizedBox(width:250, child: TextField(),),
                      Text(
                      "|",
                      style: TextStyle(fontSize: 33, color: Colors.grey),
                    ),
              ]),
                   //  RadioMenuButton(value: value, groupValue: groupValue, onChanged: onChanged),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 70),
                  child:  
                  CheckboxListTile( //checkbox positioned at left
                    value: check3,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (bool? value) {  
                        setState(() {
                           check3 = value;
                        });
                    },
                    title: Text("Agree to our Terms and Data Policy. "),
                  ),
                ),

                     Padding(
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

                     SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                           SizedBox(width: 50,child: TextField()),
                           Text("Login with", ),
                            SizedBox(width: 50,child: TextField()),
                        ] ,
                       ),
                    Container(
                     // padding: EdgeInsets.all(30),
                      child:FloatingActionButton(onPressed: () {},
                         
                           child: Expanded(
                             child: Row(
                              children: [
                                Image.asset('assets/images/icon-facebook.png'),
                                Image.asset('assets/images/icon-google.png'),
                                Image.asset('assets/images/icon-twitter.png'),
                              ],
                             ),
                           ),
                         ),
                        
                      ),
                   //   child:
                  ]  ),
                        

             

     
             );
  }
}