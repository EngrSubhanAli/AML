import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:global_compliance/res/Colors/Colours.dart';

class DocumentContainerWidget extends StatelessWidget {
  DocumentContainerWidget(
      {Key? key,
      required this.D_name,
      required this.iconVisible,
      required this.imageBackColor,
      required this.image})
      : super(key: key);
  String image, D_name;
  Color imageBackColor;
  bool iconVisible = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.500,
      padding: EdgeInsets.only(right: 20.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(width: 0.4.w, color: Colors.grey)),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 90.w,
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(right: 20.w),
              color: imageBackColor,
              padding: EdgeInsets.all(5.r),
              child: SvgPicture.asset(image,
                  height: 20.h,
                  width: 20.w,
                  color: whiteColors,
                  fit: BoxFit.scaleDown),
            ),
            Text(
              D_name,
              style: TextStyle(
                color: Colors.black.withOpacity(0.9),
                fontSize: 17.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            iconVisible
                ? Container(
                    height: 25.h,
                    width: 25.w,
                    decoration: BoxDecoration(
                        // borderRadius:
                        // BorderRadius.circular(5.r),
                        shape: BoxShape.circle,
                        border: Border.all(width: 1.w, color: blueAxent)),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 13.sp,
                      // ..color: imageBackColor.withOpacity(0.7),
                    ),
                  )
                : SizedBox(),
          ]),
    );
  }
}
