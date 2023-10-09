import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';

class KpiReportHeadingsRow extends StatelessWidget {
  const KpiReportHeadingsRow({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15.w),
          child: KText(
            text: "Admin",
            width: width,
            fw: FontWeight.bold,
            fs: width * 0.011,
            h: 2.h,
            colour: blackColors,
          ),
        ),
        SizedBox(
          width: 1.w,
        ),
        KText(
          text: "Manual\nCompletions",
          width: width,
          fw: FontWeight.bold,
          fs: width * 0.011,
          h: 2.h,
          colour: blackColors,
        ),
        KText(
          text: "Auto Completed\nReviews",
          width: width,
          fw: FontWeight.bold,
          h: 2.h,
          fs: width * 0.011,
          colour: blackColors,
        ),
        KText(
          text: "Manually Completed\nScreenings Sent Again",
          width: width,
          fw: FontWeight.bold,
          h: 2.h,
          fs: width * 0.011,
          colour: blackColors,
        ),
        KText(
          text: "Auto Completed\nScreenings Sent Again",
          width: width,
          fw: FontWeight.bold,
          fs: width * 0.011,
          h: 2.h,
          colour: blackColors,
        ),
        KText(
          text: "Initial Checks",
          width: width,
          fw: FontWeight.bold,
          h: 2.h,
          fs: width * 0.011,
          colour: blackColors,
        ),
        KText(
          text: "Forensics",
          width: width,
          fw: FontWeight.bold,
          h: 2.h,
          fs: width * 0.011,
          colour: blackColors,
        ),
        KText(
          text: "Total",
          width: width,
          fw: FontWeight.bold,
          h: 2.h,
          fs: width * 0.011,
          colour: blackColors,
        ),
        SizedBox(
          width: 2.w,
        ),
      ],
    );
  }
}
