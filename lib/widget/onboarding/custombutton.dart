import 'package:dentecs_v1/controller/onboarding_controller.dart';
import 'package:dentecs_v1/core/constant/color.dart';
import 'package:dentecs_v1/core/shared/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingImp> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: screenWidth(10)),
      height: screenHeight(15),
      child: MaterialButton(
        padding: EdgeInsets.symmetric(horizontal: screenWidth(4)),
        color: AppColor.primaryColor,
        textColor: Colors.white,
        onPressed: () {
          controller.next();
        },
        child: const Text(
          "Continue",
          style: TextStyle(fontSize: 17),
        ),
      ),
    );
  }
}
