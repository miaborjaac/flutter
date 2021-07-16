import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  String contactName = "";

  ContactButton(this.contactName);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Contactando a " + contactName),
          ));
        },
        child: Container(
          height: 30.0,
          width: 30.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
              colors: [
                Colors.red,
                Colors.redAccent,
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp,
            ),
          ),
          child: Center(
            child: Icon(
              Icons.mail_sharp,
              color: Colors.white,
              size: 25.0,
            ),
          ),
        ),
      ),
    );
  }
}
