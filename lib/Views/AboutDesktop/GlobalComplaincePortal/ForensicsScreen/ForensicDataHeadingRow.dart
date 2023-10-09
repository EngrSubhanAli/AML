import 'package:flutter/material.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';

class ForensicDataHeadingRow extends StatelessWidget {
  const ForensicDataHeadingRow({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
        Container(
          width: MediaQuery.of(context).size.width / 6.3,
          child: KText(
            text: "Id",
            width: width,
            fw: FontWeight.bold,
            fs: width * 0.011,
            colour: blackColors,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 6.3,
          child: KText(
            text: "Screening Token",
            width: width,
            fw: FontWeight.bold,
            fs: width * 0.011,
            colour: blackColors,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 7.5,
          child: KText(
            text: "Tag",
            width: width,
            fw: FontWeight.bold,
            fs: width * 0.011,
            colour: blackColors,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 6.5,
          child: KText(
            text: "Status",
            width: width,
            fw: FontWeight.bold,
            fs: width * 0.011,
            colour: blackColors,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 6.5,
          child: KText(
            text: "Created",
            width: width,
            fw: FontWeight.bold,
            fs: width * 0.011,
            colour: blackColors,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 6.5,
          child: KText(
            text: "Company",
            width: width,
            fw: FontWeight.bold,
            fs: width * 0.011,
            colour: blackColors,
          ),
        ),
      ],
    );
  }
}
