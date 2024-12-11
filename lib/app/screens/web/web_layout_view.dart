import 'package:flutter/material.dart';
import 'package:twn_square/app/screens/web/mobile_web_view/mobile_home_view.dart';
import 'package:twn_square/app/screens/web/web_view/home_view.dart';

class LayoutWebView extends StatelessWidget {
  const LayoutWebView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return constraints.maxWidth > 1046
          ? const WebHomeView()
          : MobileWebHomeView(constraints: constraints,);
    });
  }
}
