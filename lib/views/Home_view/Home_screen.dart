// ignore_for_file: file_names

import 'package:dentecs_v1/controller/Homescreen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenController());
    return GetBuilder<HomeScreenController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 171, 141, 104),
          floatingActionButton: FloatingActionButton(
            backgroundColor: const Color.fromARGB(226, 6, 89, 156),
            shape: const CircleBorder(),
            onPressed: () {
              controller.changepage(0);
            },
            child: Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFF1ECE4),
                    Color.fromARGB(237, 92, 76, 67),
                    Color.fromARGB(238, 58, 57, 57),
                  ],
                ),
              ),
              child: const Icon(
                Icons.home,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            color: const Color.fromARGB(229, 79, 79, 79),
            height: 70,
            shape: const CircularNotchedRectangle(),
            notchMargin: 8,
            child: Row(
              children: [
                Row(
                  children: [
                    MaterialButton(
                      onPressed: () {
                        controller.changepage(1);
                      },
                      child: const Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.account_circle,
                              color: Colors.white,
                            ),
                            Text(
                              "Profile",
                              style: TextStyle(color: Colors.white),
                            )
                          ]),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    MaterialButton(
                      onPressed: () {
                        controller.changepage(2);
                      },
                      child: const Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.crisis_alert_sharp,
                              color: Colors.white,
                            ),
                            Text(
                              "Services",
                              style: TextStyle(color: Colors.white),
                            )
                          ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
          body: controller.listPage.elementAt(controller.currentPage),
        );
      },
    );
  }
}
