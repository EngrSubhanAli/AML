import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/Providers/CalenderProvider.dart';
import 'package:global_compliance/res/CalenderTextContainer.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';

class DateSearchInputRow extends StatelessWidget {
  const DateSearchInputRow({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              KText(
                text: "From :",
                width: width,
                fs: width * 0.011,
                colour: blackColors,
              ),
              SizedBox(
                height: 10.h,
              ),
              CalenderTextContainer(
                width: width,
                defaultCalenderText: formatter.format(now),
                ScreenNameDate: "KpiFromSelectedDate",
                w: MediaQuery.of(context).size.width / 1.7,
                h: 40,
              ),
              // KTextFieldwithShadow(
              //   hintText: '12/15/2022',
              //   w: MediaQuery.of(context).size.width / 2.2,
              //   h: 40.h,
              // ),
            ],
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              KText(
                text: "To :",
                width: width,
                fs: width * 0.011,
                colour: blackColors,
              ),
              SizedBox(
                height: 10.h,
              ),
              CalenderTextContainer(
                width: width,
                defaultCalenderText: formatter.format(now),
                ScreenNameDate: "KpiToSelectedDate",
                w: MediaQuery.of(context).size.width / 1.7,
                h: 40,
              ),
              // KTextFieldwithShadow(
              //   hintText: '12/15/2022',
              //   w: MediaQuery.of(context).size.width / 2.2,
              //   h: 40.h,
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
