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

  int pageIndex = 0;

  double bottom_icon_size = 20;
  double bottom_font_size = 12;
  double bottom_gap_between_icon_text = 4;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildMyNavBar(context),
      appBar: AppBar(
        backgroundColor: Constant.SecondColor,
        title:
        Container(
          margin: EdgeInsets.only(bottom: 20,top: 10),
          child:  Row(
            children: [
              Row(
                children: [
                  Icon(BootstrapIcons.person_circle,color: Colors.grey,size: 35,),
                  SizedBox(width: 10,),
                  Text("Abu Bokor Siddik",style: TextStyle(color: Colors.black,fontSize: 20),),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Icon(Icons.circle_notifications_outlined,color: Colors.grey,size: 35,),
                ],
              ),
            ],
          ),
        ) //Text("Munna & Guys"),
      ),

      body: SingleChildScrollView(
        child: Container(
          color: Constant.SecondColor,
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
                        height:55,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(bottom: 15,left: 40,right: 40),
                        child: Center(
                          child: TextField (
                            textAlignVertical: TextAlignVertical.center,
                            //background color white

                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(BootstrapIcons.search,size: 25,),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.all(Radius.circular(25)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.all(Radius.circular(25)),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.all(Radius.circular(25)),
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
                          Container(
                            margin: EdgeInsets.only(top:10,left: 10, right: 10),
                            child:Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children:[
                                  SizedBox(width: 10,),
                                  Text("Popular Services",style: TextStyle(fontSize: 16,color: Colors.orange),),
                                  //Spacer(),
                                  Spacer(),
                                  TextButton(
                                    onPressed: (){},
                                    child: Text("View All",style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color:Colors.grey)),
                                  ),
                                ]
                            ),
                          ),
                          SliderBody(),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Container(
                              margin: EdgeInsets.only(top:10,left: 20, right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("What are you looking for?",style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Constant.PRIMARYCOLOR,
                                  ),),
                                  Spacer(),
                                  Text("View All",style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey,
                                  ),),
                                ],
                              ),
                            ),

                          ),
                          SizedBox(height: 10,),
                          Container(
                              margin: EdgeInsets.symmetric(vertical: 5.0),
                              height: 80.0,
                              child: new ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  Column(
                                    children: [

                                    ],
                                  ),
                                  CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 50,
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        child: Image.asset("assets/images/spa.png"),
                                      )
                                  ),
                                  CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 50,
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        child: Image.asset("assets/images/spa.png"),
                                      )
                                  ),
                                  CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 50,
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        child: Image.asset("assets/images/spa.png"),
                                      )
                                  ),
                                  CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 50,
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        child: Image.asset("assets/images/spa.png"),
                                      )
                                  ),

                                ],
                              )
                          ),
                          SizedBox(height: 5,),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Container(
                              margin: EdgeInsets.only(top:10,left: 20, right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Our Hairstylist",style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Constant.PRIMARYCOLOR,
                                  ),),
                                  Spacer(),
                                  Text("View All",style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey,
                                  ),),
                                ],
                              ),
                            ),

                          ),
                          SizedBox(height: 10,),
                          Container(
                              margin: EdgeInsets.symmetric(vertical: 5.0),
                              height: 80.0,
                              child: new ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  Column(
                                    children: [

                                    ],
                                  ),
                                  CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 50,
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        child: Image.asset("assets/images/spa.png"),
                                      )
                                  ),
                                  CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 50,
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        child: Image.asset("assets/images/spa.png"),
                                      )
                                  ),
                                  CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 50,
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        child: Image.asset("assets/images/spa.png"),
                                      )
                                  ),
                                  CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 50,
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        child: Image.asset("assets/images/spa.png"),
                                      )
                                  ),

                                ],
                              )
                          ),
                          SizedBox(height: 5,),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Container(
                              margin: EdgeInsets.only(top:10,left: 20, right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Our Therapist",style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Constant.PRIMARYCOLOR,
                                  ),),
                                  Spacer(),
                                  Text("View All",style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey,
                                  ),),
                                ],
                              ),
                            ),

                          ),
                          SizedBox(height: 10,),
                          Container(
                              margin: EdgeInsets.symmetric(vertical: 5.0),
                              height: 80.0,
                              child: new ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  Column(
                                    children: [

                                    ],
                                  ),
                                  CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 50,
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        child: Image.asset("assets/images/spa.png"),
                                      )
                                  ),
                                  CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 50,
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        child: Image.asset("assets/images/spa.png"),
                                      )
                                  ),
                                  CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 50,
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        child: Image.asset("assets/images/spa.png"),
                                      )
                                  ),
                                  CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 50,
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        child: Image.asset("assets/images/spa.png"),
                                      )
                                  ),

                                ],
                              )
                          ),
                          SizedBox(height: 5,),

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
      ),
    );

  }
  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(

        color: Colors.white,
        borderRadius:  BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        border: Border.all(
          color: Color(0xFFD4D2D2),
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFD4D2D2),
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 15.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MaterialButton(
            minWidth: MediaQuery.of(context).size.width * 0.20,
            onPressed: () {
              setState(() {
                // pageIndex = 0;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  BootstrapIcons.house_fill,
                  color:  Colors.black,
                  size: bottom_icon_size,
                ),
                SizedBox(
                  height: bottom_gap_between_icon_text,
                ),
                Text(
                  "Home",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "bangla",
                      fontSize: bottom_font_size),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: ()
            {
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>ClassList( motive: Constant.STUDENTINFO,)));
            },
            child:  MaterialButton(
                minWidth: MediaQuery.of(context).size.width * 0.20,
                onPressed: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>ClassList( motive: Constant.STUDENTINFO,)));
                },
                child: GestureDetector(
                  onTap: ()
                  {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>ClassList( motive: Constant.STUDENTINFO,)));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        BootstrapIcons.file_text_fill,
                        color: Colors.black,
                        size: bottom_icon_size,
                      ),
                      SizedBox(
                        height: bottom_gap_between_icon_text,
                      ),
                      Text(
                        "Booking",
                        style: TextStyle(
                          color:  Colors.black,
                          fontFamily: "bangla",
                          fontSize: bottom_font_size,
                        ),
                      )
                    ],
                  ),
                )
            ),),
          GestureDetector(
            onTap: ()
            {
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>TeacherList()));
            },
            child:  MaterialButton(
                minWidth: MediaQuery.of(context).size.width * 0.20,
                onPressed: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>TeacherList()));
                },
                child: GestureDetector(
                  onTap: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>TeacherList()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        BootstrapIcons.chat_dots_fill,
                        color:  Colors.black,
                        size: bottom_icon_size,
                      ),
                      SizedBox(
                        height: bottom_gap_between_icon_text,
                      ),
                      Text(
                        "Message",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "bangla",
                            fontSize: bottom_font_size),
                      )
                    ],
                  ),
                )
            ),
          ),
          MaterialButton(
            minWidth: MediaQuery.of(context).size.width * 0.20,
            onPressed: () {
              setState(() {
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile())).then((value) => setState(() {}));
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  BootstrapIcons.person_fill,
                  color: Colors.black,
                  size: bottom_icon_size,
                ),
                SizedBox(
                  height: bottom_gap_between_icon_text,
                ),
                Text(
                  "Profile",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "bangla",
                      fontSize: bottom_font_size),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
