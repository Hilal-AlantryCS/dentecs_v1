// ignore: file_names
// ignore_for_file: camel_case_types, file_names, duplicate_ignore, deprecated_member_use, unused_local_variable, non_constant_identifier_names

import 'package:dentecs_v1/core/constant/color.dart';
import 'package:dentecs_v1/core/shared/utils.dart';
import 'package:dentecs_v1/widget/booknow/bookNowTextForm.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class BookNow extends StatelessWidget {
  const BookNow({super.key});

  @override
  Widget build(BuildContext context) {
    BookNow controller = Get.put(const BookNow());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back)),
        ),
      ),
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 198, 178, 151),
              Color.fromARGB(255, 180, 155, 122),
              Color.fromARGB(255, 171, 141, 104),
            ],
          ),
        ),
        child: Center(
          child: ListView(
            children: [
              SizedBox(
                height: screenHeight(1.1),
                child: Stack(
                  children: [
                    Positioned(
                      top: screenHeight(18),
                      left: screenHeight(40),
                      child: Center(
                          child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(screenWidth(30)),
                          color: const Color.fromARGB(164, 79, 79, 79),
                        ),
                        height: screenHeight(1.4),
                        width: screenWidth(1.12),
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth(20)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: screenHeight(10),
                                ),
                                BookForm(
                                  hinttext: 'ussername',
                                  iconData: Icons.person,
                                  mycontroller: null,
                                  valid: (String) {},
                                  isNumber: false,
                                ),
                                SizedBox(
                                  height: screenHeight(30),
                                ),
                                BookForm(
                                  hinttext: 'ss',
                                  iconData: Icons.person,
                                  mycontroller: null,
                                  valid: (String) {},
                                  isNumber: false,
                                ),
                                SizedBox(
                                  height: screenHeight(30),
                                ),
                                BookForm(
                                  hinttext: 'ss',
                                  iconData: Icons.person,
                                  mycontroller: null,
                                  valid: (String) {},
                                  isNumber: false,
                                ),
                              ],
                            )),
                      )),
                    ),
                    Positioned(
                      top: screenHeight(50),
                      left: screenHeight(18.5),
                      child: Center(
                          child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: const LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Color.fromARGB(255, 186, 184, 184),
                              Color.fromARGB(255, 88, 70, 46),
                            ],
                          ),
                        ),
                        height: screenHeight(13.5),
                        width: screenWidth(1.3),
                        child: const Center(
                            child: Text(
                          "Book Now",
                          style: TextStyle(
                              color: AppColor.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Cairo'),
                        )),
                      )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
