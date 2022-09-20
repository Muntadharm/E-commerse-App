import 'dart:ffi';

import 'package:flutter/material.dart';

import 'colors.dart';
import 'costem_text.dart';

class custtomButton extends StatelessWidget {
  final String text;
  final void Function() onprassed;
  final MaterialStateProperty<Color>? backgroundColor;
  custtomButton({
    Key? key,
    this.backgroundColor,
    required this.text,
    required this.onprassed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SizedBox(
      height: 60,
      width: 400,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: backgroundColor,
        ),
        //backgroundColor: o,
        onPressed: onprassed,

        child: CustenText(
          text: text,
          color: b,
          alignment: Alignment.center,
        ),
      ),
    ));
  }
}
