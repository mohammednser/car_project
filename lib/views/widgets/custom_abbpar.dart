import 'dart:math';

import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_svg/flutter_svg.dart';

import 'custom_searchbar.dart';

class CustomAppBar extends StatelessWidget {
   const CustomAppBar( {super.key, });
 // final title = 'Bangkok';
  // final dynamic icon;
  //final Color YOURCOLOR = Color(0xfff1f2f3);
  @override
  Widget build(BuildContext context) {
  
        return Container(

          padding: const EdgeInsets.only(right: 18,left: 0),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            const Text('Bangkok ',style: TextStyle(fontSize: 14, color: Color(0xff8E8E93))),
            
        Transform.rotate(
                          angle: 180 * pi / 360,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Color(0xff8E8E93),
                            ),
                            onPressed: () {},
                          ),
                        ),
            const CustomSearchBar(),
             
           Container(
              height: 40,width: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                       child:   Center(
                         child:badges.Badge(
                          stackFit: StackFit.passthrough,
                          position: badges.BadgePosition.topEnd(top: -15),
                               badgeContent: const Text('3',style: TextStyle(color: Colors.white , fontSize: 10), ),
                               child: SvgPicture.asset( 
                                'assets/icon/icon-notfication.svg', 
                                  //    colorFilter: ColorFilter.mode(YOURCOLOR, BlendMode.srcIn),
                                      color: const Color(0xff8E8E93),
                               ),
                             ) ,) 
                              ) 
                       ]),
             
          
       
           



        );
  }
}
