import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RoundInputField extends StatelessWidget {
  final String hintText;
  final String? Function(String?) validator;
  final void Function(PointerDownEvent?)? tap;
  final double? fontSize;
  final String? size;
  final double? height;
  final double? width;
  final double? margin;
  final TextEditingController? controller;
  const RoundInputField(
      {super.key,
      this.tap,
      this.controller,
      required this.hintText,
      required this.validator,
      this.fontSize,
      this.size,
      this.height,
      this.width,
      this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width ?? MediaQuery.of(context).size.width * 0.8,
        margin: EdgeInsets.all(margin ?? 18),
        child: TextFormField(
          inputFormatters: [
            TextInputFormatter.withFunction(
                (TextEditingValue oldValue, TextEditingValue newValue) {
              if (newValue.text.length == 1) {
                String newText = newValue.text[0].toUpperCase() +
                    newValue.text.toString().substring(1);
                return TextEditingValue(
                    text: newText,
                    selection:
                        TextSelection.collapsed(offset: newValue.text.length));
              }
              return newValue;
            })
          ],
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: TextInputType.text,
          textAlignVertical: TextAlignVertical.center,
          textAlign: TextAlign.left,
          style:
              TextStyle(fontSize: fontSize ?? 14, fontWeight: FontWeight.w700),
          validator: validator,
          onTapOutside: tap,
          decoration: InputDecoration(
            labelText: '  $hintText',
            filled: true,
            // errorText: controller?.text,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.all(20),
            labelStyle: TextStyle(
                color: Colors.deepPurpleAccent,
                letterSpacing: 2,
                fontSize: fontSize ?? 14),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.black, width: 2.0),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 2,
                )),
            hintText: hintText,
          ),
        ));
  }
}
