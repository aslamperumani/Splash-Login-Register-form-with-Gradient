import 'package:flutter/material.dart';

void main(){
  runApp(BasicBottomNavBar());
}

class BasicBottomNavBar extends StatefulWidget {
  const BasicBottomNavBar({Key? key}) : super(key: key);


  @override
  _BasicBottomNavBarState createState() => _BasicBottomNavBarState();
}

class _BasicBottomNavBarState extends State<BasicBottomNavBar> {
int _selectedIndex = 1;

static const List<Widget> _pages = <Widget>[
  Icon(
    Icons.call,
    size: 200,
  ),
  Icon(
    Icons.camera_front_sharp,
    size: 200,
  ),

];

void _onItemTapped(int  index){
  setState(() {
    _selectedIndex = index;
  });
}

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MyApp"),
        ),
        body: Center(
          child: _pages.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white54,
          items:
            const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_box_rounded),
                  backgroundColor: Colors.deepOrangeAccent,
                label: 'Menu',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.camera),
                label: 'Camera',
              ),
            ],
             currentIndex: _selectedIndex,
             backgroundColor: Colors.lightBlueAccent,
             onTap: _onItemTapped,

      ),
      )
    );
  }
  }
