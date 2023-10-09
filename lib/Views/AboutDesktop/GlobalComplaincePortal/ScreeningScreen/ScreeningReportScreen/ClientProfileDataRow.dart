import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';

class ClientProfileDataRow extends StatelessWidget {
  ClientProfileDataRow(
      {Key? key,
      required this.width,
      required this.infoType,
      required this.detail,
      required this.status,
      required this.noOfComents})
      : super(key: key);

  final double width;
  String infoType, detail, status, noOfComents;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: width * 0.1,
          child: KText(
              width: width * 0.030,
              text: infoType,
              fw: FontWeight.bold,
              colour: blackColors),
        ),
        Container(
          width: width / 7,
          child: KText(width: width * 0.030, text: detail, colour: blackColors),
        ),
        Row(
          children: [
            Icon(
              Icons.done_outline_sharp,
              size: 25.sp,
              color: grey,
            ),
            KText(width: width * 0.030, text: status, colour: blackColors),
          ],
        ),
        Container(
          width: width / 12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.comment_rounded,
                size: 25.sp,
                color: grey,
              ),
              SizedBox(
                width: 5.w,
              ),
              KText(width: width * 0.030, text: noOfComents, colour: grey),
            ],
          ),
        ),
      ],
    );
  }
}
