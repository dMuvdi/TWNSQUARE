import 'package:flutter/material.dart';
import 'package:twn_square/src/models/activity.dart';
import 'package:twn_square/src/services/data_service.dart';

class WebHomeView extends StatelessWidget {
  const WebHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        children: [
          const Text("Web View"),
          TextButton(onPressed: () async {
            List<Activity> activities = await DataService.getActivities();
            debugPrint(activities[0].title);
          }, child: const Text("Fetch"))
        ],
      ),),
    );
  }
}