import 'package:flutter/material.dart';
import 'package:internshala_search_page/bottom_navigation_bar.dart';
import 'package:internshala_search_page/search_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds:2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) =>BottomNavBar() ,));
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height,
      width: size.width,
      color: Colors.white,
      child: Center(
        child: Image.asset("assets/internshala.png",width: size.width * .6,),
      ),
    );
  }
}
