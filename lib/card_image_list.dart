import 'package:flutter/material.dart';
import 'package:flutter_examples/image_card.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ImageCard("assets/img/img1.jpg"),
          ImageCard("assets/img/img2.jpg"),
          ImageCard("assets/img/img3.jpg"),
          ImageCard("assets/img/img4.jpg"),
        ],
      ),
    );
  }
}
