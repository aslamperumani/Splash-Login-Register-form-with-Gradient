import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: botomsht(),
  ));
}

class botomsht extends StatelessWidget {
  void showBottomSheet(BuildContext ctx) {
    showModalBottomSheet(
        isScrollControlled: true,
        elevation: 5,
        isDismissible: false,
        backgroundColor: Colors.yellowAccent,
        context: ctx,
        builder: (ctx) => Padding(
              padding: const EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
                bottom: 15,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Number'),
                  ),
                  const TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(labelText: 'Name'),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(onPressed: () {}, child: const Text("Submit")),
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomSheet"),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add_circle),
          onPressed: () => showBottomSheet(context)),
    );
  }
}
