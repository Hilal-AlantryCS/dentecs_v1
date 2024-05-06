// ignore: file_names
// ignore_for_file: camel_case_types, file_names, duplicate_ignore, deprecated_member_use

import 'package:dentecs_v1/core/constant/routes.dart';
import 'package:dentecs_v1/widget/WaveClipper.dart';
import 'package:dentecs_v1/widget/customslider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Home_view extends StatelessWidget {
  const Home_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 198, 178, 151),
              Color.fromARGB(255, 180, 155, 122),
              Color.fromARGB(255, 171, 141, 104),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: ClipPath(
                        clipper: MyWidget(),
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromARGB(255, 57, 50, 31),
                                Color.fromARGB(255, 101, 89, 57),
                              ],
                            ),
                          ),
                          height: 150,
                        )),
                  ),
                  ClipPath(
                      clipper: MyWidget(),
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFFC7B090),
                              Color(0xFFB89A74),
                              Color(0xFFA88458),
                              Color(0xFF7C6A54),
                            ],
                          ),
                        ),
                        height: 145,
                      )),
                ],
              ),
              const Text(
                'Reconnect with your smile',
                style: TextStyle(
                    fontFamily: "PlayfairDisplay",
                    fontSize: 22,
                    color: Color.fromARGB(228, 0, 0, 0),
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'A new approach  to dental \n comfort',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "PlayfairDisplay",
                    fontSize: 18,
                    color: Color.fromARGB(229, 79, 79, 79),
                    fontWeight: FontWeight.w500),
              ),
              CustomSlider(),
              const SizedBox(height: 40),
              Container(
                width: 200, // تمتد الودجة لتأخذ عرض الشاشة بالكامل
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF7C6A54), // لون البداية
                      Color(0xFFA89F8A), // لون النهاية
                    ],
                    begin: Alignment.topLeft, // ابدأ من الزاوية العلوية اليسرى
                    end: Alignment
                        .bottomRight, // انتهِ عند الزاوية السفلية اليمنى
                    stops: [0.0, 1.0], // تحديد نسبة التدرج لكل لون
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 204, 199, 199)
                          .withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: TextButton(
                  onPressed: () {
                    Get.toNamed(AppRoute.book);
                  },
                  child: const Text(
                    'Book Now',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
