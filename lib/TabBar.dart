import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:julytest/framework.dart';

void main(){
  runApp(MyTabApp());
}

class MyTabApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TabApp',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('TabApp'),
            bottom: const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.account_box_rounded),
                      text: "Acc",),

                  Tab(icon: Icon(Icons.home),
                    text: "home",),

                  Tab(icon: Icon(Icons.exit_to_app),
                    text: "Ext",),
                ]
          ),
        ),
              body: const TabBarView(
            children: [
              Center(
            child: Icon(Icons.account_box_rounded),
        ),
      Center(
          child: Icon(Icons.home),),

      Center(
          child: Icon(Icons.exit_to_app),
      ),
            ]),

        ),
    );
  }

}
