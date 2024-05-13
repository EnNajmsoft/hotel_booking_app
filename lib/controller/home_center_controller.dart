import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_routes.dart';
import '../screen/booking_ongoing_tab_container_page/booking_ongoing_tab_container_page.dart';
import '../screen/home_screen_page/home_screen_page.dart';
import '../screen/my_bookmarks_screen/my_bookmarks_screen.dart';
import '../screen/profile_settings_page/profile_settings_page.dart';

abstract class HomeCenterController extends GetxController {
  changePage(int currentpage);
}

class HomeCenterControllerImp extends HomeCenterController {
  int currentpage = 0;

  List<Widget> listPage = [
    HomeScreenPage(),
    MyFavorite(),
    BookingOngoingTabContainerPage(),
    ProfileSettingsPage(),
  ];
  List listrootPage = [
    AppRoutes.homeScreenPage,
    AppRoutes.myfavorite,
    AppRoutes.bookingOngoingTabContainerPage,
    AppRoutes.profileSettingsPage,
    
  ];

  List bottomappbar = [
    {"title": "home", "icon": Icons.home_outlined},
    {"title": "mybooking", "icon": Icons.bookmark_outline},
    {"title": "booking", "icon": Icons.menu},
    {"title": "profile", "icon": Icons.person_2_outlined},
  ];

  @override
  changePage(int i) {
    currentpage = i;
    update();
  }
  @override
  void onInit() {

    super.onInit();
  }
  @override
  void onReady() {
update()  ;
  super.onReady();
  }
}
