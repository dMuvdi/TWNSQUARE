import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'icon_bottom_bar.dart';

class BottomNavigationBarCustom extends StatelessWidget {
  const BottomNavigationBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Get.height * 0.11,
        padding: const EdgeInsets.only(
            top: 10.0, left: 20.0, right: 20.0, bottom: 20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconBottomBar(
              text: 'Home',
              iconAsset: 'assets/icons/calendar.svg',
              selected: true,
              onPressed: () {},
            ),
            IconBottomBar(
              text: 'Estats',
              iconAsset: 'assets/icons/map.svg',
              selected: true,
              onPressed: () {},
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: const Color(0xFFBAE6FD),
                  borderRadius: BorderRadius.circular(100)),
              child: const Icon(
                CupertinoIcons.add,
                size: 40,
                color: Colors.black,
                weight: 1,
              ),
            ),
            IconBottomBar(
              text: 'Ajustes',
              iconAsset: 'assets/icons/users.svg',
              selected: true,
              onPressed: () {},
            ),
            IconBottomBar(
              text: 'Ajustes',
              iconAsset: 'assets/icons/star.svg',
              selected: true,
              onPressed: () {},
            ),
          ],
        ));
  }
}
