import 'package:badges/src/badge.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key,  });


  // This controller will store the value of the search bar
  @override
  Widget build(BuildContext context) {
    return  Container(
    padding: EdgeInsets.only(top: 10,right: 10),
         
            // The search area here
          decoration: BoxDecoration(color:Colors.transparent ),  
          //  backgroundColor: Colors.transparent,

         child: Container(
    
          width: MediaQuery.of(context).size.width*0.50,
           height: MediaQuery.of(context).size.height*0.20,
          
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(25)),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search , color: Color(0xff8E8E93),),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear, color: Color(0xff8E8E93)),
                    onPressed: () {
                      /* Clear the search field */
                    },
                  ),
                  hintText: 'Search...',
                  border: InputBorder.none),
            ),
        
          ),
        ));
    
  
  }
}
   