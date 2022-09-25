import 'package:flutter/material.dart';
import 'package:julytest/home.dart';
import 'package:lottie/lottie.dart';

import 'framework.dart';

void main() {
  runApp(mylogin());
}

class mylogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body:SingleChildScrollView(

          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "LOGIN",
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Lottie.network("https://assets5.lottiefiles.com/packages/lf20_8dsbsGb2mf.json",fit: BoxFit.fill, width: 230 ),
                      // Lottie.asset("assets/image.png"),
                      
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "username", labelText: "Username", border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: TextField(
                          obscuringCharacter: "~",
                          obscureText: true,
                          decoration:
                              InputDecoration(
                                  hintText: "password",
                                  labelText: "Password",
                                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
                              ),
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen()));
                        },
                        child: const Text("Login"),
                        textColor: Colors.white70,
                        color: Colors.green,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 254.0),
                        child: SizedBox(
                          //height: 55,
                          //width: 100,
                          child: TextButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => mYhome()));
                          }, child: const Text("Register Here..")),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
