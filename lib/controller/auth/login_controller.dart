// import 'package:ecommercecourse/core/class/statusrequest.dart';
// import 'package:ecommercecourse/core/constant/routes.dart';
// import 'package:ecommercecourse/core/functions/handingdatacontroller.dart';
// import 'package:ecommercecourse/core/services/services.dart';
// import 'package:ecommercecourse/data/datasource/remote/auth/login.dart';
// ignore_for_file: avoid_print

import 'package:dentecs_v1/core/constant/link_API.dart';
import 'package:dentecs_v1/core/constant/routes.dart';
import 'package:dentecs_v1/core/services/services.dart';
import 'package:dentecs_v1/data/crud.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  late TextEditingController email;
  late TextEditingController password;
  GlobalKey<FormState> formState = GlobalKey();

  login();
  goToSignUp();
  // goToForgetPassword();
}

class LoginControllerImp extends LoginController with Crud {
  MyServices myServices = Get.find();
  @override
  login() async {
    if (formState.currentState!.validate()) {
      var response = await postRequest(LinkSignUp, {
        'email': email.text,
        'password': password.text,
      });
      update();
      if (response['status'] == "success") {
        myServices.sharedPreferences
            .setString('id', response['data']['id'].toString());
        myServices.sharedPreferences
            .setString('username', response['data']['username']);
        myServices.sharedPreferences
            .setString('email', response['data']['email']);

        Get.offNamed(AppRoute.homescreen);
      } else {
        update();
        print("Sign up failed");
      }
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signup);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  // @override
  // goToForgetPassword() {
  //   Get.toNamed(AppRoute.forgetPassword);
  // }
}
