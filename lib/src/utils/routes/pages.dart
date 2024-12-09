
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twn_square/app/screens/mobile/home_view_binding.dart';
import 'package:twn_square/app/screens/mobile/layout/layout_screen.dart';
import 'package:twn_square/app/screens/web/home_view.dart';
import 'package:twn_square/src/utils/routes/routes.dart';

abstract class Pages {
  static final pagesList = [
    GetPage(
      name: MainRoutes.home_mobile, 
      page: () => const LayoutScreen(),
      binding: HomeViewBinding(),
      transition: Transition.fadeIn,
      curve: Curves.easeInOut
    ),
    GetPage(
      name: MainRoutes.home_web, 
      page: () => const WebHomeView(),
      binding: HomeViewBinding(),
      transition: Transition.fadeIn,
      curve: Curves.easeInOut
    ),
  ];
}