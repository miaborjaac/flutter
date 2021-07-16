import 'package:flutter/material.dart';
import 'package:flutter_examples/contacts_list/contact_button.dart';

class Contact extends StatelessWidget {
  String contactName = "";
  String contactDescription = "";

  Contact(this.contactName, this.contactDescription);

  @override
  Widget build(BuildContext context) {
    final photo = Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20.0, top: 10.0),
          width: 80.0,
          height: 80.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/img/Gal_Gadot.jpg"),
            ),
          ),
        )
      ],
    );

    final name = Container(
      margin: EdgeInsets.only(left: 20.0, top: 10.0),
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
      margin: EdgeInsets.only(left: 20.0, top: 5),
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

    final contactButton = Container(
      child: ContactButton(contactName),
    );

    return Container(
      padding: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.black38),
        ),
      ),
      height: 110.0,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(children: [
            Expanded(
              child: Row(
                children: [
                  photo,
                  information,
                ],
              ),
            ),
            contactButton,
          ])
        ],
      ),
    );
  }
}
