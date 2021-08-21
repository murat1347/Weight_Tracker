import 'package:flutter/material.dart';
import 'package:weight_tracker/views/graph.dart';
import 'package:get/get.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'history.dart';
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentTab=0;
  Widget _currentSreen=GraphScreen();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TRACK YOUR WEIGHT"),
      ),
      body: _currentSreen,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        height: Get.height/12,
        activeColor: Colors.white,
        inactiveColor: Colors.red,
        backgroundColor: Colors.purple,gapLocation: GapLocation.center,
        icons: [Icons.show_chart,Icons.history],
        iconSize:30,
        activeIndex: _currentTab,onTap: (int){
          setState(() {
            _currentTab=int;
            _currentSreen= (int==0)?GraphScreen():HistoryScreen();
          });

      },),
    );
  }
}
