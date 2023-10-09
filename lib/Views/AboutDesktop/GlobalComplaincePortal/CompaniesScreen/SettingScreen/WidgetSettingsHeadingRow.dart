import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';

class WidgetSettingsHeadingRow extends StatelessWidget {
  WidgetSettingsHeadingRow({
    Key? key,
    required this.heading1,
    required this.heading2,
    required this.width,
  }) : super(key: key);

  final double width;
  String heading1, heading2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2.2,
          child: KText(
            text: heading1,
            width: width,
            fs: width * 0.012,
            ltrSpacing: 1.w,
            fw: FontWeight.w300,
            colour: blackColors,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 2.2,
          child: KText(
            text: heading2,
            width: width,
            fs: width * 0.012,
            ltrSpacing: 1.w,
            fw: FontWeight.w300,
            colour: blackColors,
          ),
        )
      ],
    );
  }
}
