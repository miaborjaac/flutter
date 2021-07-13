import 'package:flutter/material.dart';
import 'package:flutter_examples/main_button.dart';
import 'package:flutter_examples/subcomponents/star_constants.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 350.0),
          child: Text(
            namePlace,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
              fontFamily: "Lato",
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 350.0),
              child: Row(
                children: <Widget>[star, star, star, starHalf, starBorder],
              ),
            )
          ],
        )
      ],
    );

    final description = Container(
      margin: new EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: new Text(
        descriptionPlace,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 16.0,
          fontWeight: FontWeight.w900,
          color: Colors.black54,
        ),
        textAlign: TextAlign.left,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[titleStars, description, MainButton("Navigate")],
    );
  }
}
