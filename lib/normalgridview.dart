import 'package:flutter/material.dart';
import 'framework.dart';

void main() {
  runApp(mynormalgrid());
}

class mynormalgrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black54,
            title: Text("Grid View"),
          ),
          body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 1, mainAxisSpacing: 1),
        children: List.generate(20, (index) {
          return  Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Container(child: Image.network('https://edge.uacdn.net/static/thumbnail/user/5ab9a34e410a4f9db12b9e52c1d05384.jpg?q=100&w=512', fit: BoxFit.contain)),
              );

        },),
      ),
      ),
    );
  }
}
