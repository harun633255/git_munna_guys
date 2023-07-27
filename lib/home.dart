
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

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
             child: Container(
               padding: EdgeInsets.all(10),
               margin: EdgeInsets.only(left: 10,right: 10,top: 10),
               height: 60,
               width: MediaQuery.of(context).size.width,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(15)),
                 color: Colors.white,
                 boxShadow: [
                   BoxShadow(
                     color: Color(0xFFD4D2D2),
                     offset: Offset(0.0, 1.0), //(x,y)
                     blurRadius: 6.0,
                   ),
                 ],
               ),
               child: Stack(
                 children: [
                   Align(
                       alignment: Alignment.centerLeft,
                       child:
                       Expanded(
                         flex: 10,
                         child:Row(
                           children: [
                             SizedBox(width: 10,),
                             Expanded(
                               flex: 1,
                               child: Icon(BootstrapIcons.search,
                                 color: Constant.PRIMARYCOLOR,
                               ),
                             ),

                             Expanded(
                               flex: 7,
                               child: TextField(
                                // controller: _searchQuery,

                                 onChanged: (value)
                                 {
                                   setState(() {
                                     /*if (value.isEmpty) {
                                    _handleSearchStart();
                                  } else {
                                    _handleSearchEnd();
                                  }*/
                                   });
                                 },

                                 textAlign: TextAlign.start,
                                 style: TextStyle(
                                     fontSize: 15
                                 ),
                                 decoration: new InputDecoration(
                                   border: InputBorder.none,
                                   focusedBorder: InputBorder.none,
                                   enabledBorder: InputBorder.none,
                                   errorBorder: InputBorder.none,
                                   disabledBorder: InputBorder.none,
                                   hintText: "  খুজুন....",
                                   hintStyle: TextStyle(color: Colors.grey,
                                       fontSize: 16
                                   ),
                                 ),
                               ),

                             ),
                             Expanded(
                                 flex: 2,
                                 child:Align(
                                     alignment: Alignment.centerRight,
                                     child: GestureDetector(
                                       onTap: (){

                                       },
                                       child:  Container(
                                         height: 60,
                                         width: 60,
                                         decoration: BoxDecoration(
                                             border: Border.all(
                                               color: Color(0xFFFFFFFF),
                                             ),
                                             color: Color(0xFFFFFFFF),
                                             borderRadius: BorderRadius.all(Radius.circular(22))),
                                         padding: EdgeInsets.all(5),
                                         child: Center(
                                           child: Icon(
                                             BootstrapIcons.filter,
                                             color: Colors.grey,
                                           ),
                                         ),
                                       ),
                                     )
                                 )
                             ),

                           ],
                         ),
                       )

                   ),
                 ],
               ),
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
            ),)


          ],
        ),
      ),
    );
  }
}
