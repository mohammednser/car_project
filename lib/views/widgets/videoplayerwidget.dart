import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  

  const VideoPlayerWidget({super.key, required this.videoUrl,  });
   final String videoUrl ;
   
  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState(videoUrl);
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _videoPlayerController;
  late Future<void> _initializeVideoPlayerFuture;
   final String videoUrl ;

  _VideoPlayerWidgetState(this.videoUrl);
  // 'https://firebasestorage.googleapis.com/v0/b/palliative-care-eac65.appspot.com/o/gTXDVuEth9XvBG4g1y78NCLx26i2%2FFiles%2F1687625595391?alt=media&token=f988ae1d-cf22-4757-a06a-5f097f7e32b8'
   @override
   void initState(){
    _videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(videoUrl));
    _initializeVideoPlayerFuture = _videoPlayerController.initialize().then((value) => {
      _videoPlayerController.play(),
      _videoPlayerController.setLooping(false),
      
      setState(() { },)
    });
    super.initState();
   }
     @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) { 
        if(snapshot.connectionState == ConnectionState.done){
          return AspectRatio(aspectRatio: _videoPlayerController.value.aspectRatio,
           child: VideoPlayer(_videoPlayerController),
          );
        }
        else{
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
       },

    );
  }
}