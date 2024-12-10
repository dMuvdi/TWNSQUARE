import 'dart:math' as math;

import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:twn_square/src/models/activity.dart';
import 'home_view_controller.dart';
import 'package:twn_square/app/screens/widgets/cards/activity_card.dart';
import 'package:twn_square/src/constants/colors.dart';
import 'package:twn_square/src/utils/gen/assets.gen.dart';

import '../../../src/utils/gen/fonts.gen.dart';

class WebHomeView extends GetView<HomeViewControllerWeb> {
  const WebHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Container(
            width: 250, // Adjust the width as needed
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
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
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
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
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 50.0, top: 45.0),
                              child: Text(
                                DateFormat('EEE, dd MMM')
                                    .format(DateTime.now()),
                                style: TextStyle(
                                    fontFamily: FontFamily.sFProDisplay,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: MainColors.neutral600),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 50.0),
                              child: Text(
                                "This week in Estepona",
                                style: TextStyle(
                                    fontFamily: FontFamily.sFProDisplay,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 50.0, right: 30.0),
                              child: Container(
                                height: 50,
                                width: Get.width,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12.withOpacity(0.2),
                                        spreadRadius: 0,
                                        blurRadius: 8,
                                        offset: const Offset(
                                            3, 3), // changes position of shadow
                                      ),
                                    ]),
                                child: TextField(
                                  onTapOutside: (event) {
                                    FocusScope.of(Get.context!).unfocus();
                                  },
                                  cursorColor: Colors.lightBlue,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 20.0, vertical: 10.0),
                                    hintText: 'What do you feel like doing?',
                                    hintStyle: const TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                    border: InputBorder.none,
                                    suffixIcon: Container(
                                      padding: const EdgeInsets.all(10),
                                      width: 10,
                                      height: 10,
                                      child: AssetsToken.icons.search.svg(
                                          width: 25,
                                          height: 25,
                                          color: Colors.black,
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Obx(() => SizedBox(
                                  width: Get.width,
                                  height: 40,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 50.0, right: 10.0),
                                              child: Container(
                                                height: 38,
                                                width: 60,
                                                decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xFFEEE1F5),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6)),
                                                child: Transform.rotate(
                                                  angle: 90 * math.pi / 180,
                                                  child: const Icon(
                                                    Icons.tune,
                                                    size: 25,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ] +
                                          controller.filters
                                              .map(
                                                (e) => Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 8.0),
                                                  child: ChoiceChip(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6),
                                                        side: const BorderSide(
                                                            color: Colors
                                                                .transparent),
                                                      ),
                                                      showCheckmark: false,
                                                      selectedColor:
                                                          const Color(
                                                              0xFFBAA1C8),
                                                      backgroundColor:
                                                          const Color(
                                                              0xFFEEE1F5),
                                                      label: Text(e),
                                                      selected: controller
                                                          .selectedFilters
                                                          .contains(e),
                                                      onSelected: (bool value) {
                                                        controller
                                                            .filterLogic(e);
                                                      }),
                                                ),
                                              )
                                              .toList(),
                                    ),
                                  ),
                                )),
                            const SizedBox(
                              height: 10.0,
                            ),
                            FittedBox(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0, left: 20.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 15,
                                          height: 15,
                                          decoration: BoxDecoration(
                                              color: const Color(0xFFFFF2AC),
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                        ),
                                        const SizedBox(
                                          height: 2.0,
                                        ),
                                        Dash(
                                            direction: Axis.vertical,
                                            length: Get.height,
                                            dashLength: 7,
                                            dashThickness: 3.0,
                                            dashColor: Colors.grey[300] ??
                                                Colors.white),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: Get.height,
                                    width: Get.width * 0.5,
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15.0),
                                            child: Row(
                                              children: [
                                                const Text(
                                                  'Today',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.black),
                                                ),
                                                Text(
                                                  ' / ${DateFormat('EEEE').format(DateTime.now())}',
                                                  style: const TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                )
                                              ],
                                            ),
                                          ),
                                          Obx(() => Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: controller
                                                  .filteredActivities
                                                  .map((Activity activity) =>
                                                      ActivityCard(
                                                        isWeb: true,
                                                        title: activity.title,
                                                        time: activity.time,
                                                        duration: activity
                                                            .durationMinutes,
                                                        location:
                                                            activity.location,
                                                        price: activity.price,
                                                        spotsLeft: activity
                                                            .availableSpots,
                                                        tags: activity.tags,
                                                        isShowing:
                                                            activity.isShowing,
                                                      ))
                                                  .toList())),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Container(
                              width: 400, // Adjust the width as needed
                              color: Colors.white,
                              padding:
                                  const EdgeInsets.only(top: 50.0, right: 30.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: 180,
                                    width: Get.width,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 5),
                                    decoration: BoxDecoration(
                                        color: const Color(0xFFBAE6FD),
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: FittedBox(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'You\'re close to your goal!',
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          const SizedBox(
                                            width: 20.0,
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 170,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const Text(
                                                      'Join more sport activities to collect more points',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                    const SizedBox(
                                                      height: 10.0,
                                                    ),
                                                    Row(
                                                      children: [
                                                        ElevatedButton(
                                                            onPressed: () {},
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              tapTargetSize:
                                                                  MaterialTapTargetSize
                                                                      .shrinkWrap,
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          10.0),
                                                              backgroundColor:
                                                                  Colors.black,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            4),
                                                              ),
                                                              minimumSize:
                                                                  const Size(1,
                                                                      23), // width, height
                                                            ),
                                                            child: const Text(
                                                              "Join now",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      FontFamily
                                                                          .sFProDisplay,
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .white),
                                                            )),
                                                        const SizedBox(
                                                          width: 10.0,
                                                        ),
                                                        ElevatedButton(
                                                            onPressed: () {},
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              tapTargetSize:
                                                                  MaterialTapTargetSize
                                                                      .shrinkWrap,
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          10.0),
                                                              backgroundColor:
                                                                  Colors.black,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            4),
                                                              ),
                                                              minimumSize:
                                                                  const Size(1,
                                                                      23), // width, height
                                                            ),
                                                            child: const Text(
                                                              "My points",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      FontFamily
                                                                          .sFProDisplay,
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .white),
                                                            )),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              CircularPercentIndicator(
                                                radius: 35,
                                                lineWidth: 6.0,
                                                percent: 0.60,
                                                backgroundColor: Colors.white,
                                                circularStrokeCap:
                                                    CircularStrokeCap.round,
                                                progressColor:
                                                    const Color(0xFF6ABEF6),
                                                center: const Text(
                                                  '27',
                                                  style: TextStyle(
                                                      fontFamily: FontFamily
                                                          .sFProDisplay,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 25),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 25.0,
                                  ),
                                  Container(
                                    height: 280,
                                    width: Get.width,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 30),
                                    decoration: BoxDecoration(
                                        color: const Color(0xFFFBF2C0),
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              width: 215.0,
                                              child: Text(
                                                'Weakly workshops for kids',
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 8.0,
                                            ),
                                            const Text(
                                              'Sign up for early access to weekly activities for your kids full of learning and fun!',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black),
                                            ),
                                            const SizedBox(
                                              height: 15.0,
                                            ),
                                            Container(
                                              height: 35,
                                              width: Get.width,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10.0),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.0),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black12
                                                          .withOpacity(0.2),
                                                      spreadRadius: 0,
                                                      blurRadius: 8,
                                                      offset: const Offset(3,
                                                          3), // changes position of shadow
                                                    ),
                                                  ]),
                                              child: const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Learn more',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.black),
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .arrow_circle_right_outlined,
                                                    size: 30,
                                                    color: Colors.black,
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 25.0,
                                  ),
                                  Container(
                                      height: 400,
                                      width: Get.width,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 25, vertical: 30),
                                      decoration: BoxDecoration(
                                          image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              opacity: 0.9,
                                              image: NetworkImage(
                                                  'https://s3-alpha-sig.figma.com/img/f66b/5923/c40ca6456e50a2503cc51f373cf61b31?Expires=1734912000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=bXVt9f-OUf6olPbjyw-cmvpz6ktr8WgUeeirDPgeWQ8hvUV5Cvig9OVYIgavr2VXh9OWJJGArSPCrqfoQy0hh72onRXMLonST~k1moyboD8IxQ0m8Z~LcpqnU3ol~Wbl-UGkkQcXyW375d7NFvpoiuYfu1h93PfsB4l~3f1bNeRBoYFGWDPIK8IZPO6Dvtn0lrKgc7mKaiQyi4BbLuuWANKRDGuTYAR~w7d8NAwg9AeMnMkqid8G8kmlfQrW2N0FlwkmdsImHhAnBsRBBucbKrfEhsFv9~AYnmEtyOGEQ9J1sAblrPvv2uUw6X-ouxKVArMQmAebP1nuRurGubwnfQ__')),
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      child: Stack(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                                'Popular events near you!',
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.white),
                                              ),
                                              Column(
                                                children: [
                                                  const Text(
                                                    'Unleash the fun! Explore the world of exciting events happening near you.',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white),
                                                  ),
                                                  const SizedBox(
                                                    height: 20.0,
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 30.0),
                                                    child: Container(
                                                      height: 45,
                                                      width: Get.width,
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 30.0),
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors
                                                                  .black12
                                                                  .withOpacity(
                                                                      0.2),
                                                              spreadRadius: 0,
                                                              blurRadius: 8,
                                                              offset: const Offset(
                                                                  3,
                                                                  3), // changes position of shadow
                                                            ),
                                                          ]),
                                                      child: const Center(
                                                        child: Text(
                                                          'See more',
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          Positioned(
                                            bottom: 0,
                                            left: 10,
                                            child: SizedBox(
                                              height: 50,
                                              width: 70,
                                              child: AvatarStack(
                                                borderWidth: 0.0,
                                                settings:
                                                    RestrictedAmountPositions(
                                                  maxAmountItems: 10,
                                                  maxCoverage: 0.7,
                                                ),
                                                avatars: const [
                                                  NetworkImage(
                                                      'https://plus.unsplash.com/premium_photo-1683121366070-5ceb7e007a97?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D'),
                                                  NetworkImage(
                                                      'https://wac-cdn.atlassian.com/dam/jcr:ba03a215-2f45-40f5-8540-b2015223c918/Max-R_Headshot%20(1).jpg?cdnVersion=2459'),
                                                  NetworkImage(
                                                      'https://media.licdn.com/dms/image/v2/C4D03AQEeEyYzNtDq7g/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1524234561685?e=2147483647&v=beta&t=uHzeaBv3V2z6Tp6wvhzGABlTs9HR-SP-tEX1UbYNn4Q')
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      )),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      // child: Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
      //   child: LayoutBuilder(builder: (context, constraints) {
      //     double screenWidth =
      //         constraints.maxWidth; // Adjust the divisor to control scaling

      //     return Container(
      //       width: Get.width,
      //       height: 145,
      //       padding:
      //           const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
      //       decoration: BoxDecoration(
      //           color: Colors.white,
      //           borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      //           boxShadow: [
      //             BoxShadow(
      //               color: Colors.black.withOpacity(0.5),
      //               spreadRadius: 0,
      //               blurRadius: 8,
      //               offset: const Offset(3, 3), // changes position of shadow
      //             ),
      //           ]),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //             children: [
      //               Row(
      //                 children: [
      //                   AutoSizeText(
      //                     '8:00',
      //                     style: TextStyle(
      //                         fontSize: screenWidth > 700 ? 14 : 12,
      //                         fontFamily: FontFamily.sFProDisplay,
      //                         fontWeight: FontWeight.w500,
      //                         color: Colors.black),
      //                   ),
      //                   const SizedBox(
      //                     width: 5.0,
      //                   ),
      //                   AutoSizeText(
      //                     '(60 min)',
      //                     style: TextStyle(
      //                         fontWeight: FontWeight.w500,
      //                         fontSize: screenWidth > 700 ? 14 : 12,
      //                         fontFamily: FontFamily.sFProDisplay,
      //                         color: const Color(0xFFADB5BD)),
      //                   ),
      //                 ],
      //               ),
      //               AutoSizeText(
      //                 "Beach Yoga",
      //                 style: TextStyle(
      //                     fontFamily: FontFamily.sFProDisplay,
      //                     fontSize: screenWidth > 700 ? 20 : 14,
      //                     fontWeight: FontWeight.w700,
      //                     color: Colors.black),
      //               ),
      //               Row(
      //                 children: [
      //                   AssetsToken.icons.map_pin.svg(
      //                       color: const Color(0xFFADB5BD),
      //                       width: 13.5,
      //                       height: 13.5),
      //                   const SizedBox(
      //                     width: 4.0,
      //                   ),
      //                   AutoSizeText(
      //                     "La Playa de la Rada",
      //                     style: TextStyle(
      //                         fontFamily: FontFamily.sFProDisplay,
      //                         fontSize: screenWidth > 700 ? 14 : 12,
      //                         fontWeight: FontWeight.w500,
      //                         color: const Color(0xFFADB5BD)),
      //                   ),
      //                 ],
      //               ),
      //               const SizedBox(
      //                 height: 5.0,
      //               ),
      //               Row(
      //                 children: [
      //                   Container(
      //                     padding: const EdgeInsets.symmetric(
      //                         horizontal: 5.0, vertical: 2.0),
      //                     decoration: BoxDecoration(
      //                         color: const Color(0xFFE9ECEF),
      //                         borderRadius: BorderRadius.circular(2)),
      //                     child: Row(
      //                       mainAxisAlignment: MainAxisAlignment.center,
      //                       children: [
      //                         AssetsToken.icons.user.svg(
      //                           width: 10,
      //                           height: 10,
      //                           color: const Color(0xFFADB5BD),
      //                         ),
      //                         const SizedBox(
      //                           width: 4.0,
      //                         ),
      //                         AutoSizeText("8 spots left",
      //                             style: TextStyle(
      //                                 fontFamily: FontFamily.sFProDisplay,
      //                                 fontSize: screenWidth > 700 ? 12 : 10,
      //                                 fontWeight: FontWeight.w500,
      //                                 color: const Color(0xFFADB5BD)))
      //                       ],
      //                     ),
      //                   ),
      //                   const SizedBox(
      //                     width: 5.0,
      //                   ),
      //                   Container(
      //                     padding: const EdgeInsets.symmetric(
      //                         horizontal: 5.0, vertical: 2.0),
      //                     decoration: BoxDecoration(
      //                         color: const Color(0xFFE9ECEF),
      //                         borderRadius: BorderRadius.circular(2)),
      //                     child: Center(
      //                       child: AutoSizeText("light",
      //                           style: TextStyle(
      //                               fontFamily: FontFamily.sFProDisplay,
      //                               fontSize: screenWidth > 700 ? 12 : 10,
      //                               fontWeight: FontWeight.w700,
      //                               color: const Color(0xFFADB5BD))),
      //                     ),
      //                   ),
      //                   const SizedBox(
      //                     width: 5.0,
      //                   ),
      //                   Container(
      //                     padding: const EdgeInsets.symmetric(
      //                         horizontal: 5.0, vertical: 2.0),
      //                     decoration: BoxDecoration(
      //                         color: const Color(0xFFE9ECEF),
      //                         borderRadius: BorderRadius.circular(2)),
      //                     child: Center(
      //                       child: AutoSizeText("sports",
      //                           style: TextStyle(
      //                               fontFamily: FontFamily.sFProDisplay,
      //                               fontSize: screenWidth > 700 ? 12 : 10,
      //                               fontWeight: FontWeight.w700,
      //                               color: const Color(0xFFADB5BD))),
      //                     ),
      //                   )
      //                 ],
      //               )
      //             ],
      //           ),
      //           Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               AutoSizeText(
      //                 "9€",
      //                 style: TextStyle(
      //                     fontFamily: FontFamily.sFProDisplay,
      //                     fontSize: screenWidth > 700 ? 20 : 14,
      //                     fontWeight: FontWeight.w700,
      //                     color: Colors.black),
      //               ),
      //               const SizedBox(
      //                 height: 30,
      //               ),
      //               SizedBox(
      //                 width: 75,
      //                 height: 35,
      //                 child: ElevatedButton(
      //                     onPressed: () {},
      //                     style: ElevatedButton.styleFrom(
      //                       backgroundColor: Colors.black,
      //                       shape: RoundedRectangleBorder(
      //                         borderRadius: BorderRadius.circular(6),
      //                       ),
      //                       minimumSize: const Size.fromHeight(40),
      //                     ),
      //                     child: const AutoSizeText(
      //                       "Join",
      //                       style: TextStyle(
      //                           fontFamily: FontFamily.sFProDisplay,
      //                           fontSize: 14,
      //                           fontWeight: FontWeight.w500,
      //                           color: Colors.white),
      //                     )),
      //               )
      //             ],
      //           )
      //         ],
      //       ),
      //     );
      //   }),
      // ),
    );
  }
}
