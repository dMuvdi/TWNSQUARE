import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../src/models/activity.dart';
import '../../../src/services/data_service.dart';

class HomeViewControllerWeb extends GetxController {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  RxList<Activity> activities = RxList<Activity>([]);
  late StreamSubscription<QuerySnapshot<Map<String, dynamic>>> activityStream;

  RxList<String> filters =
      ['All', 'Sports', 'Food', 'Kids', 'Creative', 'Popular', 'Calm'].obs;
  RxList<String> selectedFilters = <String>[].obs;

  RxInt waitingTime = 0.obs;
  Timer? _timer;
  RxString searchTerm = ''.obs;

  final isFiltering = true.obs;

  final filterToTagsMap = {
    'All': [],
    'Sports': ['high', 'very high'],
    'Food': [],
    'Kids': ['childcare'],
    'Creative': [],
    'Popular': [],
    'Calm': ['light'],
  };

  @override
  void onInit() async {
    super.onInit();
    _startTimer();
    startListeningToActivityChanges();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      waitingTime.value++;
    });
  }

  Future<void> getActivities() async {
    activities.value = await DataService.getActivities();
  }

  void startListeningToActivityChanges() {
    CollectionReference collectionRef = firestore.collection('activities');
    String documentId = "f4c12e97-3fe3-4cca-8920-535847b60b52";
    DocumentReference docRef = collectionRef.doc(documentId);

    activityStream =
        docRef.collection('activities').snapshots().listen((snapshot) {
      if (snapshot.docs.isNotEmpty) {
        activities.value = snapshot.docs
            .map<Activity>((e) => Activity.fromMap(e.data()))
            .toList();
      } else {
        debugPrint('Document not found');
      }
    });
  }

  Future<void> filterLogic(String filter) async {
    if (filter == 'All') {
      selectedFilters.clear(); // Clear all filters
      await getActivities();
    } else {
      if (selectedFilters.contains(filter)) {
        selectedFilters.remove(filter);
      } else {
        selectedFilters.add(filter);
      }
    }
  }

  void getSearch(String value) {
    searchTerm.value = value;
  }

  List<Activity> get filteredActivities {
    if (selectedFilters.isEmpty && searchTerm.isEmpty) {
      // Show all activities, set is_showing to true for all
      for (var activity in activities) {
        activity.isShowing = true;
      }
      return activities;
    } else {
      if (searchTerm.isNotEmpty) {
        searchTerm
            .toLowerCase(); // Get the search term (lowercase for case-insensitive search)
        // Filter activities and update is_showing
        return activities.map((activity) {
          activity.isShowing = activity.title.toLowerCase().contains(searchTerm);
          return activity;
        }).toList(); // Set is_showing for filtered activities
      } else {
        // Filter activities and update is_showing
        return activities.map((activity) {
          activity.isShowing = activity.tags.any(selectedFilters
              .map((filter) => filterToTagsMap[filter])
              .toList()
              .expand((list) => list as Iterable<dynamic>)
              .toList()
              .contains);
          return activity;
        }).toList();
      }
    }
  }

  @override
  void onClose() {
    activityStream.cancel();
    // Cleanup the stream subscription
    _timer?.cancel();
    super.onClose();
  }
}
