import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twn_square/src/utils/gen/assets.gen.dart';
import '../src/utils/gen/fonts.gen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'TwnSquare',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
            child: Row(
          children: [
            const Text(
              "Twnsquare",
              style: TextStyle(
                  fontFamily: FontFamily.sFProDisplay,
                  fontSize: 50,
                  fontWeight: FontWeight.w500),
            ),
            AssetsToken.icons.map
                .svg(width: 50, height: 50, color: Colors.black),
          ],
        )),
      ),
    );
  }
}
