import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';

class EditIdentityVarification extends StatefulWidget {
  String Completed;
  String? name;
  String? screeningToken, Email, UpdateRequested, LinkOpened, created, company;
  EditIdentityVarification(
      {required this.Completed,
      this.UpdateRequested,
      this.company,
      this.created,
      this.Email,
      this.name,
      this.screeningToken,
      this.LinkOpened});

  @override
  State<EditIdentityVarification> createState() =>
      _EditIdentityVarificationState();
}

class _EditIdentityVarificationState extends State<EditIdentityVarification> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.08,
      decoration: BoxDecoration(color: whiteColors, boxShadow: [
        BoxShadow(
            spreadRadius: 2,
            blurRadius: 1,
            offset: Offset(0, 3),
            color: Colors.black38.withOpacity(0.1))
      ]),
      margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 12.h),
      padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.12,
            child: Text(
              widget.screeningToken!,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 20.sp, color: Colors.black),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.008,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 9.3,
            child: KText(
              text: widget.name!,
              width: width,
              fw: FontWeight.w500,
              fs: width * 0.011,
              ltrSpacing: 1.w,
              ovrFlow: TextOverflow.ellipsis,
              colour: blackColors,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.008,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 8.8,
            child: KText(
              text: widget.Email!,
              width: width,
              fw: FontWeight.w500,
              fs: width * 0.011,
              ltrSpacing: 1.w,
              ovrFlow: TextOverflow.ellipsis,
              colour: blackColors,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.018,
          ),
          Image.asset(
            'assets/images/tick.png',
            scale: 6,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.11,
          ),
          Image.asset(
            'assets/images/tick.png',
            scale: 6,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 13.9,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 9,
            margin: EdgeInsets.only(right: 20.w),
            child: KText(
              text: widget.LinkOpened!,
              width: width,
              fw: FontWeight.w500,
              fs: width * 0.011,
              ltrSpacing: 1.w,
              ovrFlow: TextOverflow.ellipsis,
              colour: blackColors,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 12,
            margin: EdgeInsets.only(right: 20.w),
            child: KText(
              text: widget.created!,
              width: width,
              fs: width * 0.011,
              ltrSpacing: 1.w,
              ovrFlow: TextOverflow.ellipsis,
              colour: blackColors,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.09,
            padding: EdgeInsets.only(left: 20.w),
            child: KText(
              text: widget.company!,
              width: width,
              fs: width * 0.011,
              ltrSpacing: 1.w,
              ovrFlow: TextOverflow.ellipsis,
              colour: blackColors,
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
        ],
      ),
    );
  }
}
