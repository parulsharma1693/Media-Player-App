import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:chewie_audio/chewie_audio.dart';
import 'package:video_player/video_player.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: camel_case_types
class music extends StatelessWidget {
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
    

var myLeadingIconMusic = Icon(
      Icons.arrow_back_ios,
       color: Colors.white,
    );

    var myLeadingButtonMusic =
        IconButton(icon: myLeadingIconMusic, onPressed:  () {
    Navigator.pop(context);
  });

    var dotIconMusic = Icon(
      Icons.more_vert,
      color: Colors.white,
    );

    var dotIconButtonMusic = IconButton(icon: dotIconMusic, onPressed: mytoast);

    FlutterStatusbarcolor.setStatusBarColor(Colors.blue.shade900);

    var myAppBarMusic = AppBar(
      backgroundColor: Colors.blueAccent.shade700,
      title: Text('Music'),
      leading: myLeadingButtonMusic,
      actions: <Widget>[
        dotIconButtonMusic,
      ],
    );

    var videoPlayerController = VideoPlayerController.network('https://theencryptedone.com/1.mp3');

    var audio = ChewieAudioController(
      videoPlayerController: videoPlayerController,
      autoPlay: false,
      looping: false,
      materialProgressColors: ChewieProgressColors(
        playedColor: Colors.red,
        handleColor: Colors.blue,
        backgroundColor: Colors.grey,
        bufferedColor: Colors.lightGreen,
      ),
      autoInitialize: true,
    );

    var videoPlayerController2 = VideoPlayerController.network('https://theencryptedone.com/2.mp3');

    var audio2 = ChewieAudioController(
      videoPlayerController: videoPlayerController2,
      autoPlay: false,
      looping: false,
      materialProgressColors: ChewieProgressColors(
        playedColor: Colors.red,
        handleColor: Colors.blue,
        backgroundColor: Colors.grey,
        bufferedColor: Colors.lightGreen,
      ),
      autoInitialize: true,
    );

var videoPlayerController3 = VideoPlayerController.network('https://theencryptedone.com/3.mp3');

    var audio3 = ChewieAudioController(
      videoPlayerController: videoPlayerController3,
      autoPlay: false,
      looping: false,
      materialProgressColors: ChewieProgressColors(
        playedColor: Colors.red,
        handleColor: Colors.blue,
        backgroundColor: Colors.grey,
        bufferedColor: Colors.lightGreen,
      ),
      autoInitialize: true,
    );
    var myMusicBody = Container(
        width: double.infinity,
        height: double.infinity,
         decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://github.com/parulsharma1693/images/blob/master/wallpaper2you_252575.jpg?raw=true'),
                  
              fit: BoxFit.cover,
            ),
          ),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              height: 50,
              child: ChewieAudio(
                controller: audio,
              ),
            ),
             Container(
              margin: EdgeInsets.all(10),
              height: 50,
              child: ChewieAudio(
                controller: audio2,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 50,
              child: ChewieAudio(
                controller: audio3,
              ),
            ),
          ],
        ));

    var home = Scaffold(
      appBar: myAppBarMusic,
      body: myMusicBody,
    );

    var musicPage = MaterialApp(
      home: home,
      debugShowCheckedModeBanner: false,
    );
    return musicPage;
  }
}
