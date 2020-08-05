import 'music.dart';
import 'video.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

// ignore: camel_case_types
class myApp extends StatelessWidget{
  Widget build(BuildContext context) {

    
    FlutterStatusbarcolor.setStatusBarColor(Colors.blue.shade900);

mytoast1() {
    Fluttertoast.showToast(
        msg: "This is working fine !!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blueAccent.shade100,
        textColor: Colors.white,
        fontSize: 16.0);
  }

mytoast2() {
    Fluttertoast.showToast(
        msg: "This is working fine !!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blueAccent.shade100,
        textColor: Colors.white,
        fontSize: 16.0);
  }




  var myLeadingIconHome = Icon(
    Icons.dehaze,
    color: Colors.white,
  );

  var myLeadingButtonHome =
      IconButton(icon: myLeadingIconHome, onPressed: mytoast1);

  var dotIconHome = Icon(
    Icons.more_vert,
    color: Colors.white,
  );

  var dotIconButtonHome = IconButton(icon: dotIconHome, onPressed: mytoast2);

  var appBarHome = AppBar(
    title: Text("Media Player"),
    backgroundColor: Colors.blueAccent.shade700,
    leading: myLeadingButtonHome,
    actions: <Widget>[
      dotIconButtonHome,
    ],
  );

  var homeBody = Container(
      
      width: double.infinity,
      height: double.infinity,
       decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://github.com/parulsharma1693/images/blob/master/aditya-chinchure-ZhQCZjr9fHo-unsplash.jpg?raw=true'),
              fit: BoxFit.cover,
            ),
          ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              width: 200,
              height: 70,
              decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(5.0),
                 border: Border.all(
                     width: 0.5, color: Colors.deepPurpleAccent.shade100
                     )
                     ),
              child:  RaisedButton(
                 onPressed: () {
                 
                 Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) {
                      return video();
                    }),
                 );
                },
                  color: Colors.black54,
                   child: Text('Video',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),
                   )),
              ),
          
             Container(
              width: 200,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                 border: Border.all(
                     width: 0.5, color: Colors.deepPurpleAccent.shade100)),
              child: RaisedButton(
           onPressed: () {
                
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return music();
                    }),
                 );
                },
                color: Colors.black54,
                child: Text('Music',style:TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),
              )),
             ),
        ],
      ));

  var home = Scaffold(
    appBar: appBarHome,
    body: homeBody,
  );

  var homePage = MaterialApp(
    home: home,
    debugShowCheckedModeBanner: false,
    
  );
  return homePage;
  }
}