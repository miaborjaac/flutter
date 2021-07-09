import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/img/Gal_Gadot.jpg";
  String name = "Gal Gadot";
  String details = "1 review 5 photos";
  String comments = "There is an amazing place in Sri Lanka";

  Review(this.pathImage, this.name, this.details, this.comments);

  @override
  Widget build(BuildContext context) {
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
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,
        ),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
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
        userName,
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
