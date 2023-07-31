import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:flutter_app/components/text.dart';

class RatingWidget extends StatelessWidget {
  final double value;
  final Color starColor;
  final Color backgroundColor;
  final double starSize;

  const RatingWidget({
    super.key,
    required this.value,
    this.starColor = Colors.yellow,
    this.backgroundColor = Colors.grey,
    this.starSize = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    /* Calculate the number of filled, half-filled, and unfilled stars */
    if (value > 5){
      Future.error('value must be <= 5');
    throw ("value must be <= 5");
    }

    int wholeStars = (value).floor();
    double partialStars = value - wholeStars;
    List<Widget> stars = [];

    for (var i = 0; i < wholeStars; i++){
      stars.add(Icon(
        Icons.star,
        color: starColor,
        size: starSize,
      ));
    }

    if (partialStars >= .5){
      stars.add(Icon(
        Icons.star_half,
        color: starColor,
        size: starSize,
      ));
    }

    while (stars.length < 5 ){
      stars.add(Icon(
        Icons.star_border,
        color: starColor,
        size: starSize,
      ));
    }

    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextComponent(value.toString(), fontSize: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: stars
        )
      ]
    );
  }
}