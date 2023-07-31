import 'package:flutter/material.dart';

import 'constant.dart';

class SelectDateTime extends StatefulWidget {
   SelectDateTime({super.key});

  @override
  State<SelectDateTime> createState() => _SelectDateTimeState();
}

class _SelectDateTimeState extends State<SelectDateTime> {

  final List<Map> timeSchedule =
  List.generate(12, (index) => {"id": index, "name": "Product $index"})
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.SecondColor,
        title: Center(child: Text("Select Date & Time")),
      ),
      body: Container(
        color: Constant.SecondColor,
        child: Stack(
          children:[
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Constant.PRIMARYCOLOR,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),

            ),
            
            //Second Container
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                margin: EdgeInsets.only(top: 150),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Time",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                      Row(
                        children:[
                          CircleAvatar(
                            backgroundColor: Color(0xFF5e43ff),
                            radius: 3,
                          ),
                          SizedBox(width: 5,),
                          Text("Selected"),
                          SizedBox(width: 5,),
                          CircleAvatar(
                            backgroundColor: Color(0xFF008000),
                            radius: 3,
                          ),
                          SizedBox(width: 5,),
                          Text("Available"),
                          SizedBox(width: 5,),
                          CircleAvatar(
                            backgroundColor: Color(0xFFff0000),
                            radius: 3,
                          ),
                          SizedBox(width: 5,),
                          Text("Booked"),
                        ]
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                    // gridview with 4 column with 3 row each with text with custom width
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 4,
                        children: List.generate(timeSchedule.length, (index) {
                          return Container(
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: timeSchedule[index]["id"] == 0 ? Color(0xFF5e43ff) : timeSchedule[index]["id"] == 1 ? Color(0xFF008000) : timeSchedule[index]["id"] == 2 ? Color(0xFFff0000) : Color(0xFFD7E0F5),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Text(
                                timeSchedule[index]["name"],
                                style: TextStyle(color: Colors.white,fontSize: 10),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
