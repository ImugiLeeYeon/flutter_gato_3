import 'package:flutter/material.dart';
import 'package:flutter_gato_3/game_page.dart';

class Game extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Back(),
            Column(
              children: [
                WhoseMove(),
                Board(),
              ],
            ),
            Results(),
          ],
        ),
      ),
    );
  }
}
