import 'package:flutter/material.dart';
import 'package:internshala_search_page/internship_list.dart';
import 'package:internshala_search_page/search_page.dart';
import 'package:internshala_search_page/splash_screen.dart';

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
      home: SplashScreen(),
    );
  }
}
