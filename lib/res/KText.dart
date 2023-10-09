import 'package:flutter/material.dart';

class KText extends StatelessWidget {
  KText(
      {Key? key,
      required this.width,
      this.fw,
      this.fs,
      required this.text,
      required this.colour,
      this.ovrFlow,
      this.ltrSpacing,
      this.wordSpacng,
      this.textAlign,
      this.h})
      : super(key: key);

  final double width;
  final FontWeight? fw;
  final double? fs, wordSpacng;
  double? ltrSpacing;
  final String text;
  final Color colour;
  TextAlign? textAlign;
  TextOverflow? ovrFlow;
  double? h;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.start,
      overflow: ovrFlow,
      style: TextStyle(
          height: h,
          wordSpacing: wordSpacng ?? 0,
          fontWeight: fw ?? FontWeight.normal,
          fontSize: fs,
          letterSpacing: ltrSpacing,
          color: colour),
    );
  }
}
