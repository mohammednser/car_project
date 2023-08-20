import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconProfile extends StatelessWidget {
  const CustomIconProfile({super.key, required this.icon, required this.name});
  final String icon;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,width: 80,
               decoration: BoxDecoration(borderRadius: 
               BorderRadius.circular(10),color: Color(0xffF1F2F3)),
              child: Center(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    SvgPicture.asset(icon),
                    const SizedBox(height: 10,),
                     Text(name,style: const TextStyle(color: Color(0xff8E8E93),fontSize: 14),),
              ],
              ),
              ),
    );
    
  }
}