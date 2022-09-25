import 'package:flutter/material.dart';

void main(){
  runApp(MySplash());
}

class MySplash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(50,205,50, 94),
        body: Container(
          decoration: BoxDecoration(image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/8/83/LCH_Gradient_Example.png"))),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/iconse.png"),
                Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/6/63/Icon_Bird_512x512.png"),width: 200, height: 200,),
                Text("Loading....", style: TextStyle(fontSize: 30, color: Colors.white,))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
