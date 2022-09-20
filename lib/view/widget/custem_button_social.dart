import 'package:flutter/material.dart';

import 'package:e_commers_app/view/widget/colors.dart';

import 'costem_text.dart';

class CustemButtonSocial extends StatelessWidget {
  final String image;
  final String text;
  final void Function() onprassed;
  final MaterialStateProperty<Color>? backgroundColor;
  const CustemButtonSocial({
    Key? key,
    required this.image,
    required this.text,
    required this.onprassed,
    this.backgroundColor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
          height: 50,
          width: 400,
          child: ElevatedButton(
              style: ButtonStyle(backgroundColor: backgroundColor),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    image,
                    height: 25,
                    width: 25,
                  ),
                  const SizedBox(
                    width: 75,
                  ),
                  CustenText(
                    text: text,
                    alignment: Alignment.center,
                  ),
                ],
              ))),
    );
  }
}
