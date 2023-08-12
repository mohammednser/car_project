import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({super.key, required this.image, required this.name});
  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    return 
       Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: Image.asset(image).image,
                  ),
                  SizedBox(height: 5,),
                  Text(name,style: TextStyle(fontSize: 14,color: Color(0xff8E8E93)),)
                ],
              );
    
  }
}