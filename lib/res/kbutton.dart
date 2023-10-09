import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/res/Colors/Colours.dart';

class kButton extends StatelessWidget {
  kButton(
      {required this.h,
      required this.w,
      required this.text,
      this.colour,
      this.textColor,
      this.textSiz,
      this.onPressed});
  VoidCallback? onPressed;
  double h, w;
  double? textSiz;
  String text;

  Color? colour, textColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        // padding: EdgeInsets.all(5.r),
        height: h.h,
        width: w.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: colour,
            boxShadow: [
              BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 2,
                  color: lightGrey.withOpacity(0.2))
            ]),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w500,
              fontSize: textSiz ?? 17.sp),
        )),
      ),
    );
  }
}
