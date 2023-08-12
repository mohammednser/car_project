import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../module/imagestopdeal_class.dart';

import '../widgets/circleAvatar.dart';
import '../widgets/custom_searchbar.dart';
import '../widgets/custom_topdeal-item.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffF1F2F3),
     
       actions:[

        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Container(
               
              child: Container(
    padding: EdgeInsets.only(top: 10,right: 10),
             
                // The search area here
              decoration: BoxDecoration(color:Colors.transparent ),  
              //  backgroundColor: Colors.transparent,

             child: Container(
    
              width: MediaQuery.of(context).size.width*0.75,
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
            )),
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0,left: 18,right: 8),
                child: Container(
                height: 40,width: 40,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                         child:   Center(
                           child: Image.asset( 
                                  'assets/images/add.png', 
                                        width: 22,
                                        
                                 ),
                               ) ,),
              )
          ],
        )  
       ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:20.0, top:25,),
            child: SizedBox(
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children:[ 
                  Row(
                    children: const[
                      CustomCircleAvatar(image: 'assets/images/Ellipse1.png', name: 'Abbey',),
                      SizedBox(width: 15,),
                      CustomCircleAvatar(image: 'assets/images/Ellipse2.png', name: 'Aaron',),
                      SizedBox(width: 15,),
                      CustomCircleAvatar(image: 'assets/images/Ellipse3.png', name: 'Mabel',),
                      SizedBox(width: 15,),
                      CustomCircleAvatar(image: 'assets/images/Ellipse4.png', name: 'Palmer',),
                      SizedBox(width: 15,),
                      CustomCircleAvatar(image: 'assets/images/Ellipse5.png', name: 'Talbot',),
                       SizedBox(width: 15,),
                      CustomCircleAvatar(image: 'assets/images/Ellipse6.png', name: 'Walden',),
                       SizedBox(width: 15,),
                      CustomCircleAvatar(image: 'assets/images/Add new.png', name: 'Follow More',),
                    ],
                  ),
                     ]
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 20,top: 25),
            child: Row(children: [
              Text('Recommend',style: TextStyle(color: Color(0xff1DB854),fontWeight:FontWeight.w800)),
              IconButton(alignment: Alignment.centerLeft,
                icon: SvgPicture.asset('assets/icon/Polygon 1.svg'), onPressed: () {  },)
            ],),
          )
      ]
      ),  
    );
  }
}