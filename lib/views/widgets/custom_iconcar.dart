import 'package:car_project/module/icon_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconNameCar extends StatelessWidget {
  const CustomIconNameCar({super.key, required this.icon, required this.name});
  final String icon;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
       height: 35,
       width: 95,
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
       child: Center(

         child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           SvgPicture.asset(icon) ,
           SizedBox(width: 5,),
          Text(name)
         ],),
       ),
    );
  }
}