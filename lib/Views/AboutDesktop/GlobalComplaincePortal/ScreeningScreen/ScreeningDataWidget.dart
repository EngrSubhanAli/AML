import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningReportScreen/ScreeningReportScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningTokenDetailScreen/ScreeningTokenDetailScreen.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:hovering/hovering.dart';

class ScreeningDataWidget extends StatefulWidget {
  String DocumentNumber;
  String? name;
  String? screeningToken,
      externalId,
      Nationality,
      Tag,
      status,
      created,
      company,
      CompletedBy;
  ScreeningDataWidget(
      {required this.DocumentNumber,
      this.Nationality,
      this.company,
      this.created,
      this.externalId,
      this.CompletedBy,
      this.name,
      this.screeningToken,
      this.Tag,
      this.status});

  @override
  State<ScreeningDataWidget> createState() => _ScreeningDataWidgetState();
}

class _ScreeningDataWidgetState extends State<ScreeningDataWidget> {
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
          InkWell(
            hoverColor: whiteColors,
            highlightColor: whiteColors,
            splashColor: whiteColors,
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) =>
                      ScreeningReportScreen(),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                ),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width / 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  HoverWidget(
                    hoverChild: Row(
                      children: [
                        Icon(
                          Icons.file_copy,
                          color: hoverTextColor,
                          size: width * 0.012,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.005,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 10,
                          child: Text(
                            widget.name!,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: hoverTextColor,
                              fontSize: width * 0.012,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onHover: (event) {
                      // _key.currentState
                      setState(() {
                        hoverTextColor = Color.fromARGB(255, 81, 136, 180);
                      });
                    },
                    child: Row(
                      children: [
                        Icon(Icons.file_copy, size: 20.sp, color: blueAxent),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.005,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 10,
                          child: Text(
                            widget.name!,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 20.sp, color: blueAxent),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            hoverColor: whiteColors,
            highlightColor: whiteColors,
            splashColor: whiteColors,
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) =>
                      ScreeningTokenDetailScreen(),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                ),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width / 12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  HoverWidget(
                    hoverChild: Row(
                      children: [
                        Icon(
                          Icons.edit_note,
                          color: hoverTextColor,
                          size: width * 0.017,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.005,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 18,
                          child: Text(
                            widget.screeningToken!,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: hoverTextColor,
                              fontSize: width * 0.012,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onHover: (event) {
                      // _key.currentState
                      setState(() {
                        hoverTextColor = Color.fromARGB(255, 81, 136, 180);
                      });
                    },
                    child: Row(
                      children: [
                        Icon(Icons.edit_note,
                            size: width * 0.017, color: blueAxent),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.005,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 18,
                          child: Text(
                            widget.screeningToken!,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 20.sp, color: blueAxent),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 11,
            child: Text(
              widget.externalId!,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20.sp,
                color: blackColors,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 10.5,
            child: Text(
              widget.DocumentNumber,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20.sp,
                color: blackColors,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 11,
            child: Text(
              widget.Nationality!,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20.sp,
                color: blackColors,
              ),
            ),
          ),
          // selectedDataString
          Container(
            width: MediaQuery.of(context).size.width / 13.5,
            // color: Colors.red,
            child: Text(
              widget.Tag!,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20.sp,
                color: blackColors,
              ),
            ),
          ),
          widget.status == "Processing"
              ? Container(
                  width: MediaQuery.of(context).size.width / 11,
                  child: Text(
                    widget.status!,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: width * 0.010,
                      color: blackColors,
                    ),
                  ),
                )
              : Container(
                  width: MediaQuery.of(context).size.width / 11,
                  padding: EdgeInsets.only(top: 5.h, bottom: 5.h, right: 10.w),
                  child: Container(
                    // width: MediaQuery.of(context).size.width / 14,
                    height: MediaQuery.of(context).size.height * 0.040,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: blueAxent),
                        borderRadius: BorderRadius.circular(10.r),
                        color: whiteColors),
                    child: Center(
                      child: Text(
                        widget.status!,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: blackColors,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ),
          Container(
            width: MediaQuery.of(context).size.width / 12,
            child: Text(
              widget.created!,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20.sp,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 12,
            // color: Colors.red,
            margin: EdgeInsets.only(left: 10.w, right: 15.w),
            child: Text(
              widget.CompletedBy!,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20.sp,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 13,
            child: Text(
              widget.company!,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20.sp,
                color: Colors.black,
              ),
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
