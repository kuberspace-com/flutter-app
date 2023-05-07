
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class RoundInputField extends StatelessWidget{
  final String hintText;
  final String? Function(String?) validator;
  final void Function(PointerDownEvent?)? tap;
  final double? fontSize;
  final String? size;
  final double? height;
  final double? width;
  final double? margin;
  final TextEditingController? controller;
  const RoundInputField({super.key,  this.tap, this.controller, required this.hintText, required this.validator, this.fontSize, this.size, this.height, this.width, this.margin});


  @override
  Widget build(BuildContext context) {

    return Container(
        width: width ?? MediaQuery.of(context).size.width * 0.8,
        margin: EdgeInsets.all(margin ?? 20),
        child:
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.text,
            textAlignVertical: TextAlignVertical.center,
            textAlign: TextAlign.left,
            inputFormatters: [
              TextInputFormatter.withFunction((TextEditingValue oldValue, TextEditingValue newValue) {
                if (newValue.text.length == 1) {
                  String newText = newValue.text[0].toUpperCase() + newValue.text.toString().substring(1);
                  return TextEditingValue(text: newText, selection: TextSelection.collapsed(offset: newValue.text.length));
                }
                return newValue;
              })
            ],
            style: TextStyle(fontSize: fontSize ?? 14, fontWeight: FontWeight.w700),
            validator: validator,
            onTapOutside: tap,
            decoration: InputDecoration(         
              labelText: '  $hintText',
              filled: true,
              // errorText: controller?.text,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.all(10),
              labelStyle: TextStyle(
                color: Colors.deepPurpleAccent, 
                letterSpacing: 2,
                fontSize: fontSize ?? 14
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              hintText: hintText,
            ),
          )
        );
  }
}