import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText({
    this.text = '',
    this.fontSize = 15,
    this.color = Colors.black,
    this.fontWeight = FontWeight.normal,
  });
  final String? text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Text(
        text ?? 'Default Value',
        style: TextStyle(
            fontSize: fontSize, color: color, fontWeight: fontWeight),
      ),
    );
  }
}
