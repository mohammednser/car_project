
import 'package:car_project/views/screens/buycar_page.dart';
import 'package:flutter/material.dart';

import 'views/screens/community_page.dart';
import 'views/screens/home_page.dart';
import 'views/screens/secreen.dart';
import 'views/widgets/custom_itembuycar.dart';

void main() {
  runApp( const MainApp());
}

class MainApp extends StatelessWidget {
   const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
               scaffoldBackgroundColor:Color(0xffF1F2F3),

            ),
      home:   const CommunityPage(),
      
    );
  }
}
