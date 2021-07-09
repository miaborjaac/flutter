import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final star_half = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(Icons.star_half, color: Colors.yellow),
    );

    final star_border = Container(
        margin: EdgeInsets.only(top: 323.0, right: 3.0),
        child: Icon(Icons.star_border, color: Colors.yellow));

    final star = Container(
        margin: EdgeInsets.only(top: 323.0, right: 3.0),
        child: Icon(Icons.star, color: Colors.yellow));

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
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
          children: <Widget>[star, star, star, star, star_half],
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
      children: <Widget>[title_stars, description],
    );
  }
}
