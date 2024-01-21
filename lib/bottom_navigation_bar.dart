import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internshala_search_page/search_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearchPage(),
       bottomNavigationBar:BottomNavigationBar(
         elevation: 10,
           type: BottomNavigationBarType.fixed,
           selectedItemColor: Colors.blue.shade800,
          unselectedItemColor: Colors.grey.shade800,
           showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12
          ),
          selectedIconTheme: IconThemeData(

          ),
          currentIndex: 1,
          items:[
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.house,),
              label: "Home"
            ),

            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.paperplane_fill,),
                label: "Internships"
            ),

            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.briefcase,),
                label: "Jobs"
            ),

            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_2,),
                label: "Clubs"
            ),

            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.tv,),
                label: "Courses"
            ),
          ]
      ),
    );
  }
}
