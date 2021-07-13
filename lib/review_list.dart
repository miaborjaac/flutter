import 'package:flutter/material.dart';
import 'package:flutter_examples/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/Gal_Gadot.jpg", "Gal Gadot", "10 review 5 photos",
            "There is an amazing place in Sri Lanka", 4),
        Review("assets/img/Gal_Gadot.jpg", "Gal Gadot", "15 review 7 photos",
            "There is an amazing place in Sri Lanka", 5),
        Review("assets/img/Gal_Gadot.jpg", "Gal Gadot", "21 review 8 photos",
            "There is an amazing place in Sri Lanka", 3),
        Review("assets/img/Gal_Gadot.jpg", "Gal Gadot", "4 review 9 photos",
            "There is an amazing place in Sri Lanka", 4),
      ],
    );
  }
}
