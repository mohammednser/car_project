import 'package:car_project/module/imagestopdeal_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../module/image_buycarpage.dart';

class ItemBuyCar extends StatelessWidget {
   ItemBuyCar({super.key, });
  final imagelist  = <Image> [
   Image.asset(ImagesBuyCar.car1),
   Image.asset(ImagesBuyCar.car2),
   Image.asset(ImagesBuyCar.car3),
   Image.asset(ImagesBuyCar.car4),
   Image.asset(ImagesBuyCar.car5),
   Image.asset(ImagesBuyCar.car6),
   ];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: .68,
      crossAxisCount: 2,
    //  scrollDirection: Axis.vertical,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
       for(int i =1; i < 10; i++)
        Container(
         // padding: EdgeInsets.only(left: 15, right: 15 , top:10),
          margin: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:  BorderRadius.circular(20)),
         child: Column(
          children: [

                       Row(
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    
                      Container(
                      height: 23,
                      width: 45,
                      decoration:const BoxDecoration(
                        color:Color.fromARGB(66, 29, 184, 83),
                          borderRadius: BorderRadius.only(
                               topLeft: Radius.circular(10),
                               bottomRight: Radius.circular(10)
                                
                          )
                         ),
                         child:const Center(
                           child: Text('Offer',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff1DB854),
                                  fontWeight: FontWeight.w500
                                ),
                           ),
                         ),
                    ),


                  ],
                          
                ),
              
                 Stack(
            children: [
               // for(int i = 1; i < imagelist.length; i++)

             Container(
                  height: MediaQuery.of(context,).size.height*0.14,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage((ImagesBuyCar.car1))))
                  ),
                
         
              
              Positioned(
                right: 10,
                top: -3,
                child: GestureDetector(onTap: () { },
                child:const Icon(Icons.favorite_border_outlined,),
                )
                ),
            ],
          ),
           Container(
            alignment: Alignment.topLeft,
             child: const Padding(
              padding: EdgeInsets.only(left: 16,),
               child: Text('Car Title',style:  TextStyle(fontSize: 18,fontWeight: FontWeight.w800,color: Colors.black ),),
             ),
           ),
            Container(
            alignment: Alignment.topLeft,
             child: const Padding(
              padding: EdgeInsets.only(left: 16,top:9),
               child: Text('Car Description',style:  TextStyle(fontSize: 12,fontWeight: FontWeight.w800, color: Color(0xff8E8E93)),),
             ),
           ),
            Container(
            alignment: Alignment.topLeft,
             child:  Padding(
              padding: const EdgeInsets.only(left: 16,top:40),
               child: Row(children: [
                        SvgPicture.asset('assets/icon/Exterior-color.svg') ,
                         const Padding(
                           padding: EdgeInsets.only(left: 45),
                           child: Text("\$${5555}",
                                                 //  "\$${price.toString()}",
                                               style: TextStyle(color: Color(0xff1DB854),fontSize: 14),
                                        ),
                         ),
               ],)
             ),
           ),
          ],
         ),
        )
      ],
      );
  }
}