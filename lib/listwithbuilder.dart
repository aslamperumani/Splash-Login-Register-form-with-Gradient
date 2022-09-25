import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<String> phones = ["Dashamoolam", "Bhairavan", "Maakri", "Sed aakkalle mwonuse", "Aashaan"];
  List<String> imges = ["https://static.toiimg.com/thumb/msid-65336414,width-800,height-600,resizemode-75,imgsize-9073,pt-32,y_pad-40/65336414.jpg",
    "https://pictures.telegram-store.com/stickers/malayalamfaces/malayalamfaces_d183a4e783715f188d27557052e2304b.jpg",
  "https://stickerly.pstatic.net/sticker_pack/nwkEm5fuu41RAku67F0h0Q/WYI1Z8/1/7fa5c99f-d9d0-48c0-8cf6-c32344b8c77a.png",
  "https://stickerly.pstatic.net/sticker_pack/nwkEm5fuu41RAku67F0h0Q/VN7OGA/1/4288e348-bb8f-425f-ba0e-f3281263e390.png",
  "https://stickerly.pstatic.net/sticker_pack/nwkEm5fuu41RAku67F0h0Q/MK8T18/1/3726f55e-6116-4923-999d-97e97cf65bf3.png"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: Text("Home"),),
      body:
      ListView.separated(itemBuilder: (BuildContext, index){
        return Card(
        child: ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage(imges[index]),
          ),
        //leading: Image.asset(imges[index]),
          title: Text(phones[index]),
        ),
        );
    }, separatorBuilder: (BuildContext, index){
        return Divider(thickness: 0, color: Colors.transparent,);},
          itemCount: imges.length),


    //     (
    //       itemBuilder: (BuildContext, index){
    //     return Card(
    //     child: ListTile(
    //       leading: CircleAvatar(child:  Image.network(imges[index])),
    //     //leading: Image.asset(imges[index]),
    //       title: Text(phones[index]),
    //     ),
    //     );
    // },
    // itemCount: imges.length,),
    ),
    );
  }}