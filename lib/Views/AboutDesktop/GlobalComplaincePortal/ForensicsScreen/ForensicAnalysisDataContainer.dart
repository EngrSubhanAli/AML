import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ForensicsScreen/ForensicAnalysisScreen/ForensicAnalysisScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ForensicsScreen/ForensicScreeningReportScreen/ForensiceReportScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningScreen.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:hovering/hovering.dart';

class ForensicAnalysisDataContainer extends StatefulWidget {
  String? id;
  String? screeningToken, tag, status, created, company;
  ForensicAnalysisDataContainer(
      {this.company,
      this.created,
      this.tag,
      this.id,
      this.screeningToken,
      this.status});

  @override
  State<ForensicAnalysisDataContainer> createState() =>
      _ForensicAnalysisDataContainerState();
}

class _ForensicAnalysisDataContainerState
    extends State<ForensicAnalysisDataContainer> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.1,
      decoration: BoxDecoration(color: whiteColors, boxShadow: [
        BoxShadow(
            spreadRadius: 2,
            blurRadius: 1,
            offset: Offset(0, 3),
            color: Colors.black38.withOpacity(0.1))
      ]),
      margin: EdgeInsets.symmetric(
        horizontal: 7.w,
      ),
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: width / 6.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  hoverColor: whiteColors,
                  highlightColor: whiteColors,
                  splashColor: whiteColors,
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) =>
                            ForensicsReportScreen(),
                        transitionDuration: Duration.zero,
                        reverseTransitionDuration: Duration.zero,
                      ),
                    );
                  },
                  child: HoverWidget(
                    hoverChild: Row(
                      children: [
                        Icon(
                          Icons.file_copy,
                          color: hoverTextColor,
                          size: 20.sp,
                        ),
                        SizedBox(
                          width: width * 0.005,
                        ),
                        Container(
                          width: width / 7.3,
                          child: Text(
                            widget.id!,
                            style: TextStyle(
                              color: hoverTextColor,
                              fontSize: 20.sp,
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
                          width: width * 0.005,
                        ),
                        Container(
                          width: width / 7.3,
                          child: Text(
                            widget.id!,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 20.sp, color: blueAxent),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 6.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  hoverColor: whiteColors,
                  highlightColor: whiteColors,
                  splashColor: whiteColors,
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) =>
                            ForensicAnalysisScreen(),
                        transitionDuration: Duration.zero,
                        reverseTransitionDuration: Duration.zero,
                      ),
                    );
                  },
                  child: HoverWidget(
                    hoverChild: Row(
                      children: [
                        Icon(
                          Icons.edit_note,
                          color: hoverTextColor,
                          size: 20.sp,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.005,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 7.3,
                          child: Text(
                            widget.screeningToken!,
                            style: TextStyle(
                              color: hoverTextColor,
                              fontSize: 20.sp,
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
                          width: MediaQuery.of(context).size.width / 7.3,
                          child: Text(
                            widget.screeningToken!,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 20.sp, color: blueAxent),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 7.5,
            // padding: EdgeInsets.only(left: 15.w),
            child: KText(
              text: widget.tag!,
              width: width,
              fw: FontWeight.w500,
              fs: width * 0.011,
              ovrFlow: TextOverflow.ellipsis,
              colour: blackColors,
            ),
          ),
          widget.status == "Processing"
              ? Container(
                  width: MediaQuery.of(context).size.width / 6.5,
                  child: KText(
                    text: widget.status!,
                    width: width,
                    fw: FontWeight.w500,
                    fs: width * 0.011,
                    ovrFlow: TextOverflow.ellipsis,
                    colour: blackColors,
                  ),
                )
              : Container(
                  width: MediaQuery.of(context).size.width / 6.5,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: Colors.transparent),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 9,
                    height: MediaQuery.of(context).size.height * 0.040,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: blueAxent),
                        borderRadius: BorderRadius.circular(10.r),
                        color: whiteColors),
                    child: Center(
                      child: KText(
                        text: widget.status!,
                        width: width,
                        fw: FontWeight.w300,
                        fs: width * 0.011,
                        ovrFlow: TextOverflow.ellipsis,
                        colour: blackColors,
                      ),
                    ),
                  ),
                ),
          Container(
            width: MediaQuery.of(context).size.width / 6.5,
            //
            child: KText(
              text: widget.created!,
              width: width,
              fw: FontWeight.w300,
              fs: width * 0.011,
              ovrFlow: TextOverflow.ellipsis,
              colour: blackColors,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 6.8,
            padding: EdgeInsets.only(left: 10.w),
            child: KText(
              text: widget.company!,
              width: width,
              fw: FontWeight.w300,
              fs: width * 0.011,
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
