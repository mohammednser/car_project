import 'package:car_project/views/screens/Search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/custom_brand.dart';
import '../widgets/profile-number_follow.dart';

class SearchBrandPage extends StatefulWidget {
  const SearchBrandPage({super.key});

  @override
  State<SearchBrandPage> createState() => _SearchBrandPageState();
}

class _SearchBrandPageState extends State<SearchBrandPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
                backgroundColor: Colors.transparent,
                leading: IconButton(
           icon: SvgPicture.asset('assets/icon/backtrack.svg'),
           onPressed: () => Navigator.of(context).pop(const SearchPage()),
                ),
           actions: [
              Container(
               
              child: Container(
            padding: const EdgeInsets.only(top: 10,right: 10),
             
                // The search area here
              decoration: const BoxDecoration(color:Colors.transparent ),  
              //  backgroundColor: Colors.transparent,

             child: Container(
    
              width: MediaQuery.of(context).size.width*0.83,
               height: MediaQuery.of(context).size.height*0.2,
              
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,color: Color(0xff8E8E93)),
                      suffixIcon: IconButton(
                        icon: SvgPicture.asset('assets/icon/close.svg',width: 20,), 
                        onPressed: () {
                          /* Clear the search field */
                        },
                      ),
                      hintText: 'Mazda',
                      border: InputBorder.none),
                ),
            
              ),
            )
            ),
              ),
            ],
        ),
        /////////////////////
        body: 
          Column(children: [
                  Padding(
            padding: const EdgeInsets.only(top: 30,left: 20),
            child: Row(children: [
              Container(
                height: 70,width: 70,
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                child: Center(child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Image.asset('assets/images/mazda-logo.png'),
                ],
                ),
                ),
                
              ),

              const SizedBox(width: 15,),
             Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                   Text('Mazda',style: const TextStyle(fontSize: 18,color: Colors.black,fontWeight:FontWeight.w800),),
                 const SizedBox(height: 8,),
                  Row(
                    children: [
                      Text('Brand introduction  ',style:const TextStyle(fontSize: 14,color: Color(0xff8E8E93),fontWeight:FontWeight.w400),),
                         Icon(Icons.arrow_forward_ios_rounded,size: 12,color: Color(0xff8E8E93))

                    ],
                  ),

                    ],
                    ),
                    SizedBox(width: 90,),
                     Padding(
                       padding: const EdgeInsets.only(right: 15.0),
                       child: Column(
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         crossAxisAlignment: CrossAxisAlignment.center,
                                         children:const [
                                        Text('16',style: const TextStyle(fontSize: 20,color: Color(0xff1DB854),fontWeight:FontWeight.w800),),
                                      const SizedBox(height: 8,),
                                       Text('Available',style:const TextStyle(fontSize: 16,color: Color(0xff8E8E93),fontWeight:FontWeight.w400),),
                     
                                         ],
                                         ),
                     ),
            ],)

          ),
          SizedBox(height: 30,),//////////
                   Expanded(
                     child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius:BorderRadius.vertical(top: Radius.circular(25)),
                        color: Colors.white
                        ),
                        child: Column(
                          children: [
                            Row(children: [
                               TextButton(onPressed: (){},
                                child:const Text('Hot', style: TextStyle(
                                fontSize: 25,
                                 fontWeight: FontWeight.w800,
                               color: Color(0xff1DB854),) )),
                                TextButton(onPressed: (){},
                                child:const Text('Sedan',
                                 style: TextStyle(
                                     fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff8E8E93)), )
                               ),
                                TextButton(onPressed: (){},
                                child:const Text('SUV',
                                 style: TextStyle(
                                     fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff8E8E93)), )
                               ),
                                TextButton(onPressed: (){},
                                child:const Text('Luxury',
                                 style: TextStyle(
                                     fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff8E8E93)), )
                               )
                            ],)
                        ]) ,      
                     ),
                   )

          ],//,main children
          )//main
         
        
    );
  }
}