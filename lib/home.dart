import 'package:flutter/material.dart';
import 'package:julytest/loginpage.dart';

class mYhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                Colors.yellowAccent,
                Colors.red,
              ])),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Register Form",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.text_format_outlined),
                        hintText: "Enter your Name",
                        labelText: "Enter your Name",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.alternate_email),
                        hintText: "email",
                        labelText: "Enter your Email ID",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.drive_file_rename_outline),
                        hintText: "username",
                        labelText: "Username",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    obscuringCharacter: "*",
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.security),
                        hintText: "password",
                        labelText: "Password",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: const Text("Register"),
                  textColor: Colors.white70,
                  color: Colors.green,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 254.0),
                  child: SizedBox(
                    //height: 55,
                    //width: 100,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => mylogin()));
                        },
                        child: const Text("Already Registered? Login Here")),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
