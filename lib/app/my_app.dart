import 'package:dentecs_v1/views/Home_view/Home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dentecs_v1/core/constant/color.dart';
import 'package:dentecs_v1/core/localization/changelocal.dart';
import 'package:dentecs_v1/core/localization/translation.dart';
import 'package:dentecs_v1/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());

    return GetMaterialApp(
      translations: MyTranslation(),
      locale: controller.language,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'PlayfairDisplay',
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 26, color: AppColor.black),
          displayMedium: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: AppColor.black),
          bodyLarge: TextStyle(
              color: AppColor.grey,
              fontWeight: FontWeight.bold,
              fontSize: 15,
              fontFamily: "Cairo"),
          bodyMedium: TextStyle(height: 2, color: AppColor.grey, fontSize: 12),
        ),
      ),
      home: const HomeScreen(),
      routes: routes,
    );
  }
}
