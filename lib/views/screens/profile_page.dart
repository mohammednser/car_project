import 'package:car_project/views/screens/community_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:badges/badges.dart' as badges;

import '../../module/images_Carbrand.dart';
import '../widgets/circleAvatar.dart';
import '../widgets/custom_brand.dart';
import '../widgets/profile-custom_icon.dart';
import '../widgets/profile-number_follow.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
              
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                leading: IconButton(
           icon: SvgPicture.asset('assets/icon/backtrack.svg'),
           onPressed: () => Navigator.of(context).pop(const CommunityPage()),
        ),

        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
          
            children: [
             // Padding(padding: EdgeInsets.only(right : 18)),
          Padding(
            padding: const EdgeInsets.only( right:10.0),
            child: Container(
                height: 35,width: 35,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                         child:   Center(
                           child:badges.Badge(
                            stackFit: StackFit.passthrough,
                            position: badges.BadgePosition.topEnd(top: -15),
                                 badgeContent: const Text('3',style: TextStyle(color: Colors.white , fontSize: 10), ),
                                 child: SvgPicture.asset( 
                                  'assets/icon/icon-notfication.svg', 
                                        color: const Color(0xff8E8E93),
                                 ),
                               ) ,) 
                                ),
          ) ,
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Container(
                                               height: 35,width: 35,
                                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                                                     child:   Center(
                                 child: SvgPicture.asset( 
                                  'assets/icon/icon-setting.svg', 
                                        color: const Color(0xff8E8E93),
                                 ),
                                ) 
                                ),
                              ) ,
          ],),
         
                              
        ],
              ),
              body: 
              Column(
                children: [
                  Container(
                 child:Row(children: [
                    const Padding(
                       padding: EdgeInsets.only(left:20.0,top: 15,right: 20),
                       child: CircleAvatar(
                                backgroundImage: AssetImage('assets/images/Ellipse 66.png'),
                                    radius: 45,
                                       ),
                     ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:const [
                   Text('Sebastian ',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight:FontWeight.w800),),
                 SizedBox(height: 8,),
                  Text('BMW 3 Series/7 Series owner ',style: TextStyle(fontSize: 14,color: Color(0xff8E8E93),fontWeight:FontWeight.w500),),

                    ],
                    ),

                ]
                )
                  ),
                  //////////////////////
                  const SizedBox(height: 18,),

                  Container(
                    padding: const EdgeInsets.only(left: 25,),
                    alignment: Alignment.topLeft,
                   child:  Row(
                     children: [ 
                  GestureDetector(
                        //dragStartBehavior:DragStartBehavior.down,
                        child:
                         Container(
                         
                          decoration: BoxDecoration(
                            
                            border: Border.all(
                              color: const Color(0xff1DB854),
                                     strokeAlign: BorderSide.strokeAlignCenter,
                               
                            ),
                            
                             borderRadius: BorderRadius.circular(25),
                            ),
                            height: 30,width: 85,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Row(
                                children:const [
                                  Icon(Icons.add,color: Color(0xff1DB854),size: 20,),
                                  Text('Follow',style: TextStyle(color: Color(0xff1DB854),fontSize: 16),)
                                  
                                ],
                                 ),
                              ),
                            ),
                       ),
                  ),
                    

                      
                    Row(
                      children:const [
                     Padding(
                       padding: EdgeInsets.only(left: 35.0,right: 40),
                       child: CustomNumberFollow(number: 47, text: 'Following',),
                     ),
                    CustomNumberFollow(number: 8541, text: 'Follower',),
                    Padding(
                      padding: EdgeInsets.only(left: 40.0),
                      child: CustomNumberFollow(number: 57, text: 'Posts',),
                    ),
                  ],)

                 ]
                 ),
                  ),
                   
                   const Padding(padding: EdgeInsets.only(top: 35)),
                   Container(
                    height: MediaQuery.of(context).size.height/1.52,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius:BorderRadius.vertical(top: Radius.circular(25)),
                      color: Colors.white
                      ),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(children: [
                            
                              SvgPicture.asset('assets/icon/icon-common.svg',width: 18),
                               const SizedBox(width: 8,),
                             const Text('Common Functions',style: TextStyle(fontSize: 18,color: Color(0xff8E8E93),fontWeight:FontWeight.w400),)
                          ],),
                        ),
                         Padding(
                           padding: const EdgeInsets.only(left: 20),
                           child: Center(
                             child: Row(
                               children: const [
                              CustomIconProfile(icon: 'assets/icon/Path 1525.svg', name: 'My Order',),
                                 SizedBox(width: 15, ),
                              CustomIconProfile(icon: 'assets/icon/icon-maintain.svg', name: 'My Order',),
                                 SizedBox(  width: 15,),
                              CustomIconProfile(icon: 'assets/icon/icon-auto parts.svg', name: 'My Order',),
                                 SizedBox( width: 15, ),
                              CustomIconProfile(icon: 'assets/icon/driver.svg', name: 'My Order',),
                               ],
                             ),
                           ),
                         ),

                      Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(children: [
                            
                              SvgPicture.asset('assets/icon/icon-car.svg',width: 18),
                               const SizedBox(width: 8,),
                             const Text('My Car',style: TextStyle(fontSize: 18,color: Color(0xff8E8E93),fontWeight:FontWeight.w400),)
                          ],),
                        ),
                     ListTile(
                      leading:const Text('Owned/Driven',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                      trailing: IconButton(icon: const Icon(Icons.arrow_forward_ios_rounded),onPressed: (){},)
                      ,),
                         const Padding(
                           padding: EdgeInsets.symmetric(horizontal:  20.0),
                           child: Divider(
                               color: Color(0xffD1D1D6),
                          // height: 2,
                               thickness: 2,
                              ),
                         ),
                         ListTile(
                      leading:const Text('Like List',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                      trailing: IconButton(icon: const Icon(Icons.arrow_forward_ios_rounded),onPressed: (){},)
                      ,),
                    
                           Padding(
                             padding: const EdgeInsets.only( left:20.0,top: 20,bottom: 12),
                             child: Row(children: [
                              
                                SvgPicture.asset('assets/icon/Rectangle 491.svg',width: 18),
                                 const SizedBox(width: 8,),
                               const Text('Others',style: TextStyle(fontSize: 18,color: Color(0xff8E8E93),fontWeight:FontWeight.w400),)
                                  ],),
                        
                           ),
                             ListTile(
                      leading:const Text('Feedback',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                      trailing: IconButton(icon: const Icon(Icons.arrow_forward_ios_rounded),onPressed: (){},)
                      ,),
                       const Padding(
                           padding: EdgeInsets.symmetric(horizontal:  20.0),
                           child: Divider(
                               color: Color(0xffD1D1D6),
                          // height: 2,
                               thickness: 2,
                              ),
                         ),
                          Padding(
                           padding: const EdgeInsets.only(left: 20, top:8.0),
                           child: Container(
                            alignment: Alignment.topLeft,
                             child: const Text('Log Out',style: 
                             TextStyle(color: Color(0xff1DB854),fontSize: 18,fontWeight: FontWeight.w500),
                             textAlign: TextAlign.start,
                              ),
                           ),
                         )
                      ],
                      ),
                   ),


                  ]
                  ),
                
    );
  }
}