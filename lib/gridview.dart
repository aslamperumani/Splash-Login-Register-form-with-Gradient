import 'package:flutter/material.dart';
import 'framework.dart';

void main() {
  runApp(mygrid());
}

class mygrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Grid View"),
        ),
        body: GridView.count(crossAxisCount: 4,
        crossAxisSpacing: 10,
        children: [

        ],)


      ),
    );
  }
}
