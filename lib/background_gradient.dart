import 'package:flutter/material.dart';

class BackgroundGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.purple, Colors.purpleAccent],
            begin: FractionalOffset(0.2, 0.0),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp),
      ),
    );
  }
}
