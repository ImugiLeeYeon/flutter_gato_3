// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gato_3/game_provider.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bg;
  bool enabled;

  Button(this.text, [this.bg = Colors.grey, this.enabled = true]);

  @override
  Widget build(BuildContext context) {
    final GameProvider state = context.watch<GameProvider>();
    final Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(top: size.height * 0.04),
      width: size.width * 0.5,
      height: size.height * 0.05,
      child: TextButton(
        onPressed: () => Navigator.pushNamed(context, '/game'),
        style: TextButton.styleFrom(
          shape: text != 'settings'
              ? RoundedRectangleBorder(
                  side: BorderSide(
                    color: bg,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(100.0),
                )
              : null,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.grey[400],
            fontFamily: 'Montserrat',
            fontSize: state.getAdaptiveTextSize(context, 16),
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
