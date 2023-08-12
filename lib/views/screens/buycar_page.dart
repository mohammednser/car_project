import 'package:car_project/module/imagestopdeal_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../module/icon_class.dart';
import '../widgets/custom_abbpar.dart';
import '../widgets/custom_adders-more.dart';
import '../widgets/custom_appbar-buycar.dart';
import '../widgets/custom_iconcar.dart';
import '../widgets/custom_itembuycar.dart';
import '../widgets/custom_topdeal-item.dart';

class BuyCar extends StatefulWidget {
  const BuyCar({super.key});

  @override
  State<BuyCar> createState() => _BuyCarState();
}

class _BuyCarState extends State<BuyCar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
             appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffF1F2F3),
        actions: [
          CustomAppBar_pageBuyCar( ),
        ],
      ),
   
      body: 
        Padding(padding: EdgeInsets.all(16),
         
         child:      SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child:
                 Column(
                  
                  children: [
                 
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
         
                       CustomIconNameCar(icon: CustomIcons.sales, name: 'Sales',),
                       SizedBox(width: 15,),
                        CustomIconNameCar(icon: CustomIcons.hot, name: 'Hot',),
                         SizedBox(width: 15,),
                         CustomIconNameCar(icon: CustomIcons.featured, name: 'Featured',), 
                          SizedBox(width: 15,),
                         CustomIconNameCar(icon: CustomIcons.discount, name: 'Discount',),
                        
                    ],),
                    
                  ),
                  Container(

                    alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(top:30.0,left: 0,bottom: 20),
                      child: Text('Top deal' , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ,), ),
                    ),

                    ItemBuyCar(),
                     

                  
                ] // children
         
                ),
                
                
             ),
         
        )
    );
  }
}