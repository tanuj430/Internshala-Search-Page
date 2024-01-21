import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internshala_search_page/api_call.dart';

class InternshipList{

  Widget buildInternshipList({required BuildContext context}) {
    return Flexible(
      child: Container(
        color: Colors.grey.shade100,
        height: MediaQuery.sizeOf(context).height * .80,
        child:FutureBuilder(
            future:ApiCall().getData(),
            builder: (context,snapshot){
              return ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context,index){
                    return Container(
                      margin: EdgeInsets.only(bottom: 6),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            top: BorderSide(width: 1, color: Colors.grey.shade200),
                            bottom: BorderSide(width: 1, color: Colors.grey.shade200),
                          )
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 18),
                      width: MediaQuery.sizeOf(context).width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.sizeOf(context).height * .035,
                            width: MediaQuery.sizeOf(context).width * .32,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.2,color: Colors.black12),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(CupertinoIcons.arrow_up_right,color: Colors.blue,size: 18,),
                                Text("Actively hiring",style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87,
                                ),),
                              ],
                            ),
                          ),
                          SizedBox(height: 13,),

                          Row(
                            children: [
                              Flexible(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Social Enterpreneurship",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    SizedBox(height: 3,),
                                    Text("Hamari Pahchan NGO",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * .18,
                                height: MediaQuery.sizeOf(context).height * .07,
                                child: Image.network("https://edupubnews.files.wordpress.com/2022/10/hamari-pehchan-2_1_d2vezp_1625291256.jpg?w=600"),
                              ),
                            ],
                          ),

                          SizedBox(height: 15,),

                          tags(icon: CupertinoIcons.house, text: "Work from home"),

                          SizedBox(height: 15,),

                          Row(
                            children: [
                              tags(icon: CupertinoIcons.play_circle, text:"Start Immediately"),
                              SizedBox(width: 30,),
                              tags(icon: CupertinoIcons.calendar, text:"1 Month"),
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              tags(icon: CupertinoIcons.rectangle_dock, text: "10% Revenue Generated"),

                              SizedBox(width: 5,),
                              Icon(CupertinoIcons.question_circle,size: 16,color:Colors.black54)
                            ],
                          ),
                          SizedBox(height: 15,),

                          Row(
                            children: [
                              hashTags(text: "internship with job offer"),
                              SizedBox(width: 10,),
                              hashTags(text: "Part time"),
                            ],
                          ),

                          SizedBox(height: 15,),

                          hashTags(text: "2 weeks ago",icon: CupertinoIcons.timer),

                          // to give thin grey line in the internship list
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 13),
                            width: MediaQuery.sizeOf(context).width,
                            height: 1,
                            color: Colors.grey.shade200,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              // Text view  for details option

                              Text("View details",style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                              ),),

                              SizedBox(width: 15,),
                              //container for Apply now button

                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 32,vertical: 10),
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Center(
                                  child: Text(
                                    "Apply now",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  });
            }),

      ),
    );



  }
  Widget tags({required var icon, required var text}){
    return Row(
      children: [
        Icon(icon,
          size: 14,
          color: Colors.black54,
        ),

        SizedBox(width: 5,),

        Text("${text}",style: TextStyle(
            color: Colors.grey.shade700,
            fontSize: 14
        ),)

      ],
    );
  }

  Widget hashTags({required var text, var icon}) {
    if (icon == null) {
      return Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          "${text}",
          style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w500,
            fontSize: 12
          ),
        ),
      );
    } else {
      return Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 12, color: Colors.black54,),
            SizedBox(width: 5,),
            Text(
              "${text}",
              style: TextStyle(
                  color: Colors.black54,
                fontSize: 12
              ),
            ),
          ],
        ),
      );
    }
  }

}
