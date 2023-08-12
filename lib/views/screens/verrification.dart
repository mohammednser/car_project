import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class Verrification extends StatefulWidget {
  const Verrification({super.key});

  @override
  State<Verrification> createState() => _VerrificationState();
}

class _VerrificationState extends State<Verrification> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyWith(decoration: BoxDecoration(
    border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    ),
  
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    return  Scaffold(

     
body:Column(
  
  children:  [
    IconButton(alignment: Alignment.topLeft,
    padding: EdgeInsets.only(left: 20,top: 61),

                icon:const Icon(Icons.arrow_back,),
                onPressed: (){},
            ),
            SizedBox(height: 50,),
            
              
           Text(
                " Verification",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                """we texted you a code to verify
your phone number.""",
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
                 SizedBox(height: 30,),
                  Pinput(
                length: 4,
                // defaultPinTheme: defaultPinTheme,
                // focusedPinTheme: focusedPinTheme,
                 submittedPinTheme: submittedPinTheme,

                showCursor: true,
                onCompleted: (pin) => print(pin),
              ),
              SizedBox(height: 50,),
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


   ]
   ),
   
   
   
   
   
   
    );
  }
}