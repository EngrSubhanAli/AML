import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class kTabButton extends StatefulWidget {
  kTabButton(
      {required this.h,
      required this.w,
      required this.text,
      this.colour,
      this.textColor,
      required this.recievedIndex});

  double h, w;
  String text;
  Color? colour, textColor;
  int recievedIndex;

  @override
  State<kTabButton> createState() => _kTabButtonState();
}

class _kTabButtonState extends State<kTabButton> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;
    return Container(
      height: widget.h.h,
      width: widget.w.w,
      // margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.01),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r), color: widget.colour),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          widget.text,
          style: TextStyle(
              color: widget.textColor,
              fontWeight: FontWeight.w500,
              fontSize: width * 0.012),
        ),
      ),
    );
  }
}
