import 'package:flutter/material.dart';

class AbbreviatedDate extends StatelessWidget {
  final DateTime value;

  const AbbreviatedDate({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    DateTime currentDateTime = DateTime.now();
    int yearsPassed = currentDateTime.year - this.value.year;
    int monthsPassed = currentDateTime.month - this.value.month;
    int daysPassed = currentDateTime.day - this.value.day;
    int hoursPassed = currentDateTime.hour - this.value.hour;
    int minutesPassed = currentDateTime.minute - this.value.minute;
    int secondsPassed = currentDateTime.second - this.value.second;

    if (yearsPassed > 0){
      return Text("${yearsPassed}y");
    } else if (monthsPassed > 0){
      return Text("${monthsPassed}mo");
    } else if (daysPassed > 0){
      return Text("${daysPassed}d");
    } else if (hoursPassed > 0){
      return Text("${hoursPassed}h");
    } else if (minutesPassed > 0){
      return Text("${minutesPassed}m");
    } else if (secondsPassed > 0){
      return Text("${secondsPassed}s");
    } else {
      return const Text("0s");
    }
  }
}