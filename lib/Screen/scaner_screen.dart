import 'package:flutter/material.dart';

class ScannerScreen extends StatelessWidget {
  const ScannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Scanner",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.red),),
      ),
    );
  }
}