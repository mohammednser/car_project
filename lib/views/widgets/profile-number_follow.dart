import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNumberFollow extends StatelessWidget {
  const CustomNumberFollow( {super.key,required  this.number, required this.text});
  final int? number;
  final String text;
  @override
  Widget build(BuildContext context) {
    return 
       Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Text('${number}',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight:FontWeight.w800),),

                  SizedBox(height: 5,),
                  Text(text,style: TextStyle(fontSize: 14,color: Color(0xff8E8E93)),)
                ],
              );
    
  }
}