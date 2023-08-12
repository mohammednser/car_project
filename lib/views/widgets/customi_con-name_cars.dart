import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconCarNamState extends StatefulWidget {
  const CustomIconCarNamState({super.key, required this.icon, required this.name});
   final String name;
   final String icon;

  @override
  State<CustomIconCarNamState> createState() => _CustomIconCarNamStateState();
}

class _CustomIconCarNamStateState extends State<CustomIconCarNamState> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 85,
      padding: EdgeInsets.all(20),
     // margin: EdgeInsets.all(16),
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(18)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/icons/1.svg'),
          Text('data'),
          Text(
          widget.name,
          style:const TextStyle(fontFamily: 'Ropoto', fontSize: 14,color: Color(0xff1B1B1B),),
        ),
        
        ],
      ),
    );
  }
}