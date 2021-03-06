import 'dart:async';
import 'package:flutter_gato_3/game_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gato_3/shapes.dart';

class Field extends StatefulWidget {
  final int row;
  final int place;
  final double size;

  const Field(this.row, this.place, this.size);

  @override
  _FieldState createState() => _FieldState();
}

class _FieldState extends State<Field> {
  bool disabled = false;

  void handleClick(Function saveChoice, BuildContext context) {
    saveChoice(widget.row, widget.place, context);

    setState(() {
      disabled = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final GameProvider state = context.watch<GameProvider>();

    if (state.restart == true) {
      Future.delayed(Duration.zero, () {
        setState(() {
          disabled = false;
        });
        state.handleRestart();
      });
    }

    final Size size = MediaQuery.of(context).size;
    var circle = state.movesList[widget.row][widget.place] == 'O'
                    ? Circle(
                        size.height * 0.07,
                      )
                    : null;
    var textButton = TextButton(
        onPressed: disabled == true
            ? null
            : () => handleClick(state.saveChoice, context),
        child: disabled == true
            ? state.movesList[widget.row][widget.place] == 'X'
                ? XSign(
                    size.height * 0.07,
                  )
                : circle :
    );
    return Container(
      width: widget.size / 3,
      height: widget.size / 3,
      decoration: BoxDecoration(
        border: state.determineBorder(widget.row, widget.place),
      ),
      child: textButton
    );
}
}