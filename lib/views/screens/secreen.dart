import 'package:car_project/views/screens/buycar_page.dart';
import 'package:car_project/views/screens/home_page.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_carusleslider.dart';
import 'community_page.dart';
import 'profile_page.dart';
class Secrren extends StatefulWidget {
  const  Secrren({super.key});

  

  @override
  State<Secrren> createState() => _SecrrenState();

  
}

class _SecrrenState extends State<Secrren> {

int _selectedIndex = 0;
static const List _widgetOptions =  [
    HomePage(),
    BuyCar(),
    CommunityPage(),
    ProfilePage()

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar:Container(
        height: 70 ,

        width: double.infinity ,
        color: Color(0xffF1F2F3),
        child: BottomNavigationBar(
          type:BottomNavigationBarType.fixed,
       //   fixedColor: Colors.green,
          items:const [
            BottomNavigationBarItem(
              icon:Icon(Icons.home,color: Colors.green,),
              label:'Home',
               
              ),
               BottomNavigationBarItem(
              icon:Icon(Icons.car_rental),
              label:"Buy Car",
                                                      
               //backgroundColor: Colors.blue,
              ),
               BottomNavigationBarItem(
              icon:Icon(Icons.comment),
              label:"Community",
              // backgroundColor: Colors.blue,
              ),
               BottomNavigationBarItem(
              icon:Icon(Icons.person),
              label:"Profile",
              // backgroundColor: Colors.blue,
              ),
          ],
      currentIndex: _selectedIndex,
        //selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        ),
      )
  );
  
  }
}