import 'package:flutter/material.dart';
import 'package:flutter_gato_3/button.dart';

class ButtonsWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Button('local game', Color.fromARGB(255, 2, 119, 189)),
        Button('real time game', Color.fromARGB(255, 251, 192, 45)),
        Button('invite friends', Color.fromARGB(255, 76, 175, 80)),
      ],
    );
  }
}
