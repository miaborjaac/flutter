import 'package:flutter/material.dart';
import 'package:flutter_examples/contacts_list/contact_button.dart';

class Contact extends StatelessWidget {
  String contactName = "";
  String contactDescription = "";

  Contact(this.contactName, this.contactDescription);

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/img/Gal_Gadot.jpg"),
        ),
      ),
    );

    final name = Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Text(
        contactName,
        style: TextStyle(
          fontSize: 14.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    final description = Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Text(
        contactDescription,
        style: TextStyle(
          fontSize: 13.0,
          fontFamily: "Lato",
        ),
      ),
    );

    final information = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        name,
        description,
      ],
    );

    final contactButton = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ContactButton(),
      ],
    );

    return Row(
      children: [
        photo,
        information,
        contactButton,
      ],
    );
  }
}
