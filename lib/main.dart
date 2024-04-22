import 'package:figma_to_flutter_design_anik_vai/Home_Page.dart';
import 'package:figma_to_flutter_design_anik_vai/buttom_navigation.dart';
import 'package:figma_to_flutter_design_anik_vai/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
