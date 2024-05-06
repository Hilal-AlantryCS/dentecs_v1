// ignore_for_file: file_names

import 'package:dentecs_v1/views/ProfilePage/ProfilePage.dart';
import 'package:dentecs_v1/views/ServicesPage/ServicesPage.dart';
import 'package:dentecs_v1/views/main_views/main_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  int currentPage = 0;
  List<Widget> listPage = [
    MainView(),
    const ProfilePage(),
    const ServicesPage()
  ];
  void changepage(int i) {
    currentPage = i;
    update();
  }
}
