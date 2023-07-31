import 'package:flutter/material.dart';

import 'constant.dart';

class SelectServices extends StatefulWidget {
  const SelectServices({super.key});

  @override
  State<SelectServices> createState() => _SelectServicesState();
}

class _SelectServicesState extends State<SelectServices> {

  String _selectServices1 = 'Full Body Massage';
  String _selectServices2 = 'Pedicure';
  String _selectServices3 = 'Hair Cut';
  String _selectServices4 = 'Hair Cut';

  //String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var service1 = [
    'Full Body Massage',
    'Pedicure',
    'Menicure',
    'Hair Cut',
    'Beard Trim',
  ];

  var service2 = [
    'Full Body Massage',
    'Pedicure',
    'Menicure',
    'Hair Cut',
    'Beard Trim',
  ];

  var service3 = [
    'Full Body Massage',
    'Pedicure',
    'Menicure',
    'Hair Cut',
    'Beard Trim',
  ];

  var service4 = [
    'Full Body Massage',
    'Pedicure',
    'Menicure',
    'Hair Cut',
    'Beard Trim',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.SecondColor,
        //back button
        leading: IconButton(
          icon: CircleAvatar(
              backgroundColor: Colors.white,
              maxRadius: 20,
              child: Icon(Icons.arrow_back,color: Colors.black,size: 30)
           ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(child: Text("Select Services")),
      ),


      body: Container(
        color: Constant.SecondColor,
        child: Expanded(

          child: Container(
            padding: EdgeInsets.all(20),
             decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.only(
               topLeft: Radius.circular(25),
               topRight: Radius.circular(25),
            ),
           ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Constant.PRIMARYCOLOR,
                         width: 2,
                    )
                   ),
                  child: DropdownButton(
                    underline: SizedBox(),
                    isExpanded: true,
                    value: _selectServices1,

                    icon: const Icon(Icons.keyboard_arrow_down),

                    items: service1.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),

                    onChanged: (String? newValue) {
                      setState(() {
                        _selectServices1 = newValue!;
                      });
                    },
                  ),
                  ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.all(15),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Constant.PRIMARYCOLOR,
                        width: 2,
                      )
                  ),
                  child: DropdownButton(
                    underline: SizedBox(),
                    isExpanded: true,
                    value: _selectServices2,

                    icon: const Icon(Icons.keyboard_arrow_down),

                    items: service2.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),

                    onChanged: (String? newValue) {
                      setState(() {
                        _selectServices2 = newValue!;
                      });
                    },
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.all(15),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Constant.PRIMARYCOLOR,
                        width: 2,
                      )
                  ),
                  child: DropdownButton(
                    underline: SizedBox(),
                    isExpanded: true,
                    value: _selectServices3,

                    icon: const Icon(Icons.keyboard_arrow_down),

                    items: service3.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),

                    onChanged: (String? newValue) {
                      setState(() {
                        _selectServices3 = newValue!;
                      });
                    },
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.only(
                      top: 8, left: 15, right:15, bottom:8,
                  ),
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Constant.PRIMARYCOLOR,
                        width: 2,
                      )
                  ),
                  child:DropdownButton(
                    underline: SizedBox(),
                    isExpanded: true,
                    value:  _selectServices4,

                    icon: const Icon(Icons.keyboard_arrow_down),

                    items: service4.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),

                    onChanged: (String? newValue) {
                      setState(() {
                        _selectServices4 = newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
            ),
        ),
      ),
    );
  }
}
