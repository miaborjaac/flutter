import 'package:flutter/material.dart';
import 'package:flutter_examples/subcomponents/star_constants.dart';

class Review extends StatelessWidget {
  String pathImage = "";
  String name = "";
  String details = "";
  String comments = "";
  int starsNumber = 0;
  final nameStarsChildren = <Widget>[];

  Review(
      this.pathImage, this.name, this.details, this.comments, this.starsNumber);

  @override
  Widget build(BuildContext context) {
    for (int i = 1; i <= 5; i++) {
      if (i <= starsNumber)
        nameStarsChildren.add(star);
      else
        nameStarsChildren.add(starBorder);
    }

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage),
          )),
    );

    final userName = Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,
        ),
      ),
    );

    final nameStars = Row(
      children: <Widget>[
        userName,
        Row(
          children: nameStarsChildren,
        )
      ],
    );

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0, top: 10.0),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          color: Colors.black45,
        ),
      ),
    );

    final userComments = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        comments,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          color: Colors.black,
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        nameStars,
        userInfo,
        userComments,
      ],
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails,
      ],
    );
  }
}
