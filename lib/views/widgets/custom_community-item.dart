import 'package:car_project/module/image_buycarpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_player/video_player.dart';

import 'videoplayerwidget.dart';

class ItemCommunity extends StatefulWidget {
  const ItemCommunity({super.key, required this.image, required this.name, required this.description, required this.title, required this.imagevideo, required this.videoUrl});
  final String image ;
  final String imagevideo;
  final String name;
  final String description;
  final String title;
  final String videoUrl;
  @override
  State<ItemCommunity> createState() => _ItemCommunityState();
}

class _ItemCommunityState extends State<ItemCommunity> {
  @override
  Widget build(BuildContext context) {
   // String image;
    return Padding(

      padding: const EdgeInsets.only(left: 20, right: 20,bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             CircleAvatar(
                        radius: 30,
                        backgroundImage: Image.asset(widget.image).image,
                      ),
                      const SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(widget.name,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 0, 0)), textAlign: TextAlign.start),
                   const SizedBox(height: 6,),
                  Text(widget.description,style: const TextStyle(fontSize: 12,color: Color(0xff8E8E93)),)

                ],
              ),
              const SizedBox(width: 80,),
               Padding(
                 padding: const EdgeInsets.only(right: 0.0),
                 child: Image.asset('assets/images/follow.png'),
               ),
              
              
          ],),
       const SizedBox(height: 30,),
        Text(widget.title,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color.fromARGB(255, 0, 0, 0)),),
      const SizedBox(height: 15,),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 0.0),
           child: InkWell(
  //            onTap: () {
  //   // Wrap the play or pause in a call to `setState`. This ensures the
  //   // correct icon is shown.
  //   setState(() {
  //     // If the video is playing, pause it.
  //     if (_controller.value.isPlaying) {
  //       _controller.pause();
  //     } else {
  //       // If the video is paused, play it.
  //       _controller.play();
  //     }
  //   });
  // },
             child: Container(
              height: 188,
              width: 335,
              
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              
              image: DecorationImage(image: AssetImage(widget.imagevideo)),
              color: Colors.white
              ),
              child: const VideoPlayerWidget( videoUrl: '',),
                   
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.only(top:12.0),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:const [
               Padding(
                 padding:  EdgeInsets.only(left :18.0,top: 14),
                 child: Text('5 day' ),
               ),
              ],),
           Row(
            mainAxisAlignment:MainAxisAlignment.start ,
            children: [
            Padding(
              padding: const EdgeInsets.only(right:6.0),
              child: SvgPicture.asset('assets/icon/Group 826.svg'),
            ),
            const Text('${34}'),
            Padding(
              padding: const EdgeInsets.only(left: 20.0 ,right: 6),
              child: SvgPicture.asset('assets/icon/Group 817.svg'),
            ),
            const Text('${34}'),
            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 6),
              child:  SvgPicture.asset('assets/icon/Group 820.svg'),
            ),
             const Text('${20}',style: TextStyle(color: Color(0xff1DB854)),),
            ],
           )
           
           ],),
         )
        ],
      ),
    );
  }
}