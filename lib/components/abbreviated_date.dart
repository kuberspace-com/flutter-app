import 'package:flutter/material.dart';
import 'package:flutter_app/components/text.dart';

class AbbreviatedDate extends StatelessWidget {
  final DateTime value;

  const AbbreviatedDate({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    DateTime currentDateTime = DateTime.now();
    int yearsPassed = currentDateTime.year - value.year;
    int monthsPassed = currentDateTime.month - value.month;
    int daysPassed = currentDateTime.day - value.day;
    int hoursPassed = currentDateTime.hour - value.hour;
    int minutesPassed = currentDateTime.minute - value.minute;
    int secondsPassed = currentDateTime.second - value.second;

    if (yearsPassed > 0){
      return TextComponent("${yearsPassed}y");
    } else if (monthsPassed > 0){
      return TextComponent("${monthsPassed}mo");
    } else if (daysPassed > 0){
      return TextComponent("${daysPassed}d");
    } else if (hoursPassed > 0){
      return TextComponent("${hoursPassed}h");
    } else if (minutesPassed > 0){
      return TextComponent("${minutesPassed}m");
    } else if (secondsPassed > 0){
      return TextComponent("${secondsPassed}s");
    } else {
      return const TextComponent("0s");
    }
  }
}