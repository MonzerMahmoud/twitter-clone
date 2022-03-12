
// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twitter_clone/constants.dart';
import 'package:twitter_clone/core/view-model/time_line_view_model.dart';

class ControlView extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TimeLineViewModel>(
      builder:(controller) =>Scaffold(
        body:controller.currentScreen,
        bottomNavigationBar: bottomNavigationBar(),
      ),
    );
  }

  Widget bottomNavigationBar() {
    return GetBuilder<TimeLineViewModel>(
      init: TimeLineViewModel(),
      builder: (controler) => Container(
        decoration: const BoxDecoration(border:const Border(top: const BorderSide(color: Colors.grey,width: 0.5))),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
               
                icon: Icon(
                  Icons.home_outlined,
                  size: 30,
                ),
                label: ''),
            BottomNavigationBarItem(
              
                icon: Icon(
                  Icons.search_outlined,
                  size: 30,
                 
                ),
                label: ''),
                 BottomNavigationBarItem(
               
                icon: Icon(
                  Icons.notifications_outlined,
                  size: 30,
                ),
                label: ''),
                 BottomNavigationBarItem(
               
                icon: Icon(
                  Icons.email_outlined,
                  size: 30,
                ),
                label: ''),
          ],
          selectedItemColor: primaryColor,
          unselectedItemColor:Colors.grey ,
          backgroundColor: Colors.white,
         showSelectedLabels : false,
         
          
          currentIndex: controler.navigatorValue,
          onTap: (index) {
            controler.changeSelectedValue(index);
            
          },
        ),
      ),
    );
  }
}
