import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twn_square/app/screens/mobile/home_view.dart';
import 'package:twn_square/app/screens/web/home_view.dart';
import 'package:twn_square/src/utils/gen/fonts.gen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'TwnSquare',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: FontFamily.sFProDisplay,
        useMaterial3: true,
      ),
      defaultTransition: Transition.fadeIn,
      navigatorKey: Get.key,
      transitionDuration: const Duration(milliseconds: 300),
      home: kIsWeb ? const WebHomeView() : const MobileHomeView(),
    );
  }
}
