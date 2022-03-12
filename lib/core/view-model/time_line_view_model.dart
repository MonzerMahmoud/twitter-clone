
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twitter_clone/view/direct_messages_page.dart';
import 'package:twitter_clone/view/notifications_page.dart';
import 'package:twitter_clone/view/search_page.dart';
import 'package:twitter_clone/view/timeline_page.dart';

class TimeLineViewModel extends GetxController {
   Widget _currentScreen = const TimeLine();
  int _navigatorValue = 0;
  get navigatorValue => _navigatorValue;
  get currentScreen => _currentScreen;
  void changeSelectedValue(selctedValue) {
    _navigatorValue = selctedValue;
    switch (selctedValue) {
            case 0:
              {
                _currentScreen = const TimeLine();
                break;
              }

            case 1:
              {
                _currentScreen = const SearchPage();
                break;
              }
            case 2:
              {
                _currentScreen = const NotificationsPage();
                break;
              }
              case 3:
              {
                _currentScreen = const DirectMessagesPage();
                break;
              }
            default:
          }
    update();
  }
} 
