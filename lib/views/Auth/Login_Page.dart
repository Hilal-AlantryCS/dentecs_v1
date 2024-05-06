// ignore_for_file: file_names, unused_local_variable

import 'package:dentecs_v1/controller/auth/login_controller.dart';
import 'package:dentecs_v1/core/constant/color.dart';
import 'package:dentecs_v1/core/constant/valid.dart';
import 'package:dentecs_v1/core/shared/utils.dart';
import 'package:dentecs_v1/widget/auth/custombodyauth.dart';
import 'package:dentecs_v1/widget/auth/custombuttonauth.dart';
import 'package:dentecs_v1/widget/auth/customtextformauth.dart';
import 'package:dentecs_v1/widget/auth/customtitle_login.dart';
import 'package:dentecs_v1/widget/auth/logoauth.dart';
import 'package:dentecs_v1/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "15".tr,
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(color: AppColor.grey),
        ),
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth(16), vertical: screenHeight(50)),
          child: GetBuilder<LoginControllerImp>(
            builder: (controller) {
              return Form(
                key: controller.formState,
                child: ListView(
                  children: [
                    const LogoAuth(),
                    CustomtextTitleLog(
                      text: '10'.tr,
                    ),
                    SizedBox(
                      height: screenHeight(40),
                    ),
                    CustomBodyAuth(text: '11'.tr),
                    SizedBox(
                      height: screenHeight(30),
                    ),
                    CustomTextFormAuth(
                      hinttext: '12'.tr,
                      iconData: Icons.email_outlined,
                      isNumber: false,
                      labeltext: "Email",
                      mycontroller: controller.email,
                      valid: (val) {
                        return vaildInput(val, 2, 10);
                      },
                    ),
                    CustomTextFormAuth(
                      hinttext: '13'.tr,
                      iconData: Icons.lock_outline,
                      isNumber: false,
                      labeltext: "Password",
                      mycontroller: controller.password,
                      obscureText: true,
                      valid: (val) {
                        return vaildInput(val, 2, 10);
                      },
                    ),
                    Text(
                      '14'.tr,
                      textAlign: TextAlign.end,
                    ),
                    CustomButtomAuth(
                      text: '15'.tr,
                      onPressed: () {
                        controller.login();
                      },
                    ),
                    SizedBox(
                      height: screenHeight(50),
                    ),
                    CustomTextSignUpOrSignIn(
                      onTap: () {
                        controller.goToSignUp();
                      },
                      textone: "16".tr,
                      texttwo: "17".tr,
                    )
                  ],
                ),
              );
            },
          )),
    );
  }
}
