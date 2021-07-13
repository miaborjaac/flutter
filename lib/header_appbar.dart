import 'package:flutter/material.dart';
import 'package:flutter_examples/background_gradient.dart';
import 'package:flutter_examples/card_image_list.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundGradient("Bienvenido"),
        CardImageList(),
      ],
    );
  }
}
