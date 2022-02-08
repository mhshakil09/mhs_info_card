import 'dart:ffi';

import 'package:flutter/material.dart';

class InfoCardWidget extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String text;
  final double fontSize;
  final Color fontColor;
  final double letterSpacing;

  const InfoCardWidget(
      {Key? key,
      required this.icon,
      required this.iconColor,
      required this.text,
      this.fontSize = 20.0,
      this.fontColor = const Color(0xFF004D40),
      this.letterSpacing = 2.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListTile(
        leading: Icon(
          icon,
          color: iconColor,
        ),
        title: Text(
          text,
          style: TextStyle(
            fontFamily: 'Source Sans Pro',
            fontSize: fontSize,
            color: fontColor,
            letterSpacing: letterSpacing,
          ),
        ),
      ),
    );
  }
}
