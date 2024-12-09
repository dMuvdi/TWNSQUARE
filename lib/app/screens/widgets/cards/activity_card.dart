import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:twn_square/src/constants/colors.dart';

import '../../../../src/utils/color/color_hues.dart';
import '../../../../src/utils/gen/assets.gen.dart';
import '../../../../src/utils/gen/fonts.gen.dart';

class ActivityCard extends StatelessWidget {
  final String? title;
  final DateTime? time;
  final String? location;
  final int? price;
  final int? duration;
  final int? spotsLeft;
  final List<dynamic>? tags;
  final bool isShowing;

  const ActivityCard({
    required this.title,
    required this.time,
    required this.location,
    required this.price,
    required this.spotsLeft,
    required this.duration,
    required this.tags,
    required this.isShowing,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: isShowing ? 10.0 : 0.0, horizontal: isShowing ? 15.0 : 0.0),
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 300),
        opacity: isShowing ? 1.0 : 0.0,
        child: LayoutBuilder(builder: (context, constraints) {
          double screenWidth =
              constraints.maxWidth; // Adjust the divisor to control scaling
          return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: Get.width,
            height: isShowing ? 145 : 0.0,
            padding: EdgeInsets.symmetric(
                vertical: screenWidth > 700 ? 10.0 : 10.0,
                horizontal: screenWidth > 700 ? 30.0 : 15.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.2),
                    spreadRadius: 0,
                    blurRadius: 8,
                    offset: const Offset(3, 3), // changes position of shadow
                  ),
                ]),
            child: !isShowing
                ? const SizedBox.shrink()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              AutoSizeText(
                                DateFormat('HH:mm')
                                    .format(time ?? DateTime.now()),
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
                                '($duration min)',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: screenWidth > 700 ? 16 : 14,
                                    fontFamily: FontFamily.sFProDisplay,
                                    color: const Color(0xFFADB5BD)),
                              ),
                            ],
                          ),
                          AutoSizeText(
                            title ?? '',
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
                                location ?? '',
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
                                    AutoSizeText("$spotsLeft spots left",
                                        style: TextStyle(
                                            fontFamily: FontFamily.sFProDisplay,
                                            fontSize:
                                                screenWidth > 700 ? 12 : 10,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xFFADB5BD)))
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              SizedBox(
                                height: 20,
                                width: 135,
                                child: ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: tags?.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5.0),
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5.0, vertical: 2.0),
                                          decoration: BoxDecoration(
                                              color: tags?[index] == 'light'
                                                  ? MainColors.lightIntensity
                                                  : tags?[index] == 'medium'
                                                      ? MainColors
                                                          .mediumIntensity
                                                      : tags?[index] == 'high'
                                                          ? MainColors
                                                              .highIntensity
                                                          : tags?[index] ==
                                                                  'vey high'
                                                              ? MainColors
                                                                  .veryHighItensity
                                                              : tags?[index] ==
                                                                      'workspace'
                                                                  ? MainColors
                                                                      .workSpace
                                                                  : MainColors
                                                                      .childCareTag,
                                              borderRadius:
                                                  BorderRadius.circular(2)),
                                          child: Center(
                                            child: AutoSizeText(tags?[index],
                                                style: TextStyle(
                                                  fontFamily:
                                                      FontFamily.sFProDisplay,
                                                  fontSize: screenWidth > 700
                                                      ? 12
                                                      : 10,
                                                  fontWeight: FontWeight.w700,
                                                  color: tags?[index] == 'light'
                                                      ? darken(
                                                          MainColors
                                                              .lightIntensity,
                                                          0.5)
                                                      : tags?[index] == 'medium'
                                                          ? darken(
                                                              MainColors
                                                                  .mediumIntensity,
                                                              0.5)
                                                          : tags?[index] ==
                                                                  'high'
                                                              ? darken(
                                                                  MainColors
                                                                      .highIntensity,
                                                                  0.5)
                                                              : tags?[index] ==
                                                                      'vey high'
                                                                  ? darken(
                                                                      MainColors
                                                                          .veryHighItensity,
                                                                      0.5)
                                                                  : tags?[index] ==
                                                                          'workspace'
                                                                      ? darken(
                                                                          MainColors
                                                                              .workSpace,
                                                                          0.5)
                                                                      : darken(
                                                                          MainColors
                                                                              .childCareTag,
                                                                          0.5),
                                                )),
                                          ),
                                        ),
                                      );
                                    }),
                              ),
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
    );
  }
}
