import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';

class ReportSummaryContainer extends StatelessWidget {
  const ReportSummaryContainer({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
        color: whiteColors,
        boxShadow: [
          BoxShadow(
            color: lightGrey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(10.r),
      ),
      padding: EdgeInsets.all(30.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          KText(
              width: width * 0.030,
              text: "Report Summary",
              fw: FontWeight.bold,
              colour: blackColors),
          SizedBox(
            height: 20.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: width * 0.2,
                child: KText(
                    width: width * 0.030,
                    text: "Date",
                    fw: FontWeight.bold,
                    colour: blackColors),
              ),
              KText(
                  width: width * 0.030,
                  text: "12/14/2022, 3:58:15 PM",
                  colour: blackColors),
            ],
          ),
          Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: width * 0.2,
                child: KText(
                    width: width * 0.030,
                    text: "Screening Token",
                    fw: FontWeight.bold,
                    colour: blackColors),
              ),
              KText(
                  width: width * 0.030,
                  text: "d9e873b9-1629-4fb0-807d-28a1cadbf591",
                  colour: blueAxent),
            ],
          ),
          Divider(),
          Row(
            children: [
              Container(
                width: width * 0.2,
                child: KText(
                    width: width * 0.030,
                    text: "Status",
                    fw: FontWeight.bold,
                    colour: blackColors),
              ),
              Container(
                height: 30.h,
                width: width * 0.1,
                decoration: BoxDecoration(
                    color: darkGrey.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10.r)),
                child: Center(
                  child: KText(
                      width: width * 0.011,
                      text: "Manual Screening",
                      colour: whiteColors),
                ),
              ),
            ],
          ),
          Divider(),
          Container(
            height: height * 0.2,
            width: width,
            decoration: BoxDecoration(
                color: blueAxent.withOpacity(0.9),
                borderRadius: BorderRadius.circular(10.r)),
            padding: EdgeInsets.all(15.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                KText(
                    width: width * 0.013,
                    text: "SUBMITTED FILES",
                    fw: FontWeight.bold,
                    colour: whiteColors),
                KText(width: width * 0.011, text: "None", colour: whiteColors),
              ],
            ),
          )
        ],
      ),
    );
  }
}
