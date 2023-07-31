import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  final String text;
  final Color color;
  final TextAlign textAlign;
  final double fontSize;
  final FontWeight fontWeight;

  const TextComponent(
      this.text,{super.key,
    this.color = Colors.white,
    this.textAlign = TextAlign.center,
    this.fontSize = 12,
    this.fontWeight = FontWeight.normal
  });

  @override
  Widget build(BuildContext context) {
    return (
        Text(text, textAlign: textAlign, style: TextStyle(
          fontSize: fontSize,
          color: color,
          fontWeight: fontWeight
        ),
        )
    );

  }




}