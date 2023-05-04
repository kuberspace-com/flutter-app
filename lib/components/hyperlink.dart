import 'package:flutter/material.dart';

class HyperLink extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? fontColor;
  final void Function() tap;

  const HyperLink({super.key, 
    required this.text,
    required this.tap,
    this.fontSize,
    this.fontWeight,
    this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: tap,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize ?? 16,
          fontWeight: fontWeight ?? FontWeight.bold
        )
      )
    );
  }
}
