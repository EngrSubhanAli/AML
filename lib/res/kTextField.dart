import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/res/Colors/Colours.dart';

class KTextFieldwithShadow extends StatelessWidget {
  KTextFieldwithShadow(
      {Key? key,
      this.h,
      this.w,
      this.hintText,
      this.textEditingController,
      this.icon,
      this.iconTrue,
      this.borderRadius})
      : super(key: key);
  double? w, h;
  String? hintText;
  IconData? icon;
  bool? iconTrue = false;
  TextEditingController? textEditingController;
  double? borderRadius;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: w ?? 610.w,
      height: h ?? height * 0.055,
      padding: iconTrue == true
          ? EdgeInsets.only(left: 10.w, top: 5.h)
          : EdgeInsets.zero,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
        color: Colors.transparent,

        // border: Border.all(
        //   color: blueAxent,
        //   width: 1.w,
        //   strokeAlign: BorderSide.strokeAlignOutside,
        // )
      ),
      child: TextField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          focusColor: Colors.transparent,

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
            borderSide: iconTrue == true
                ? BorderSide.none
                : BorderSide(
                    color: blueAxent.withOpacity(0.7),
                    strokeAlign: BorderSide.strokeAlignOutside,
                    width: 5.w),
          ),
          icon: iconTrue == true
              ? Icon(
                  icon!,
                  color: blueAxent,
                )
              : null,

          // InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 20.sp,
            color: blueAxent,
          ),

          // focusColor: Colors.blue,
          // fillColor: Colors.pink,

          contentPadding: EdgeInsets.only(left: 10.w, top: 5.h),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide:
                  BorderSide(width: 1.w, color: blueAxent.withOpacity(0.7))),
        ),
        controller: textEditingController,
      ),
    );
  }
}
