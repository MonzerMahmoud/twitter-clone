import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twitter_clone/constants.dart';
import 'package:twitter_clone/view/splash_page.dart';

import 'core/helper/binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      
      theme: ThemeData(
       
       brightness: Brightness.light ,
        primarySwatch: white,
      ),
       initialBinding: Binding(),
      home: const SplashScreen(),
    );
  }
}

