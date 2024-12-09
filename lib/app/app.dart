import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twn_square/src/utils/gen/fonts.gen.dart';
import 'package:twn_square/src/utils/routes/pages.dart';

import '../src/utils/routes/routes.dart';

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
      initialRoute: kIsWeb ? MainRoutes.home_web : MainRoutes.home_mobile,
      getPages: Pages.pagesList,
    );
  }
}
