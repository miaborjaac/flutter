import 'package:flutter/material.dart';

class ContactHeader extends StatelessWidget {
  String title = "Contactos";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.blueAccent],
              begin: FractionalOffset(0.2, 0.0),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold,
          ),
        ),
        alignment: Alignment(-0.9, -0.6),
      ),
    );
  }
}
