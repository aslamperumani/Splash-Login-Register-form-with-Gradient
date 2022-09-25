import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myData());
}

class myData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('KMEA Research'),
            centerTitle: true),
        body: Padding(
          padding: const EdgeInsets.only(top:3),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DataTable(
                columns:
                [
                  DataColumn(label: Text("Course")),
                  DataColumn(label: Text("College")),
                  DataColumn(label: Text("Branch")),
                ],
                rows: <DataRow>[
                  DataRow(cells: [
                    DataCell(Text('B.Tech')),
                    DataCell(Text('MMMUT')),
                    DataCell(Text('CSE')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('B.Tech')),
                    DataCell(Text('HBTU')),
                    DataCell(Text('IT')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('B.Tech')),
                    DataCell(Text('IET')),
                    DataCell(Text('ME')),
                  ]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
