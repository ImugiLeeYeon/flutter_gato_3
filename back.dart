import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gato_3/game_provider.dart';

class Back extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(left: size.width * 0.02),
      child: Align(
        alignment: Alignment.centerLeft,
        child: CupertinoNavigationBarBackButton(
          color: Colors.white,
          previousPageTitle: 'Back',
          onPressed: () {
            context.read<GameProvider>().restartGame();
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
