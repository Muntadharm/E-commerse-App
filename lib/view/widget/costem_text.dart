import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustenText extends StatelessWidget {
  final String text;
  final double font;
  final Color color;
  final Alignment alignment;
  const CustenText({
    Key? key,
    this.alignment = Alignment.topLeft,
    this.text = '',
    this.font = 20,
    this.color = Colors.black,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: alignment,
        child: Text(
          text,
          //textAlign: TextAlign.start,
          style: TextStyle(
              fontSize: font, fontWeight: FontWeight.w500, color: color),
        ));
  }
}
