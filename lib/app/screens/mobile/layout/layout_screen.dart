import 'package:flutter/material.dart';
import 'package:twn_square/app/screens/mobile/home_view.dart';

import '../../../../src/shared/bottom_navigation_bar.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) => const Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Center(child: MobileHomeView()),
            Padding(
              padding: EdgeInsets.only(bottom: 0.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: BottomNavigationBarCustom(),
              ),
            ),
          ],
        ),
      );
}
