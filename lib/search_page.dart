import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'internship_list.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height * .18,
              decoration: BoxDecoration(
                color: Colors.white,
                border:Border(
                  bottom: BorderSide(width: 2, color: Colors.grey.shade200),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height:size.height * .02,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Icon(CupertinoIcons.line_horizontal_3,
                              size: 25,),
                            SizedBox(width: 5,),
                            Text("Internships",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(CupertinoIcons.search,size: 20,),
                            SizedBox(width: 20,),
                            Icon(CupertinoIcons.bookmark,size: 20,),
                            SizedBox(width: 20,),
                            Icon(CupertinoIcons.app_badge,size: 20,),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * .04,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 1,
                          color: Colors.blue
                      ),
                    ),
                    height: MediaQuery.sizeOf(context).height * .04,
                    width: MediaQuery.sizeOf(context).width * .2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(CupertinoIcons.color_filter,size: 15,color: Colors.blue,),
                        Text("Filters",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),)
                      ],
                    ),

                  ),
                  SizedBox(height: size.height * .01,),

                  Text(
                    "6454 total internships",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ) ,
            ),
            InternshipList().buildInternshipList(context: context),
          ],
        ),
      ),
    );
  }
}
