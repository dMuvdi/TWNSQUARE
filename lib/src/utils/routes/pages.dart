
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twn_square/app/screens/mobile/screens/home_view_binding.dart';
import 'package:twn_square/app/screens/mobile/layout/mobile_layout_screen.dart';
import 'package:twn_square/app/screens/web/web_layout_view.dart';
import 'package:twn_square/app/screens/web/home_view_binding.dart';
import 'package:twn_square/src/utils/routes/routes.dart';

abstract class Pages {
  static final pagesList = [
    GetPage(
      name: MainRoutes.home_mobile, 
      page: () => const MobileLayoutScreen(),
      binding: HomeViewBinding(),
      transition: Transition.fadeIn,
      curve: Curves.easeInOut
    ),
    GetPage(
      name: MainRoutes.home_web, 
      page: () => const LayoutWebView(),
      binding: HomeViewBindingWeb(),
      transition: Transition.fadeIn,
      curve: Curves.easeInOut
    ),
  ];
}