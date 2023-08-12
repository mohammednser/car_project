import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'videoplayerwidget.dart';

class ItemCommunity extends StatelessWidget {
  const ItemCommunity({super.key, required this.image, required this.name, required this.description, required this.title});
  final String image;
  final String name;
  final String description;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(children: [
             CircleAvatar(
                        radius: 30,
                        backgroundImage: Image.asset(image).image,
                      ),
                      const SizedBox(width: 10,),
              Column(
                children: [
                   Text(name,style: const TextStyle(fontSize: 14,color: Color.fromARGB(255, 0, 0, 0)),),
                   const SizedBox(width: 5,),
                  Text(description,style: const TextStyle(fontSize: 12,color: Color(0xff8E8E93)),)

                ],
              ),
              const SizedBox(width: 30,),
              Image.asset('assets/icon/follow.svg'),
              
          ],),
       SizedBox(height: 30,),
        Text(title,style: const TextStyle(fontSize: 14,color: Color.fromARGB(255, 0, 0, 0)),),
      SizedBox(height: 15,),
         Container(
          child: VideoPlayerWidget(videoUrl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',),
         )
        ],
      ),
    );
  }
}