import 'package:flutter/material.dart';
import 'package:lfood/screens/home/home_screen.dart';
import 'package:lfood/widgets/custom_bottom_bar.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _index = 0;

  List<Widget> _screens = [
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "LFood",
      home: Scaffold(
        body: _screens[this._index],
        bottomNavigationBar: CustomBottomBar(
          onTabTap: (index){
            setState(() {
              this._index = index;
            });
          },
          index: this._index,
        ),
      ),
    );
  }

}