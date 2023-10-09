import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/kbutton.dart';

class NextPreviousBtnRow extends StatelessWidget {
  const NextPreviousBtnRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kButton(
          h: 40.h,
          w: 120.w,
          text: "Previous",
          colour: whiteColors,
        ),
        SizedBox(
          width: 8.w,
        ),
        kButton(h: 40.h, w: 80.w, text: "1", colour: whiteColors),
        SizedBox(
          width: 8.w,
        ),
        kButton(
          h: 40.h,
          w: 100.w,
          text: "Next",
          colour: whiteColors,
        ),
      ],
    );
  }
}
