import 'package:flutter/material.dart';

class CustomSaleCar extends StatelessWidget {
  const CustomSaleCar({super.key, required this.id, required this.image, required this.name, required this.decoration, required this.numberSell, required this.color});
  final int id;
  final Color color;
  final String image;
  final String name;
  final String decoration;
  final int numberSell;
  final String sell ='Sell';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:20.0,top: 20,right: 20),
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
        color: Colors.white
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             Padding(
               padding: const EdgeInsets.only(left:10.0),
               child: Text('$id. ',style: TextStyle(color: color,fontWeight: FontWeight.bold,fontSize: 20),),
             ),
             const SizedBox(width: 9,),
             Padding(
               padding: const EdgeInsets.only(left:0.0),
               child: Image(image:AssetImage(image)),
             ),
             const SizedBox(width: 15,),
             Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                   Text(name,style: const TextStyle(fontSize: 16,color: Colors.black,fontWeight:FontWeight.w800),),
                 const SizedBox(height: 8,),
                  Text(decoration,style:const TextStyle(fontSize: 12,color: Color(0xff8E8E93),fontWeight:FontWeight.w300),),

                    ],
                    ),
                       const SizedBox(width: 45,),

                     Padding(
                       padding: const EdgeInsets.only(right: 15.0),
                       child: Column(
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         crossAxisAlignment: CrossAxisAlignment.end,
                                         children: [
                                        Text('$numberSell',style: const TextStyle(fontSize: 16,color: Color(0xff1DB854),fontWeight:FontWeight.w800),),
                                      const SizedBox(height: 8,),
                                       Text(sell,style:const TextStyle(fontSize: 14,color: Color(0xff8E8E93),fontWeight:FontWeight.w300),),
                     
                                         ],
                                         ),
                     ),

        ],)
      ),
    );
  }
}