import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


void main() {
  runApp(Homepage());
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        appBar: AppBar(
        title: Text("MainActivity"),
    ),
    body: FirstScreen(),
    ),);}}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.deepOrange,
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/iconse.png")),
              title: Text("Text 1"),
              trailing: Icon(Icons.exit_to_app),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://stickerly.pstatic.net/sticker_pack/nwkEm5fuu41RAku67F0h0Q/MK8T18/1/3726f55e-6116-4923-999d-97e97cf65bf3.png"),
            ),
            title: Text("camera 1"),
            trailing: Icon(Icons.exit_to_app),
          ),
          ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://stickerly.pstatic.net/sticker_pack/nwkEm5fuu41RAku67F0h0Q/MK8T18/1/8bee9ef9-7008-4c4f-94e9-38136b469cb7.png"),
              ),
              title: Text("edit_location 1"),
              trailing: Icon(Icons.exit_to_app),
              onTap: () {
                final snackBar = SnackBar(
                  content: Text('Hey! This is a SnackBar message.'),
                  duration: Duration(seconds: 5),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      // Some code to undo the change.
                    },
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }),

          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://static.toiimg.com/thumb/msid-65336414,width-800,height-600,resizemode-75,imgsize-9073,pt-32,y_pad-40/65336414.jpg"),
            ),
            title: Text("games 1"),
            trailing: Icon(Icons.exit_to_app),
            onTap: () {
              Fluttertoast.showToast(
                  msg: "Click once again to open 'games 1'",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.black54,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "http://trollmememalayalam.in/wp-content/uploads/2017/11/Orithiri-Uluppu-Shankaradi-Meme-Nadodikkattu-Malayalam-Movie-Plain-Memes.jpg"),
            ),
            title: Text("Partc 1"),
            trailing: Wrap(
              spacing: 10,
              children: [
                Icon(Icons.add_alert),
                Icon(Icons.account_box_rounded),
              ],
            ),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Hey! This is a SnackBar message.'),
              ),);
            },
          ),
        ],

      ),);
  }
}