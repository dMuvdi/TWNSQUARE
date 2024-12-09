import 'dart:convert';

class Activity {
  DateTime time;
  int durationMinutes;
  String title;
  String location;
  int availableSpots;
  int price;
  List<dynamic> tags;
  bool isShowing;

  Activity({
    required this.time,
    required this.durationMinutes,
    required this.title,
    required this.location,
    required this.availableSpots,
    required this.price,
    required this.tags,
    this.isShowing = true,
  });

  factory Activity.fromMap(Map<String, dynamic> map) {
    return Activity(
      time: map['time'].toDate(),
      durationMinutes: map['duration'],
      title: map['title'],
      location: map['location'],
      availableSpots: map['available_spots'],
      price: map['price'],
      tags: map['tags'],
      isShowing: map['is_showing']
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'time': time.toIso8601String(),
      'durationMinutes': durationMinutes,
      'title': title,
      'location': location,
      'availableSpots': availableSpots,
      'price': price,
      'tags': jsonEncode(tags),
      'is_showing': isShowing
    };
  }
}
