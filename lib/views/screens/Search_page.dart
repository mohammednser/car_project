
import 'dart:ffi';

import 'package:car_project/module/image_search-SaleCar.dart';
import 'package:car_project/views/widgets/search-custom_salesCar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>with TickerProviderStateMixin {
   // TabController? _tabController;

  @override
  Widget build(BuildContext context) {
   // TabController _tabController;
   // _tabController =TabController(length: 2, vsync: this,  );
    return Scaffold(
            appBar: AppBar(
              elevation: 0,
            backgroundColor: const Color(0xffF1F2F3),
            leading: const Icon(Icons.close_rounded,color: Color(0xff8E8E93),size: 30,),
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
                        icon: const Icon(Icons.mic, color: Color(0xff8E8E93)),
                        onPressed: () {
                          /* Clear the search field */
                        },
                      ),
                      hintText: 'Search...',
                      border: InputBorder.none),
                ),
            
              ),
            )
            ),
              ),
            ],
           
            ),

            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:20.0,right: 20,top: 28,bottom: 28),
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const Text('History' ,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                    Row(
                      children: [
                              
                                SvgPicture.asset('assets/icon/删 除.svg',width: 15),
                                 const SizedBox(width: 8,),
                               const Text('Clear History',style: TextStyle(fontSize: 18,color: Color(0xff8E8E93),fontWeight:FontWeight.w400),)
                            ],),
                           
                  ],),
                ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,bottom: 40),
                    child: Row(
                      children: [
                          Container(
                                height: 40,width: 105,
                                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5)),
                                child: const Center(
                                child:  Text('3 Series Gt',style: TextStyle(fontSize: 14,color: Color(0xff000000),fontWeight:FontWeight.w400))
                                ),
                              ),
                              const SizedBox(width: 15,),
                              Container(
                                height: 40,width: 105,
                                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5)),
                                child: const Center(
                                child:  Text('Rapide E',style: TextStyle(fontSize: 14,color: Color(0xff000000),fontWeight:FontWeight.w400))
                                ),
                              ),
                              const SizedBox(width: 15,),
                              Container(
                                height: 40,width: 105,
                                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5)),
                                child: const Center(
                                child:  Text('3 Series Gt',style: TextStyle(fontSize: 14,color: Color(0xff000000),fontWeight:FontWeight.w400))
                                ),
                              ),
                      ],
                    ),
                  ),
                  /////////////////////////////
                 
           Padding(
             padding: const EdgeInsets.only(left: 20,right: 0),
             child: Row(
           //   mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Container(
                   child: GestureDetector(
                        child:  const Text(
                          "Sale",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff1DB854),
                             
                           
                              ),
                              
                        ),
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const SearchPage();
                          }));
                        },
                      ),
                        decoration: const BoxDecoration(
                          border: Border(
                               bottom: BorderSide( //                   <--- left side
                                 color: Color(0xff1DB854),
                                 width: 2.0,
                               ),),

                  ) ),
                    const SizedBox(width: 25,),
                    GestureDetector(
                      child: const Text(
                        "Hot",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff8E8E93)),
                      ),
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const SearchPage();
                        }));
                      },
                    ),

                        const SizedBox(width: 178,),
                     Padding(
            padding: const EdgeInsets.only(left: 0,right: 0),
            child: 
            Row(children: [
              const Text('Dec, 2020',style: TextStyle(color: Color(0xff8E8E93),fontWeight:FontWeight.w800)),
              IconButton(alignment: Alignment.centerLeft,
                icon: SvgPicture.asset('assets/icon/Polygon 1.svg',color: const Color(0xff8E8E93),), onPressed: () {  },)
            ],),
          ),
           
               ],
             ),
           ), 
           //////////////////////////////////////////////////
            Container(
              height: 500,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
              child:Column(
                children: const[
                   CustomSaleCar(id: 1, image: ImagesSaleCar.image1, name: 'Acura CDX', decoration: 'Honda/Hatchback/\$26,670', numberSell: 4535, color: Color(0xffFF3131)),
                     CustomSaleCar(id:2, image: ImagesSaleCar.image2, name: 'McLaren720s', decoration: 'McLaren/Luxury/\$460,000', numberSell: 4535, color: Color(0xffFB931A)),
                     CustomSaleCar(id: 3, image: ImagesSaleCar.image3, name: 'Jaguar XEL', decoration: 'Tata/Luxury/\$220,000', numberSell: 4535, color: Color(0xff006DEA)),
                       
                     CustomSaleCar(id: 4, image: ImagesSaleCar.image4, name: 'Audi RS6', decoration: 'Audi/Hatchback/\$48,800', numberSell: 4535, color: Color(0xff8E8E93)),
                       
                     CustomSaleCar(id: 5, image: ImagesSaleCar.image5, name: 'Lexus LC', decoration: 'Lexus/Luxury/\$560,660', numberSell: 4535, color: Color(0xff8E8E93)),
                     CustomSaleCar(id: 6, image: ImagesSaleCar.image6, name: 'Volvo S90', decoration: 'Volvo/Sedan/\$98,000', numberSell: 4535, color: Color(0xff8E8E93)),
                       
                ],
              ),
                   
              
                       ),
            ) 
            ], //main children
            ),//main
    );
  }
}

 /*
                  Row(
                    children: [
                      Container(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: TabBar(
                            controller: _tabController,
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.amber,
                            tabs: [
                               Tab(text:('Sales')),
                               Tab(text:('Hot')),
                            ]
                          
                          ),
                        ),
                      ),
                 Container(
                    child: Text('data'),
                 )

                    ],
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 400,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        Text('data'),
                        Text('data'),
                    ]),
                  )
                   */    