import 'dart:ffi';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:figma_to_flutter_design_anik_vai/Screen/comunication_screen.dart';
import 'package:figma_to_flutter_design_anik_vai/Screen/menu_screen.dart';
import 'package:figma_to_flutter_design_anik_vai/Screen/scaner_screen.dart';
import 'package:figma_to_flutter_design_anik_vai/Screen/statistics_screen.dart';
import 'package:figma_to_flutter_design_anik_vai/home_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {

  int _currentindex =0;

 Widget _pages(int index){
   if(index ==0){
    return HomePage();
   }
   else if (index ==1){
    return StatisticsScreen();
   }else if(index == 2){
    return ScannerScreen();
   }else if(index == 3){
    return ComunicationScreen();
   }else{
    return MenuScreen();
   }
   
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages(_currentindex),
     floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
     floatingActionButton: FloatingActionButton(
      child: Icon(Icons.center_focus_strong),
      backgroundColor: Colors.white,
      foregroundColor: Colors.purple,
      onPressed: (){}),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 9.0,
        clipBehavior: Clip.antiAlias,
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        child: Container(
          height: kBottomNavigationBarHeight*1.1,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 0.7
                )
              )
            ),
            child: BottomNavigationBar(
              
          currentIndex: _currentindex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.purple,
          showUnselectedLabels: true,
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "হোম"),
          BottomNavigationBarItem(icon: Icon(Icons.equalizer),label: "পরিসংখ্যান"),
          BottomNavigationBarItem(activeIcon: null,icon: Icon(null),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.voicemail),label: "যোগাযোগ"),
          BottomNavigationBarItem(icon: Icon(Icons.menu),label: "মেনু"),
        ],
        onTap: (int value){
          setState(() {
            _currentindex =value;
          });
        }
        ),
          ),
        )
      ),
    );
  }
}