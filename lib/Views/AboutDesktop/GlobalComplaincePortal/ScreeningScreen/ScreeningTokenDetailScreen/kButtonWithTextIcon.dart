import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';

class kButtonWithTextIcon extends StatelessWidget {
  kButtonWithTextIcon(
      {Key? key,
      required this.width,
      required this.icon,
      required this.text,
      required this.fs,
      required this.btnColor,
      required this.btnH,
      this.onPressed,
      required this.btnW})
      : super(key: key);

  final double width;
  double fs, btnW, btnH;
  IconData icon;
  Color btnColor;
  VoidCallback? onPressed;
  String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: btnW,
        height: btnH,
        decoration: BoxDecoration(
            color: btnColor, borderRadius: BorderRadius.circular(5.r)),
        padding: EdgeInsets.all(7.r),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              // Icons.dashboard_customize_outlined,
              color: whiteColors, size: 20.sp,
            ),
            SizedBox(
              width: 15.w,
            ),
            KText(
              text: text,
              width: width,
              fs: fs,
              fw: FontWeight.w200,
              colour: whiteColors,
            ),
          ],
        ),
      ),
    );
  }
}
