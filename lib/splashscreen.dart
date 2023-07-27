import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:munnaguys/phonenumber.dart';

import 'constant.dart';
import 'main.dart';
class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   // isLoggedIn();
  }
/*  Future<void> isLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? isLoggedIn = prefs.getString(Constant.ISLOGIN);
    var log = Logger();
    log.d("djfkldjf $isLoggedIn");
    if (isLoggedIn == "1") {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => TestHome()));
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset(
        'assets/images/logo.png',),
      logoWidth: 150,
      title: Text(
        "",
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      gradientBackground:  LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.centerRight,
        colors: [
          Color(0xFFD7E0F5),
          Color(0xFFD7E0F5)
        ],
      ),
      loaderColor: Colors.white,
      showLoader: true,
      loadingText: Text("Loading....",style: TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),),
      navigator: PhonePage(),
      durationInSeconds: 4,
    );
  }
}