// ignore: file_names
// ignore_for_file: camel_case_types, file_names, duplicate_ignore, deprecated_member_use, unused_local_variable

import 'package:dentecs_v1/controller/ServicesController.dart';
import 'package:dentecs_v1/core/shared/utils.dart';
import 'package:dentecs_v1/widget/CustomDrawer.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    ServicesController controller = Get.put(ServicesController());
    return Scaffold(
      key: controller.scaffoldKey,
      drawer: CustomDrawer(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(
              width: screenWidth(50.0),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Services',
                style: TextStyle(
                    fontFamily: "roboto", fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: IconButton(
              onPressed: () {
                controller.scaffoldKey.currentState!
                    .openDrawer(); // فتح الـ Drawer عند الضغط على الأيقونة
              },
              icon: Icon(Icons.menu)),
        ),
      ),
      body: Container(
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
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [],
          ),
        ),
      ),
    );
  }
}
