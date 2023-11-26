// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  //passing title for the button like 1,2 etc.
  final String title;
  //passing color code for the button
  final Color color;
  final VoidCallback onPress;
  MyButton(
      {Key? key,
      required this.title,
      required this.onPress,
      this.color = const Color(0xffa5a5a5)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //expanded widget occupies the given height and width if mention otherwise take the whole screen.
    return Expanded(
      child: InkWell(
        onTap: () {
          onPress();
        },
        child: Container(
          height: 80,
          decoration: BoxDecoration(shape: BoxShape.circle, color: color),
          child: Center(
            child: Text(
              title,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
