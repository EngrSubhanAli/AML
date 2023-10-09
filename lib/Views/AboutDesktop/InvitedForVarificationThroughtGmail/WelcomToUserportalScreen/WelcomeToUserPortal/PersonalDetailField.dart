import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalDetailField extends StatefulWidget {
  PersonalDetailField({
    required this.firstheading,
    required this.firstHint,
    required this.SecondHeading,
    required this.secondHint,
    required this.firstController,
    required this.secondController,
  });
  String firstheading, SecondHeading, firstHint, secondHint;
  TextEditingController firstController;
  TextEditingController secondController;
  @override
  State<PersonalDetailField> createState() => _PersonalDetailFieldState();
}

class _PersonalDetailFieldState extends State<PersonalDetailField> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.firstheading,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w200),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.250,
                height: 55.h,
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: Colors.transparent,
                    border: Border.all(
                      color: Colors.black.withOpacity(0.5),
                      width: 0.2.w,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      style: BorderStyle.solid,
                    )),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: TextFormField(
                      controller: widget.firstController,
                      decoration: InputDecoration(
                          hintText: widget.firstHint,
                          border: InputBorder.none,
                          fillColor: Colors.white),
                    )),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.SecondHeading,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.sp,
                    // letterSpacing: 5.w,
                    // wordSpacing: 1.w,
                    fontWeight: FontWeight.w200),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.250,
                height: 55.h,
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: Colors.transparent,
                    border: Border.all(
                      color: Colors.black.withOpacity(0.5),
                      width: 0.2.w,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      style: BorderStyle.solid,
                    )),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: TextFormField(
                      controller: widget.secondController,
                      decoration: InputDecoration(
                          hintText: widget.secondHint,
                          border: InputBorder.none,
                          fillColor: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
