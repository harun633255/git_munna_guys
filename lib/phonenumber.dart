import 'package:flutter/material.dart';
import 'package:munnaguys/constant.dart';

import 'NOtpVerification.dart';

class PhonePage extends StatefulWidget {
  static const String phonenumber = '018';
  const PhonePage({super.key});

  @override
  State<PhonePage> createState() => _PhonePageState();
}

class _PhonePageState extends State<PhonePage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.PRIMARYCOLOR,
        title: Text("Munna & Guys"),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Image(image: Image.asset('assets/images/phonepage.png').image),
            SizedBox(height: 30,),
            Text("Register",style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),),
            Text("Register using your mobile number to continue",style: TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
            // Send Otp button
            // Text Field for phone number with corner radius
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90),
                color: Colors.white,
              ),
              margin: EdgeInsets.all(1),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Phone Number',
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              margin: EdgeInsets.all(1),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Constant.PRIMARYCOLOR,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onPressed: () {
                  // Respond to button press
               //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NOtpVerification()));

                },
                child: Text('Send OTP'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
