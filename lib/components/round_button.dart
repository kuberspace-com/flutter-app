import 'dart:ffi';

import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String text;
  final Int? fontSize;
  final Color? background;
  final Color? borderColor;
  final String? screenRoute;
  final void Function()? tap;

  const RoundButton({super.key, 
    required this.text,
    this.tap,
    this.fontSize,
    this.background,
    this.borderColor,
    this.screenRoute
  });

  @override
  Widget build(BuildContext context) {
    return  SizedBox( 
                width: MediaQuery.of(context).size.width * 0.80,
                height: 50.0,
                child: TextButton(
                  onPressed: tap, 
                  style: TextButton.styleFrom(
                    backgroundColor: background ?? const Color.fromARGB(255, 0, 0, 0), 
                    shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30),
                    ),
                    side: BorderSide(
                      color: borderColor ?? Colors.white, width: 0.5))
                  ),
                  child:  Text(
                    text,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 19
                    )
                  )
                ),
              );
  }
}