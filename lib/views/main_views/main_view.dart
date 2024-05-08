// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dentecs_v1/views/Home_view/Home_screen.dart';
import 'package:dentecs_v1/views/Home_view/Home_view.dart';
import 'package:dentecs_v1/views/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:dentecs_v1/core/shared/utils.dart';

import 'package:dentecs_v1/widget/CustomDrawer.dart';

class MainView extends StatelessWidget {
  MainView({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: CustomDrawer(),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Row(
            children: [
              SizedBox(
                width: screenWidth(50.0),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  'Appointment',
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
                  _scaffoldKey.currentState!
                      .openDrawer(); // فتح الـ Drawer عند الضغط على الأيقونة
                },
                icon: Icon(Icons.menu)),
          ),
        ),
        body: Home_view());
  }
}
