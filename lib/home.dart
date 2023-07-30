
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:munnaguys/slider_body.dart';

import 'constant.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.BACKGROUNDCOLOR,
        title: Text("Munna & Guys"),
      ),

      body: Container(
        color: Constant.BACKGROUNDCOLOR,
        // child stack
        child: Stack(
          children: [
            // two box one after another overlap
            // first box
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
             child: Column(
               children: [
                 SizedBox(height: 30,),
                 Container(
                 height: 45,
                 width: 350, //MediaQuery.of(context).size.width,
                 child: Center(
                   child: TextField (
                     textAlignVertical: TextAlignVertical.center,
                     decoration: InputDecoration(
                        filled: true,
                        prefixIcon: Icon(BootstrapIcons.search),
                         enabledBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.white),
                           borderRadius: BorderRadius.all(Radius.circular(20)),
                         ),
                         focusedBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.white),
                           borderRadius: BorderRadius.all(Radius.circular(20)),
                         ),
                         disabledBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.white),
                           borderRadius: BorderRadius.all(Radius.circular(20)),
                         ),
                         hintText: 'Search',
                     ),
                   ),
                 ),
                ),
               ]
              ),
            ),
            // second box
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
              margin: EdgeInsets.only(top: 100),
              width: MediaQuery.of(context).size.width,
                child: Container(
                 // margin: EdgeInsets.only(top: 20, left: 30, right: 30),
                  child:Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:[
                          SizedBox(width: 10,),
                          Text("Popular Services",style: TextStyle(fontSize: 20,color: Colors.orange),),
                          //Spacer(),
                          SizedBox(width:60,),
                          TextButton(
                            onPressed: (){},
                            child: Text("View All",style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color:Colors.grey)),
                          ),
                        ]
                      ),
                      SizedBox(height: 10,),
                      SliderBody(),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("What are you looking for?",style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Constant.PRIMARYCOLOR,
                            ),),
                            Text("View All",style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                            ),),
                          ],
                        ),

                      ),
                      SizedBox(height: 10,),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 20.0),
                          height: 100.0,
                          child: new ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 72,
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: Image.asset("assets/images/logo.png"),
                                  )
                              ),
                              CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 72,
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: Image.asset("assets/images/logo.png"),
                                  )
                              ),
                              CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 72,
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: Image.asset("assets/images/logo.png"),
                                  )
                              ),
                              CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 72,
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: Image.asset("assets/images/logo.png"),
                                  )
                              ),

                            ],
                          )
                      )

                      // Container(
                      //   height: 170,
                      //   width: 350,
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(20),
                      //     image: DecorationImage(
                      //       image: AssetImage("assets/images/logo.png",),
                      //       fit: BoxFit.cover,
                      //     ),
                      //      color: Colors.orange,
                      //   ),
                      // )
                    ],
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
