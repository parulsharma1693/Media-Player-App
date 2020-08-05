import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: camel_case_types
class video extends StatelessWidget {
  Widget build(BuildContext context) {
    
    mytoast() {
    Fluttertoast.showToast(
        msg: "This is working fine !!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blueAccent.shade100,
        textColor: Colors.white,
        fontSize: 16.0);
  }
    
    var myLeadingIcon = Icon(
      Icons.arrow_back_ios,
      color: Colors.white,
    );

    var myLeadingButton = IconButton(
      icon: myLeadingIcon, 
      onPressed:  () {
    Navigator.pop(context);
  }
  );

    var dotIcon = Icon(
      Icons.more_vert,
      color: Colors.white,
    );

    var dotIconButton = IconButton(icon: dotIcon, onPressed: mytoast());

    FlutterStatusbarcolor.setStatusBarColor(Colors.blue.shade900);

    var myAppBar = AppBar(
      backgroundColor: Colors.blueAccent.shade700,
      title: Text('Videos'),
      leading: myLeadingButton,
      actions: <Widget>[
        dotIconButton,
      ],
    );

    var videoPlayerController = VideoPlayerController.network(
        'https://theencryptedone.com/1.webm');

    var videoVideo = ChewieController(
      videoPlayerController: videoPlayerController,
      aspectRatio: 3 / 2,
      autoPlay: false,
      autoInitialize: true,
      looping: false,
    );

   

    var videoPlayerController2 = VideoPlayerController.network(
        'https://theencryptedone.com/2.webm');

    var videoVideo2 = ChewieController(
      videoPlayerController: videoPlayerController2,
      aspectRatio: 3 / 2,
      autoPlay: false,
      autoInitialize: true,
      looping: false,
    );

    var videoPlayerController3 = VideoPlayerController.network(
        'https://www.w3schools.com/html/mov_bbb.mp4');

    var videoVideo3 = ChewieController(
      videoPlayerController: videoPlayerController3,
      aspectRatio: 3 / 2,
      autoPlay: false,
      autoInitialize: true,
      looping: false,
    );  

    var myVideoBody = Container(
     width: double.infinity,
     height: double.infinity,
      decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://github.com/parulsharma1693/images/blob/master/marcela-laskoski-YrtFlrLo2DQ-unsplash.jpg?raw=true'),
              fit: BoxFit.cover,
            ),
          ),
     child: Column(
      children: <Widget>[
Container(
            margin: EdgeInsets.all(8),
            height: 180,
          alignment: Alignment.bottomCenter,
            child: Chewie(
          controller: videoVideo,
        )),
        
        Container(
            margin: EdgeInsets.all(8),
            height: 180,
          alignment: Alignment.bottomCenter,
            child: Chewie(
          controller: videoVideo2,
        )),
        Container(
            margin: EdgeInsets.all(8),
            height: 180,
          alignment: Alignment.bottomCenter,
            child: Chewie(
          controller: videoVideo3,
        )),   
         
      ],
     )
    );


    var home = Scaffold(
      appBar: myAppBar,
      body: myVideoBody,
    );

    var videoPage = MaterialApp(
      home: home,
      debugShowCheckedModeBanner: false,
    );
    return videoPage;
  }
}
