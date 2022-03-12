import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twitter_clone/view/login_page.dart';
import 'package:twitter_clone/view/signUp_page.dart';
import 'package:twitter_clone/view/widgets/custom_button.dart';
import 'package:twitter_clone/view/widgets/custom_text.dart';

import '../constants.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25.0,10.0,25.0,25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Image.asset('images/logo.png',color: primaryColor,height: 50,width: 50,),
               Column(
                 children: [
                   const SizedBox(height: 40,),
                   CustomText(text: 'See What\'s ',fontSize: 30,fontWeight:FontWeight.bold ,color: primaryColor,),
                   CustomText(text: 'happening in the  ',fontSize: 30,fontWeight:FontWeight.bold ,color: primaryColor,),
                   CustomText(text: 'world right now.',fontSize: 30,fontWeight:FontWeight.bold ,color: primaryColor,),
                   const SizedBox(height: 20,),
                   CustomButton(onPressed:()=> Get.to(()=> SignUpPage()), text: 'create account'),
                 ],
               ),
               RichText(
      text: TextSpan(
        text: 'Have an account already? ',
        style: const TextStyle(color: Colors.grey,fontSize: 15),
        children: <TextSpan>[
          
          TextSpan(
              text: 'Log in',
              style: const TextStyle(color: primaryColor,),
              recognizer: TapGestureRecognizer()
                ..onTap = () => Get.to(()=> LogInPage())),
        ],
      ),
    )

            ],
          ),
        ),
      ),
    );
  }
}
