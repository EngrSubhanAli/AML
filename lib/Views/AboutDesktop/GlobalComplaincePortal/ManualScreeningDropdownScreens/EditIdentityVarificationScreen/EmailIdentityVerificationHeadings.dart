import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';

class EmailIdentityVerificationHeadings extends StatelessWidget {
  const EmailIdentityVerificationHeadings({
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
        Container(
          width: MediaQuery.of(context).size.width / 8,
          child: KText(
              text: "Screening Token",
              width: width,
              fs: width * 0.011,
              colour: blackColors,
              fw: FontWeight.bold,
              ltrSpacing: 1.w),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 8.5,
          child: KText(
              text: "Name",
              width: width,
              fs: width * 0.011,
              colour: blackColors,
              fw: FontWeight.bold,
              ltrSpacing: 1.w),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 8,
          child: KText(
              text: "Email",
              width: width,
              fs: width * 0.011,
              colour: blackColors,
              fw: FontWeight.bold,
              ltrSpacing: 1.w),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 9,
          child: KText(
              text: "Completed",
              width: width,
              fs: width * 0.011,
              colour: blackColors,
              fw: FontWeight.bold,
              ltrSpacing: 1.w),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 9,
          child: KText(
              text: "Update Requested",
              width: width,
              fs: width * 0.011,
              colour: blackColors,
              fw: FontWeight.bold,
              ltrSpacing: 1.w),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 8,
          child: KText(
              text: "Linked Opened",
              width: width,
              fs: width * 0.011,
              colour: blackColors,
              fw: FontWeight.bold,
              ltrSpacing: 1.w),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 9,
          child: KText(
              text: "Created",
              width: width,
              fs: width * 0.011,
              colour: blackColors,
              fw: FontWeight.bold,
              ltrSpacing: 1.w),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 9,
          child: KText(
              text: "Company",
              width: width,
              fs: width * 0.011,
              colour: blackColors,
              fw: FontWeight.bold,
              ltrSpacing: 1.w),
        ),
      ],
    );
  }
}
