import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:julytest/framework.dart';

import 'framework.dart';

void main() {
  runApp(mylogin());
}

class mylogin extends StatelessWidget {
  final fform = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Login"),
          ),
          body: Form(
            key: fform,
            child: ListView(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(30),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "email",
                        labelText: "email",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    validator: (email) {
                      if (email == null ||
                          !(email.contains("@")) ||
                          email.isEmpty) {
                        return "Enter valid mail ID";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(30),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Passcode",
                        labelText: "Passcode",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    validator: (pscd) {
                      if (pscd == null || pscd.isEmpty || pscd.length >= 6) {
                        return "Passcode must contains less than 6 characters";
                      }
                      return null;
                    },
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    final isValid = fform.currentState!.validate();
                    if (isValid) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => mylogin()));
                    } else {
                      Fluttertoast.showToast(
                          msg: "Machaane Passcode onnoode nokkikke",
                          gravity: ToastGravity.BOTTOM);
                    }
                  },
                  child: const Text("Login"),
                  textColor: Colors.white70,
                  color: Colors.green,
                ),
              ],
            ),
          )),
    );
  }
}
