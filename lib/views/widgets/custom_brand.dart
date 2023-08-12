import 'package:flutter/material.dart';

class Custombrand extends StatelessWidget {
  const Custombrand({super.key, required this.image, required this.name});
  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,width: 110,
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
              child: Center(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Image.asset(image),
                     Text(name,style: const TextStyle(color: Color(0xff8E8E93),fontSize: 14),),
              ],
              ),
              ),
              
    );
  }
}