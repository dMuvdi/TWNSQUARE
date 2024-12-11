import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../src/constants/colors.dart';
import '../../../../src/utils/gen/assets.gen.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250, // Adjust the width as needed
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30.0, left: 15.0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 170,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border(
                  bottom: Divider.createBorderSide(context,
                      color: Colors.black, width: 0.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('TWN',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 38,
                          fontWeight: FontWeight.w700)),
                  Text('SQR',
                      style: TextStyle(
                          color: MainColors.primary600,
                          fontSize: 38,
                          fontWeight: FontWeight.w700)),
                ],
              ),
            ),
            ListTile(
              horizontalTitleGap: 35,
              leading: AssetsToken.icons.calendar
                  .svg(width: 25, height: 25, color: Colors.white),
              title: const Text('Activities',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400)),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            const SizedBox(
              height: 15.0,
            ),
            ListTile(
              horizontalTitleGap: 35,
              leading: AssetsToken.icons.map
                  .svg(width: 25, height: 25, color: Colors.white),
              title: const Text('Locations',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400)),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            const SizedBox(
              height: 15.0,
            ),
            ListTile(
              horizontalTitleGap: 35,
              leading: AssetsToken.icons.star
                  .svg(width: 25, height: 25, color: Colors.white),
              title: const Text('Services',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400)),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            const SizedBox(
              height: 15.0,
            ),
            ListTile(
              horizontalTitleGap: 35,
              leading: AssetsToken.icons.users
                  .svg(width: 25, height: 25, color: Colors.white),
              title: const Text('Communities',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400)),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            const SizedBox(
              height: 15.0,
            ),
            ListTile(
              horizontalTitleGap: 35,
              leading: AssetsToken.icons.bell
                  .svg(width: 25, height: 25, color: Colors.white),
              title: const Text('Notifications',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400)),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            const SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 60.0, left: 20.0),
              child: Container(
                height: 35,
                width: 100,
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: MainColors.primary600),
                child: const Row(
                  children: [
                    Icon(
                      CupertinoIcons.add,
                      size: 25,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text('Create',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 35.0,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 60.0, left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: NetworkImage(
                        'https://s3-alpha-sig.figma.com/img/1cbd/e603/1ac0d49e9e84330801c2816893fa6c24?Expires=1734912000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=nHCGS~uUvrIjz7bgjJm7bc4BDJjmqdNLsER9MHvyrTyjZhgLPVVD2fjJ6fSGXBfHAGzhFDR2eT9rgjzoRbZxhkBijwuNhqbPiyvANUU-utRWRQk2b7VZfrXfC9fJJhdTuDrDucjxAKMEDfhHP1MQ-NgB-E3MVQEEcIlmbepB0lBhvLAk-Z5y4cPn8rVf7DcfRI6DjE6Ip58j2kUFkZMjr37FXI9gkP5QTIJhnW8Cpnf~cU9w0Nn0xmsG0D~73hTvUR~BRA6mcHimaduAjph-QfeDmioJpdAjKEZTRKIniICLXIe4VfQeJ3apFa8ExZMUsUPLYTVw34SResV7bbogkw__'),
                  ),
                  Text('Profile',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400)),
                  Icon(
                    CupertinoIcons.ellipsis_vertical,
                    color: Colors.white,
                    size: 20,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}