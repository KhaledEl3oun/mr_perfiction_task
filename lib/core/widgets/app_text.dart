import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final double fontsize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign? textAlign;

   AppText({super.key, required this.text, required this.fontsize, required this.fontWeight, required this.color, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(text,
    textAlign: textAlign,
     style: TextStyle(
      fontSize: fontsize,
      fontWeight: fontWeight,
      fontFamily: 'Inter',
      color: color));
  }
}