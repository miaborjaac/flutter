import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0, bottom: 20.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: InkWell(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Contactando"),
            ));
          },
          child: Container(
            height: 30.0,
            width: 30.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              gradient: LinearGradient(
                colors: [
                  Colors.deepPurple,
                  Colors.deepPurpleAccent,
                ],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp,
              ),
            ),
            child: Icon(
              Icons.mail,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
