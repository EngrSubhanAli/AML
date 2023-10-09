import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';

class KpiReportDataRow extends StatelessWidget {
  const KpiReportDataRow({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      padding: EdgeInsets.only(
        left: 15.w,
      ),
      decoration: BoxDecoration(color: whiteColors, boxShadow: [
        BoxShadow(
            spreadRadius: 2,
            blurRadius: 1,
            offset: Offset(0, 3),
            color: Colors.black38.withOpacity(0.1))
      ]),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 7.6,
            child: KText(
              text: "Total",
              width: width,
              fw: FontWeight.bold,
              fs: width * 0.011,
              h: 2.h,
              colour: blackColors,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 9.2,
            child: KText(
              text: "0",
              width: width,
              fw: FontWeight.bold,
              fs: width * 0.011,
              h: 2.h,
              colour: blackColors,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 8,
            child: KText(
              text: "0",
              width: width,
              fw: FontWeight.bold,
              h: 2.h,
              fs: width * 0.011,
              colour: blackColors,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 6.7,
            child: KText(
              text: "0",
              width: width,
              fw: FontWeight.bold,
              h: 2.h,
              fs: width * 0.011,
              colour: blackColors,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 6.2,
            child: KText(
              text: "0",
              width: width,
              fw: FontWeight.bold,
              fs: width * 0.011,
              h: 2.h,
              colour: blackColors,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 8.1,
            child: KText(
              text: "0",
              width: width,
              fw: FontWeight.bold,
              h: 2.h,
              fs: width * 0.011,
              colour: blackColors,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 10,
            child: KText(
              text: "0",
              width: width,
              fw: FontWeight.bold,
              h: 2.h,
              fs: width * 0.011,
              colour: blackColors,
            ),
          ),
          Container(
            child: KText(
              text: "0",
              width: width,
              fw: FontWeight.bold,
              h: 2.h,
              fs: width * 0.011,
              colour: blackColors,
            ),
          ),
        ],
      ),
    );
  }
}
