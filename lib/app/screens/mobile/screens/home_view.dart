import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'dart:math' as math;
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:twn_square/app/screens/mobile/screens/home_view_controller.dart';
import 'package:twn_square/app/screens/widgets/cards/activity_card.dart';
import 'package:twn_square/src/constants/colors.dart';
import 'package:twn_square/src/utils/gen/assets.gen.dart';
import 'package:twn_square/src/utils/gen/fonts.gen.dart';

import '../../../../src/models/activity.dart';

class MobileHomeView extends GetView<HomeViewController> {
  const MobileHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                DateFormat('EEE, dd MMM').format(DateTime.now()),
                style: TextStyle(
                    fontFamily: FontFamily.sFProDisplay,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: MainColors.neutral600),
              ),
              Row(
                children: [
                  AssetsToken.icons.bell.svg(
                    width: 28,
                    height: 28,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const CircleAvatar(
                    radius: 15,
                    backgroundImage: NetworkImage(
                        'https://plus.unsplash.com/premium_photo-1683121366070-5ceb7e007a97?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: 1,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "This week in Estepona",
                    style: TextStyle(
                        fontFamily: FontFamily.sFProDisplay,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    height: 100,
                    width: Get.width,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        color: const Color(0xFFBAE6FD),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: FittedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'You\'re close to your goal!',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              const Text(
                                'Join more sport activities to collect more points',
                                style: TextStyle(
                                    fontSize: 12.5,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        tapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        backgroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        minimumSize:
                                            const Size(1, 23), // width, height
                                      ),
                                      child: const Text(
                                        "Join now",
                                        style: TextStyle(
                                            fontFamily: FontFamily.sFProDisplay,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      )),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        tapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        backgroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        minimumSize:
                                            const Size(1, 23), // width, height
                                      ),
                                      child: const Text(
                                        "My points",
                                        style: TextStyle(
                                            fontFamily: FontFamily.sFProDisplay,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      )),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          CircularPercentIndicator(
                            radius: 35,
                            lineWidth: 6.0,
                            percent: 0.60,
                            backgroundColor: Colors.white,
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: const Color(0xFF6ABEF6),
                            center: const Text(
                              '27',
                              style: TextStyle(
                                  fontFamily: FontFamily.sFProDisplay,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 25),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                      onChanged: (value) => controller.getSearch(value),
                      cursorColor: Colors.lightBlue,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        hintText: 'What do you feel like doing?',
                        hintStyle: const TextStyle(color: Colors.grey),
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
                                      left: 20.0, right: 10.0),
                                  child: Container(
                                    height: 38,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: const Color(0xFFEEE1F5),
                                        borderRadius: BorderRadius.circular(6)),
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
                                          const EdgeInsets.only(right: 8.0),
                                      child: ChoiceChip(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            side: const BorderSide(
                                                color: Colors.transparent),
                                          ),
                                          showCheckmark: false,
                                          selectedColor:
                                              const Color(0xFFBAA1C8),
                                          backgroundColor:
                                              const Color(0xFFEEE1F5),
                                          label: Text(e),
                                          selected: controller.selectedFilters
                                              .contains(e),
                                          onSelected: (bool value) {
                                            controller.filterLogic(e);
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 20.0),
                      child: Column(
                        children: [
                          Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                                color: const Color(0xFFFFF2AC),
                                borderRadius: BorderRadius.circular(100)),
                          ),
                          const SizedBox(
                            height: 2.0,
                          ),
                          Dash(
                              direction: Axis.vertical,
                              length: Get.height,
                              dashLength: 7,
                              dashThickness: 3.0,
                              dashColor: Colors.grey[300] ?? Colors.white),
                        ],
                      ),
                    ),
                    RefreshIndicator(
                      onRefresh: () async {
                        await controller.getActivities();
                      },
                      child: SizedBox(
                        height: Get.height * 0.47,
                        width: Get.width - 35,
                        child: SingleChildScrollView(
                          child: SizedBox(
                            width: double.infinity,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Row(
                                    children: [
                                      const Text(
                                        'Today',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        ' / ${DateFormat('EEEE').format(DateTime.now())}',
                                        style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                ),
                                Obx(() => Column(
                                    children: controller.filteredActivities
                                        .map(
                                            (Activity activity) => ActivityCard(
                                                  isWeb: false,
                                                  title: activity.title,
                                                  time: activity.time,
                                                  duration:
                                                      activity.durationMinutes,
                                                  location: activity.location,
                                                  price: activity.price,
                                                  spotsLeft:
                                                      activity.availableSpots,
                                                  tags: activity.tags,
                                                  isShowing: activity.isShowing,
                                                ))
                                        .toList())),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          }),
    );
  }
}
