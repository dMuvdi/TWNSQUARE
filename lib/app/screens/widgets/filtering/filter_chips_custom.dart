import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterChipsCustom extends StatelessWidget {
  const FilterChipsCustom(
      {super.key,
      required this.onSelected,
      required this.filters,
      required this.selectedFilters});

  final void Function(String)? onSelected;
  final List<String> filters;
  final List<String> selectedFilters;

  @override
  Widget build(BuildContext context) {
    return Obx(() => SizedBox(
          width: Get.width,
          height: 40,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        height: 34,
                        width: 50,
                        decoration: BoxDecoration(
                            color: const Color(0xFFEEE1F5),
                            borderRadius: BorderRadius.circular(6)),
                        child: Transform.rotate(
                          angle: 90 * math.pi / 180,
                          child: const Icon(
                            Icons.tune,
                            size: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ] +
                  filters
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: ChoiceChip(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                                side:
                                    const BorderSide(color: Colors.transparent),
                              ),
                              showCheckmark: false,
                              selectedColor: const Color(0xFFBAA1C8),
                              backgroundColor: const Color(0xFFEEE1F5),
                              label: Text(e),
                              selected: selectedFilters.contains(e),
                              onSelected: (bool value) {
                                onSelected!(e);
                              }),
                        ),
                      )
                      .toList(),
            ),
          ),
        ));
  }
}
