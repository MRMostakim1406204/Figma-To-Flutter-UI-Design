import 'package:flutter/material.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Statistics",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.greenAccent),),
      ),
    );
  }
}