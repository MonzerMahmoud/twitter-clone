

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:twitter_clone/constants.dart';
import 'package:twitter_clone/view/login_page.dart';
import 'package:twitter_clone/view/welcome_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
 

  void initState() {
    super.initState();
    _navigateToHome();
  }
   _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    Get.offAll(() =>  const WelcomePage());
      // Navigator.pushReplacement(
      //   context, MaterialPageRoute(builder: (context) => LogInPage()));

  }

  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child: Center(child:Container(child: Image.asset('images/logo.png'),height: 80,width: 80,)),
    
    );
  }
}




