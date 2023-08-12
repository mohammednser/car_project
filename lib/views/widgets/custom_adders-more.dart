import 'package:flutter/material.dart';

class CustomaddersMore extends StatelessWidget {
  const CustomaddersMore({super.key, required this.name, });
  final String name;
  final String more = "More";
  //final String icon ;
  @override
  Widget build(BuildContext context) {
    return 
          Padding(
              padding: const EdgeInsets.symmetric(horizontal:0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(name , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ),),
                SizedBox(child: Row(
                   
                  children: [
                   Text(more,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400 , color: Color(0xff1DB854)),),
                   IconButton(onPressed: () {  }, 
                  icon: const Icon(Icons.arrow_back_ios_outlined,color: Color(0xff1DB854), textDirection:TextDirection.rtl,)
                  ),
            
                ],
                    ),
                  ),
                ],
              ),
           
    );
  }
}