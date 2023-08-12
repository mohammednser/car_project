import 'dart:math';

import 'package:car_project/module/imagestopdeal_class.dart';
import 'package:car_project/views/widgets/custom_abbpar.dart';
import 'package:car_project/views/widgets/custom_brand.dart';
import 'package:car_project/views/widgets/custom_carusleslider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:car_project/module/imagestopdeal_class.dart';
import '../../module/icon_class.dart';
import '../../module/images_Carbrand.dart';
import '../widgets/custom_adders-more.dart';
import '../widgets/custom_iconcar.dart';
import '../widgets/custom_searchbar.dart';
import '../widgets/custom_topdeal-item.dart';
import 'package:badges/badges.dart' as badges;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffF1F2F3),
        actions: [
          CustomAppBar(),
        ],
      ),

  

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(children: [
            const SizedBox(
              height: 25,
            ),
            const CustomCarusleSlider(),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 50,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    CustomIconNameCar(
                      icon: CustomIcons.icon1,
                      name: 'Giulia',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomIconNameCar(
                      icon: CustomIcons.icon2,
                      name: "GT-R",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomIconNameCar(
                      icon: CustomIcons.icon3,
                      name: "Elmiraj",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomIconNameCar(
                      icon: CustomIcons.icon4,
                      name: "RX-VISION",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomIconNameCar(
                      icon: CustomIcons.icon4,
                      name: "RX-VISION",
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomaddersMore(name: 'Top deal'),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    TopDealItem(
                        image: CustomImages.image1,
                        name: 'Lamborghini',
                        price: 67.600),
                    SizedBox(
                      width: 15,
                    ),
                    TopDealItem(
                        image: CustomImages.image2,
                        name: 'Rapide E',
                        price: 330.300),
                    SizedBox(
                      width: 15,
                    ),
                    TopDealItem(
                        image: CustomImages.image3,
                        name: 'Lamborghini',
                        price: 670.300),
                    SizedBox(
                      width: 15,
                    ),
                    TopDealItem(
                        image: CustomImages.image3,
                        name: 'Lamborghini',
                        price: 670.300),
                    SizedBox(
                      width: 15,
                    ),
                    TopDealItem(
                        image: CustomImages.image3,
                        name: 'Lamborghini',
                        price: 670.300),
                    SizedBox(
                      width: 15,
                    ),
                    TopDealItem(
                        image: CustomImages.image3,
                        name: 'Lamborghini',
                        price: 670.300),
                    SizedBox(
                      width: 15,
                    ),
                    TopDealItem(
                        image: CustomImages.image3,
                        name: 'Lamborghini',
                        price: 670.300),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomaddersMore(
              name: 'Popular brands',
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Center(
                child: Row(
                  children: const [
                    Custombrand(image: ImagesCarBrand.toyota, name: 'Toyota'),
                    SizedBox(
                      width: 15,
                    ),
                    Custombrand(
                        image: ImagesCarBrand.mercedes, name: 'Mercedes'),
                    SizedBox(
                      width: 15,
                    ),
                    Custombrand(image: ImagesCarBrand.honda, name: 'Honda'),
                    SizedBox(
                      width: 15,
                    ),
                    Custombrand(image: ImagesCarBrand.toyota, name: 'Toyota'),
                  ],
                ),
              ),
            )),
            const SizedBox(
              height: 20,
            ),
            const CustomaddersMore(name: 'Upcoming'),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    TopDealItem(
                        image: CustomImages.Upcomingcarred,
                        name: 'Mazda Enclave',
                        price: 42.704),
                    SizedBox(
                      width: 15,
                    ),
                    TopDealItem(
                        image: CustomImages.Upcomingcarblue,
                        name: 'Cadillac-CT5 ',
                        price: 330.300),
                    SizedBox(
                      width: 15,
                    ),
                    TopDealItem(
                        image: CustomImages.Upcomingcaryallow,
                        name: 'Lamborghini',
                        price: 670.300),
                  ],
                ),
              ),
            ),
            const CustomaddersMore(name: 'News'),
          ]),
        ),
      ),
    );
  }
}
