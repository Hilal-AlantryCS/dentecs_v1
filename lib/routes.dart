import 'package:dentecs_v1/views/BookNow/BooknowPage.dart';
import 'package:dentecs_v1/views/Home_view/Home_screen.dart';
import 'package:dentecs_v1/views/auth/Login_Page.dart';
import 'package:dentecs_v1/views/auth/Signup_page.dart';
import 'package:dentecs_v1/views/success/SuccessPage.dart';
import 'package:flutter/material.dart';
import 'package:dentecs_v1/core/constant/routes.dart';
import 'package:dentecs_v1/views/Contactus/contact_view.dart';
import 'package:dentecs_v1/views/Home_view/Home_view.dart';
import 'package:dentecs_v1/views/Organisation/organise_view.dart';
import 'package:dentecs_v1/views/Roles/role_view.dart';
import 'package:dentecs_v1/views/about_syndicate/about_syndicate_v.dart';
import 'package:dentecs_v1/views/main_views/main_view.dart';
import 'package:dentecs_v1/views/screen/language.dart';
import 'package:dentecs_v1/views/screen/onboarding.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.onBoarding: (context) => const OnBoarding(),
  AppRoute.homeView: (context) => const Home_view(),
  AppRoute.homescreen: (context) => const HomeScreen(),
  AppRoute.contactUs: (context) => Contact_view(),
  AppRoute.aboutSyn: (context) => About_syndicate(),
  AppRoute.language: (context) => const Language(),
  AppRoute.mainView: (context) => MainView(),
  AppRoute.organization: (context) => Organise_view(),
  AppRoute.role: (context) => Role_View(),
  AppRoute.login: (context) => const Login(),
  AppRoute.signup: (context) => SignUp(),
  AppRoute.book: (context) => const BookNow(),
  AppRoute.success: (context) => const Success(),
};
