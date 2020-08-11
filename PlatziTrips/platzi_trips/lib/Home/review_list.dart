import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, 
      children: <Widget>[
      Review("assets/img/people.jpg", "Juan", "1 review 5 photos", "beautiful place", 4),
      Review("assets/img/ben.jpg", "Ben", "no info", "Great place to visit", 3),
      Review("assets/img/elena.jpg", "Elena", "2 reviews 1 photo", "So so", 1),
      Review("assets/img/josh.jpg", "Josh", "no reviews 33 photos",
          "Excelent place", 5)
    ]);
  }
}
