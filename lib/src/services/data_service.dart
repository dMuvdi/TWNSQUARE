import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/activity.dart';

class DataService {
  static FirebaseFirestore firestore = FirebaseFirestore.instance;

  static Future<List<Activity>> getActivities() async {
    CollectionReference collectionRef = firestore.collection('activities');
    String documentId = "f4c12e97-3fe3-4cca-8920-535847b60b52";
    DocumentReference docRef = collectionRef.doc(documentId);
    List<Activity> activities = [];

    try {
      QuerySnapshot querySnapshot = await docRef.collection('activities').get();
      if (querySnapshot.docs.isNotEmpty) {
        activities = querySnapshot.docs
            .map<Activity>(
                (e) => Activity.fromMap(e.data() as Map<String, dynamic>))
            .toList();
      } else {
        debugPrint('Document not found');
      }
    } catch (e) {
      e.printError(); // Handle errors
    }
    return activities;
  }
}
