import 'package:flutter/material.dart';

class ComunicationScreen extends StatelessWidget {
  const ComunicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Comunication",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.brown),),
      ),
    );
  }
}