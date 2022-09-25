import 'dart:async';

import 'package:flutter/material.dart';
import 'package:julytest/loginpage.dart';

void main(){
  runApp( MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MySplash()));
}

class MySplash extends StatefulWidget{
  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {

  @override
  void initState(){
    Timer(Duration(seconds: 5), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => mylogin())));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage("assets/colorbg.png"))),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Image.asset("assets/iconse.png")
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Image(image: NetworkImage("https://www.iconsdb.com/icons/preview/white/instagram-5-xxl.png"),
                    width: 125, height: 125,),),
                Text("Version 2.0", style: TextStyle(fontSize: 30, color: Colors.white ),  ),
              ],

            ),
          ),
        ),

    );
  }
}
