import 'package:flutter/material.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';

class HeadingsRow extends StatelessWidget {
  const HeadingsRow({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 8,
          child: KText(
            text: "Name",
            width: width,
            fw: FontWeight.bold,
            fs: width * 0.012,
            colour: blackColors,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 14,
          child: KText(
            text: "Screening\nToken",
            width: width,
            fw: FontWeight.bold,
            fs: width * 0.012,
            colour: blackColors,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 12.3,
          child: KText(
            text: "External Id",
            width: width,
            fw: FontWeight.bold,
            fs: width * 0.012,
            colour: blackColors,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 12,
          child: KText(
            text: "Document\nNumber",
            width: width,
            fw: FontWeight.bold,
            fs: width * 0.012,
            colour: blackColors,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 12,
          child: KText(
            text: "Nationality",
            width: width,
            fw: FontWeight.bold,
            fs: width * 0.012,
            colour: blackColors,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 16,
          child: KText(
            text: "Tags",
            width: width,
            fw: FontWeight.bold,
            fs: width * 0.012,
            colour: blackColors,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 12,
          child: KText(
            text: "Status",
            width: width,
            fw: FontWeight.bold,
            fs: width * 0.012,
            colour: blackColors,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 12,
          child: KText(
            text: "Created",
            width: width,
            fw: FontWeight.bold,
            fs: width * 0.012,
            colour: blackColors,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 9,
          child: KText(
            text: "Completed\nBy",
            width: width,
            fw: FontWeight.bold,
            fs: width * 0.012,
            colour: blackColors,
          ),
        ),
        Container(
            width: MediaQuery.of(context).size.width / 13,
            child: KText(
              text: "Company",
              width: width,
              fw: FontWeight.bold,
              fs: width * 0.012,
              colour: blackColors,
            )),
      ],
    );
  }
}
