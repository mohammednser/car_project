import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class TopDealItem extends StatelessWidget {
  const TopDealItem({super.key, required this.image, required this.name, required this.price});
   final String image;
   final String name;
   final double price;
  @override
  Widget build(BuildContext context) {
      final screenWidth = MediaQuery.of(context).size.width;
      final screenHeight = MediaQuery.of(context).size.height;
     
    return Container(
      height: 225,
     //
     //
       width: 150,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
        color: Colors.white
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.15,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(image))
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: GestureDetector(onTap: () { },
                child: const Icon(Icons.favorite_border_outlined,),
                )
                )
            ],
          ),
          Padding(padding: const EdgeInsets.only(left:16.0), child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                name,
              style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
             ),
             const SizedBox(height: 5,),
             Text("\$${price.toString()}",
             style: const TextStyle(color: Color(0xff1DB854),fontSize: 14),
               ),
               const SizedBox(height:15 ,),
               Row(
                children: [
                 SvgPicture.asset('assets/icon/Exterior-color.svg') ,
                  const SizedBox(width: 40,),
                 IconButton(onPressed: (){}, icon:  SvgPicture.asset('assets/icon/View-details.svg')),   
                ],
               ),
              // ChoiceChip(label: label, selected: selected)
         //  SizedBox(height: 10,)
           ],
            ),
            )
        // IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/like.svg')),
        // Image.asset(image),
        // Text(
        //   name,
        //  style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold),

        // ),

        // Text("\$${price.toString()}",
        //  style: const TextStyle(color: Color(0xff1DB854),fontSize: 14),
        // ),

        // IconButton(onPressed: (){}, 
        // icon: const Icon(Icons.arrow_forward_sharp,color: Color(0xff1DB854),))
        

      ]),
    );
  }
}