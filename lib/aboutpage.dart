import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class aboutPage extends StatelessWidget{

  final String pageTextChanged;

  aboutPage(this.pageTextChanged);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(pageTextChanged),),
      body: Center(
        child: Text(pageTextChanged),
      ),
    );
  }


}