import 'package:flutter/material.dart';
import 'package:flutter_gato_3/shapes.dart';
import 'package:flutter_gato_3/home_page_widgets.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
              bottom: size.height * 0.07, top: size.height * 0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Circle(size.width * 0.15),
                      XSign(size.width * 0.15),
                    ],
                  ),
                  ButtonsWrapper(),
                  Button('settings'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
