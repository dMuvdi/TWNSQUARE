import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:twn_square/app/screens/widgets/filtering/filter_chips_custom.dart';
import 'package:twn_square/app/screens/widgets/side_bar/side_bar.dart';
import 'package:twn_square/src/models/activity.dart';
import '../home_view_controller.dart';
import 'package:twn_square/app/screens/widgets/cards/activity_card.dart';
import 'package:twn_square/src/constants/colors.dart';
import 'package:twn_square/src/utils/gen/assets.gen.dart';

import '../../../../src/utils/gen/fonts.gen.dart';

class MobileWebHomeView extends GetView<HomeViewControllerWeb> {
  MobileWebHomeView({super.key, required this.constraints});

  final BoxConstraints constraints;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const SideBar(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.menu, color: Colors.white, size: 30),
                onPressed: () => _scaffoldKey.currentState!.openDrawer(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('TWN',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w700)),
                  Text('SQR',
                      style: TextStyle(
                          color: MainColors.primary600,
                          fontSize: 28,
                          fontWeight: FontWeight.w700)),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 20.0),
                    child: Text(
                      DateFormat('EEE, dd MMM').format(DateTime.now()),
                      style: TextStyle(
                          fontFamily: FontFamily.sFProDisplay,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: MainColors.neutral600),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
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
                  //
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                    child: Container(
                      height: 100,
                      width: Get.width,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                          color: const Color(0xFFBAE6FD),
                          borderRadius: BorderRadius.circular(10.0)),
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
                            height: 20.0,
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
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, right: 25.0),
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
                              horizontal: 20.0, vertical: 10.0),
                          hintText: 'What do you feel like doing?',
                          hintStyle:
                              const TextStyle(color: Colors.grey, fontSize: 15),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: FilterChipsCustom(
                        selectedFilters: controller.selectedFilters,
                        filters: controller.filters,
                        onSelected: (value) => controller.filterLogic(value)),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 25.0),
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
                                length: Get.height * 0.63,
                                dashLength: 7,
                                dashThickness: 3.0,
                                dashColor: Colors.grey[300] ?? Colors.white),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 50.0, top: 4.0),
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
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 35.0, right: 10.0),
                            child: Obx(() => Column(
                                mainAxisSize: MainAxisSize.min,
                                children: controller.filteredActivities
                                    .map((Activity activity) => ActivityCard(
                                          isWeb: constraints.maxWidth < 513
                                              ? false
                                              : true,
                                          title: activity.title,
                                          time: activity.time,
                                          duration: activity.durationMinutes,
                                          location: activity.location,
                                          price: activity.price,
                                          spotsLeft: activity.availableSpots,
                                          tags: activity.tags,
                                          isShowing: activity.isShowing,
                                        ))
                                    .toList())),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                      width: Get.width, // Adjust the width as needed
                      color: Colors.white,
                      padding: const EdgeInsets.only(
                          right: 30.0, top: 20.0, bottom: 50.0, left: 30.0),
                      child: Column(
                        children: [
                          Container(
                            height: 280,
                            width: Get.width,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 30),
                            decoration: BoxDecoration(
                                color: const Color(0xFFFBF2C0),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(6.0),
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
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Learn more',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                          ),
                                          Icon(
                                            Icons.arrow_circle_right_outlined,
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
                                  borderRadius: BorderRadius.circular(10.0)),
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
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white),
                                          ),
                                          const SizedBox(
                                            height: 20.0,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 30.0),
                                            child: Container(
                                              height: 45,
                                              width: Get.width,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 30.0),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
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
                                              child: const Center(
                                                child: Text(
                                                  'See more',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black),
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
                                        settings: RestrictedAmountPositions(
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
            ],
          ),
        ),
      ),
    );
  }
}
