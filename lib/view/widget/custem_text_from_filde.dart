import 'dart:ffi';

import 'package:flutter/material.dart';

import 'colors.dart';
import 'costem_text.dart';

class TextFromFiled extends StatelessWidget {
  final String Text;
  final String? hint;
  final Void? Function(String?)? onSave;
  final String? Function(String?)? Validator;
  const TextFromFiled(
      {super.key, required this.Text, this.hint, this.onSave, this.Validator});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Column(children: [
        CustenText(
          text: Text,
          color: b,
          font: 16,
        ),
        TextFormField(
          onSaved: onSave,
          validator: Validator,
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: const TextStyle(color: gy),
              fillColor: w),
        ),
      ]),
    );
  }
}
