import 'dart:ffi';

import 'package:flutter/material.dart';

class RoundInputField extends StatelessWidget {
  final String hintText;
  final String? Function(String?) validator;
  final Int? fontSize;

  const RoundInputField({super.key, 
    required this.hintText,
    required this.validator,
    this.fontSize
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29),
      ),
      child: TextFormField(
                    style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                    decoration: InputDecoration(
                                    enabledBorder: const UnderlineInputBorder(      
                      borderSide: BorderSide(color: Colors.transparent),   
                      ),  
                      focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                   ),  
                      hintText: hintText,
                    ),
                    validator: validator
                  ) ,
    );
  }
}