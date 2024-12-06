import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twn_square/src/utils/gen/fonts.gen.dart';

import '../../../src/utils/gen/assets.gen.dart';

class MobileHomeView extends StatelessWidget {
  const MobileHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: LayoutBuilder(builder: (context, constraints) {
            double screenWidth =
                constraints.maxWidth; // Adjust the divisor to control scaling

            return Container(
              width: Get.width,
              height: 145,
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 8,
                      offset: const Offset(3, 3), // changes position of shadow
                    ),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          AutoSizeText(
                            '8:00',
                            style: TextStyle(
                                fontSize: screenWidth > 700 ? 14 : 12,
                                fontFamily: FontFamily.sFProDisplay,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          AutoSizeText(
                            '(60 min)',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: screenWidth > 700 ? 16 : 14,
                                fontFamily: FontFamily.sFProDisplay,
                                color: const Color(0xFFADB5BD)),
                          ),
                        ],
                      ),
                      AutoSizeText(
                        "Beach Yoga",
                        style: TextStyle(
                            fontFamily: FontFamily.sFProDisplay,
                            fontSize: screenWidth > 700 ? 20 : 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      Row(
                        children: [
                          AssetsToken.icons.map_pin.svg(
                              color: const Color(0xFFADB5BD),
                              width: 13.5,
                              height: 13.5),
                          const SizedBox(
                            width: 4.0,
                          ),
                          AutoSizeText(
                            "La Playa de la Rada",
                            style: TextStyle(
                                fontFamily: FontFamily.sFProDisplay,
                                fontSize: screenWidth > 700 ? 16 : 14,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFADB5BD)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 2.0),
                            decoration: BoxDecoration(
                                color: const Color(0xFFE9ECEF),
                                borderRadius: BorderRadius.circular(2)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AssetsToken.icons.user.svg(
                                  width: 10,
                                  height: 10,
                                  color: const Color(0xFFADB5BD),
                                ),
                                const SizedBox(
                                  width: 4.0,
                                ),
                                AutoSizeText("8 spots left",
                                    style: TextStyle(
                                        fontFamily: FontFamily.sFProDisplay,
                                        fontSize: screenWidth > 700 ? 12 : 10,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFFADB5BD)))
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 2.0),
                            decoration: BoxDecoration(
                                color: const Color(0xFFE9ECEF),
                                borderRadius: BorderRadius.circular(2)),
                            child: Center(
                              child: AutoSizeText("light",
                                  style: TextStyle(
                                      fontFamily: FontFamily.sFProDisplay,
                                      fontSize: screenWidth > 700 ? 12 : 10,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xFFADB5BD))),
                            ),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 2.0),
                            decoration: BoxDecoration(
                                color: const Color(0xFFE9ECEF),
                                borderRadius: BorderRadius.circular(2)),
                            child: Center(
                              child: AutoSizeText("sports",
                                  style: TextStyle(
                                      fontFamily: FontFamily.sFProDisplay,
                                      fontSize: screenWidth > 700 ? 12 : 10,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xFFADB5BD))),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        "9€",
                        style: TextStyle(
                            fontFamily: FontFamily.sFProDisplay,
                            fontSize: screenWidth > 700 ? 20 : 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: 75,
                        height: 35,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              minimumSize: const Size.fromHeight(40),
                            ),
                            child: const AutoSizeText(
                              "Join",
                              style: TextStyle(
                                  fontFamily: FontFamily.sFProDisplay,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            )),
                      )
                    ],
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
