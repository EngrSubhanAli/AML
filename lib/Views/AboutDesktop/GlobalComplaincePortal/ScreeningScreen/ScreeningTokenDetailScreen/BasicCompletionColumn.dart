import 'package:flutter/material.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';

class BasicCompletionColumn extends StatelessWidget {
  BasicCompletionColumn(
      {Key? key,
      required this.width,
      required this.height,
      this.PersonalIdentificationNumber,
      required this.GivenNames,
      required this.Surname,
      required this.DoB,
      required this.Gender,
      required this.Nationality})
      : super(key: key);
  String? PersonalIdentificationNumber;
  String GivenNames, Surname, DoB, Gender, Nationality;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        KText(
          text: PersonalIdentificationNumber!,
          width: width,
          fs: width * 0.011,
          fw: FontWeight.w200,
          colour: blackColors,
        ),
        SizedBox(
          height: height * 0.07,
        ),
        KText(
          text: GivenNames,
          width: width,
          fs: width * 0.011,
          fw: FontWeight.w200,
          colour: blackColors,
        ),
        SizedBox(
          height: height * 0.07,
        ),
        KText(
          text: Surname,
          width: width,
          fs: width * 0.011,
          fw: FontWeight.w200,
          colour: blackColors,
        ),
        SizedBox(
          height: height * 0.07,
        ),
        KText(
          text: DoB,
          width: width,
          fs: width * 0.011,
          fw: FontWeight.w200,
          colour: blackColors,
        ),
        SizedBox(
          height: height * 0.07,
        ),
        KText(
          text: Gender,
          width: width,
          fs: width * 0.011,
          fw: FontWeight.w200,
          colour: blackColors,
        ),
        SizedBox(
          height: height * 0.07,
        ),
        KText(
          text: Nationality,
          width: width,
          fs: width * 0.011,
          fw: FontWeight.w200,
          colour: blackColors,
        ),
        SizedBox(
          height: height * 0.02,
        ),
      ],
    );
  }
}
