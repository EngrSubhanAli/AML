import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningReportScreen/ScreeningReportScreen.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';

class MatchScoreContainer extends StatefulWidget {
  MatchScoreContainer({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  State<MatchScoreContainer> createState() => _MatchScoreContainerState();
}

class _MatchScoreContainerState extends State<MatchScoreContainer> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: viewMore ? widget.height / 2.5 : widget.height / 4.2,
      width: widget.width,
      decoration: BoxDecoration(
          color: whiteColors,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
                spreadRadius: 3,
                blurRadius: 2,
                offset: Offset(0, 3),
                color: Colors.black38.withOpacity(0.1))
          ]),
      // margin: EdgeInsets.only(top: 40.h),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          KText(
            text: "AML / OFAC / PEP Screening",
            width: widget.width,
            fw: FontWeight.w500,
            fs: widget.width * 0.015,
            colour: blackColors,
          ),
          InkWell(
            onTap: () {
              setState(() {
                viewMore = !viewMore;
              });
            },
            child: Container(
              width: widget.width,
              height: 61.h,
              margin: EdgeInsets.only(top: 25.h),
              padding: EdgeInsets.only(right: 25.h),
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 0.1, color: blackColors.withOpacity(0.5))),
              child: Row(
                children: [
                  Container(
                    width: 60.w,
                    height: 60.h,
                    color: lightGrey.withOpacity(0.5),
                    margin: EdgeInsets.only(right: 15.w),
                    padding: EdgeInsets.only(bottom: viewMore ? 10.h : 0),
                    child: Center(
                      child: Icon(
                        viewMore ? Icons.minimize : Icons.add,
                        size: 25.sp,
                        color: blackColors,
                      ),
                    ),
                  ),
                  KText(
                    text: "Hide \"Medium"
                        "\" and "
                        "Weak Matches (Match Score < 85%)",
                    width: widget.width,
                    fw: FontWeight.bold,
                    fs: widget.width * 0.012,
                    colour: blueAxent,
                  ),
                  Spacer(),
                  KText(
                    text: "Results: 1",
                    width: widget.width,
                    fw: FontWeight.bold,
                    fs: widget.width * 0.012,
                    colour: blackColors,
                  ),
                ],
              ),
            ),
          ),
          viewMore
              ? Column(
                  children: [
                    Divider(),
                    Row(
                      children: [
                        SizedBox(
                          width: widget.width * 0.04,
                        ),
                        Container(
                          width: widget.width / 9,
                          child: KText(
                            text: "Match Score",
                            width: widget.width,
                            fw: FontWeight.bold,
                            fs: widget.width * 0.012,
                            colour: blackColors,
                          ),
                        ),
                        Container(
                          width: widget.width / 7,
                          child: KText(
                            text: "Name",
                            width: widget.width,
                            fw: FontWeight.bold,
                            fs: widget.width * 0.012,
                            colour: blackColors,
                          ),
                        ),
                        Container(
                          width: widget.width / 7,
                          child: KText(
                            text: "Reason Listed",
                            width: widget.width,
                            fw: FontWeight.bold,
                            fs: widget.width * 0.012,
                            colour: blackColors,
                          ),
                        ),
                        Container(
                          width: widget.width / 7,
                          child: KText(
                            text: "Gender",
                            width: widget.width,
                            fw: FontWeight.bold,
                            fs: widget.width * 0.012,
                            colour: blackColors,
                          ),
                        ),
                        Container(
                          width: widget.width / 7,
                          child: KText(
                            text: "Date of Birth",
                            width: widget.width,
                            fw: FontWeight.bold,
                            fs: widget.width * 0.012,
                            colour: blackColors,
                          ),
                        ),
                        Container(
                          width: widget.width / 7,
                          child: KText(
                            text: "Country",
                            width: widget.width,
                            fw: FontWeight.bold,
                            fs: widget.width * 0.012,
                            colour: blackColors,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Divider(),
                    Container(
                      color: lightGrey.withOpacity(0.1),
                      height: 57.h,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10.w),
                            child: InkWell(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                          height: height + 200.h,
                                          child: AlertDialog(
                                              scrollable: true,
                                              title: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  KText(
                                                    text: "Alexandre, Alex",
                                                    width: widget.width,
                                                    fw: FontWeight.w800,
                                                    fs: widget.width * 0.012,
                                                    colour: blackColors,
                                                  ),
                                                  InkWell(
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Icon(Icons.cancel))
                                                ],
                                              ),
                                              content: Container(
                                                  width: width * 0.9,
                                                  // height: height + 100,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        height: 20.h,
                                                      ),
                                                      KText(
                                                        text: "Comments",
                                                        width: widget.width,
                                                        fw: FontWeight.w800,
                                                        fs: widget.width *
                                                            0.012,
                                                        colour: blackColors,
                                                      ),
                                                      SizedBox(
                                                        height: 20.h,
                                                      ),
                                                      KText(
                                                        text:
                                                            "Source: International,Website",
                                                        width: widget.width,
                                                        fs: widget.width *
                                                            0.012,
                                                        colour: blackColors,
                                                      ),
                                                      SizedBox(
                                                        height: 30.h,
                                                      ),
                                                      KText(
                                                        text: "Level: National",
                                                        width: widget.width,
                                                        fs: widget.width *
                                                            0.012,
                                                        colour: blackColors,
                                                      ),
                                                      SizedBox(
                                                        height: 30.h,
                                                      ),
                                                      KText(
                                                        text: "Category: PEP",
                                                        width: widget.width,
                                                        fs: widget.width *
                                                            0.012,
                                                        colour: blackColors,
                                                      ),
                                                      SizedBox(
                                                        height: 15.h,
                                                      ),
                                                      KText(
                                                        text:
                                                            " Subcategory: Former PEP",
                                                        width: widget.width,
                                                        fs: widget.width *
                                                            0.012,
                                                        colour: blackColors,
                                                      ),
                                                      SizedBox(
                                                        height: 30.h,
                                                      ),
                                                      KText(
                                                        text:
                                                            "Last updated: 2019-09-30",
                                                        width: widget.width,
                                                        fs: widget.width *
                                                            0.012,
                                                        colour: blackColors,
                                                      ),
                                                      SizedBox(
                                                        height: 30.h,
                                                      ),
                                                      KText(
                                                        text:
                                                            "Profile Notes: Career:",
                                                        width: widget.width,
                                                        fs: widget.width *
                                                            0.012,
                                                        colour: blackColors,
                                                      ),
                                                      SizedBox(
                                                        height: 5.h,
                                                      ),
                                                      KText(
                                                        text:
                                                            "Vice-President of the General Council of French Guiana (2008 - March 2011);",
                                                        width: widget.width,
                                                        fs: widget.width *
                                                            0.012,
                                                        colour: blackColors,
                                                      ),
                                                      SizedBox(
                                                        height: 5.h,
                                                      ),
                                                      KText(
                                                        text:
                                                            "Member of the General Council of French Guiana (2001 - 2015).",
                                                        width: widget.width,
                                                        fs: widget.width *
                                                            0.012,
                                                        colour: blackColors,
                                                      ),
                                                      SizedBox(
                                                        height: 30.h,
                                                      ),
                                                      KText(
                                                        text:
                                                            "Additional Information",
                                                        width: widget.width,
                                                        fw: FontWeight.w800,
                                                        fs: widget.width *
                                                            0.012,
                                                        colour: blackColors,
                                                      ),
                                                      SizedBox(
                                                        height: 20.h,
                                                      ),
                                                      KText(
                                                        text:
                                                            "DOB - 1963-12-24",
                                                        width: widget.width,
                                                        fw: FontWeight.w800,
                                                        fs: widget.width *
                                                            0.012,
                                                        colour: blackColors,
                                                      ),
                                                      SizedBox(
                                                        height: 10.h,
                                                      ),
                                                      Divider(),
                                                      SizedBox(
                                                        height: 10.h,
                                                      ),
                                                      KText(
                                                        text:
                                                            "Other - Sources of Record Information",
                                                        width: widget.width,
                                                        fw: FontWeight.w800,
                                                        fs: widget.width *
                                                            0.012,
                                                        colour: blackColors,
                                                      ),
                                                      SizedBox(
                                                        height: 10.h,
                                                      ),
                                                      KText(
                                                        text:
                                                            "https://web.archive.org/web/20130512073237/http://www.cg973.fr/Le-President-et-les-Vice ",
                                                        width: widget.width,
                                                        fs: widget.width *
                                                            0.012,
                                                        colour: blueAxent,
                                                      ),
                                                      KText(
                                                        text:
                                                            "https://www.franceguyane.fr/regions/guyane/la-composition-du-conseil-general-28-03-2011-86153.php?pos=18 ",
                                                        width: widget.width,
                                                        fs: widget.width *
                                                            0.012,
                                                        colour: blueAxent,
                                                      ),
                                                      KText(
                                                        text:
                                                            "https://web.archive.org/web/20160910183802/http://www.actucommunes.fr/medias/province_file/98/guyane.pdf",
                                                        fs: widget.width *
                                                            0.012,
                                                        colour: blueAxent,
                                                        width: width,
                                                      ),
                                                      KText(
                                                        text:
                                                            "https://web.archive.org/web/20130512073237/http://www.cg973.fr/Le-President-et-les-Vice ",
                                                        width: widget.width,
                                                        fs: widget.width *
                                                            0.012,
                                                        colour: blueAxent,
                                                      ),
                                                      KText(
                                                        text:
                                                            "https://web.archive.org/web/20130512073237/http://www.cg973.fr/Le-President-et-les-Vice ",
                                                        width: widget.width,
                                                        fs: widget.width *
                                                            0.012,
                                                        colour: blueAxent,
                                                      ),
                                                      KText(
                                                        text:
                                                            "https://web.archive.org/web/20130512073237/http://www.cg973.fr/Le-President-et-les-Vice ",
                                                        width: widget.width,
                                                        fs: widget.width *
                                                            0.012,
                                                        colour: blueAxent,
                                                      ),
                                                      KText(
                                                        text:
                                                            "https://web.archive.org/web/20130512073237/http://www.cg973.fr/Le-President-et-les-Vice ",
                                                        width: widget.width,
                                                        fs: widget.width *
                                                            0.012,
                                                        colour: blueAxent,
                                                      ),
                                                      KText(
                                                        text:
                                                            "https://web.archive.org/web/20130512073237/http://www.cg973.fr/Le-President-et-les-Vice ",
                                                        width: widget.width,
                                                        fs: widget.width *
                                                            0.012,
                                                        colour: blueAxent,
                                                      ),
                                                      KText(
                                                        text:
                                                            "https://web.archive.org/web/20130512073237/http://www.cg973.fr/Le-President-et-les-Vice ",
                                                        width: widget.width,
                                                        fs: widget.width *
                                                            0.012,
                                                        colour: blueAxent,
                                                      ),
                                                      SizedBox(
                                                        height: 10.h,
                                                      ),
                                                      Divider(),
                                                    ],
                                                  ))));
                                    });
                              },
                              child: Icon(
                                Icons.remove_red_eye_outlined,
                                color: blueAxent,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: widget.width / 45,
                          ),
                          Container(
                            width: widget.width / 9.3,
                            child: KText(
                              text: "62 %",
                              width: widget.width,
                              fs: widget.width * 0.012,
                              colour: blackColors,
                            ),
                          ),
                          Container(
                            width: widget.width / 7.2,
                            child: KText(
                              text: "Alexandre, Alex",
                              width: widget.width,
                              fw: FontWeight.bold,
                              fs: widget.width * 0.011,
                              colour: blackColors,
                            ),
                          ),
                          Container(
                            width: widget.width / 7,
                            child: KText(
                              text: "National:PEP:Former PEP	",
                              width: widget.width,
                              fs: widget.width * 0.011,
                              colour: blackColors,
                            ),
                          ),
                          Container(
                            width: widget.width / 7,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.warning_amber_outlined,
                                  color: redColor,
                                  size: 20.sp,
                                ),
                                KText(
                                  text: "Matched [Male]",
                                  width: widget.width,
                                  fs: widget.width * 0.011,
                                  colour: blackColors,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: widget.width / 7,
                            child: KText(
                              text: "Not Matched [1963-12-24]",
                              width: widget.width,
                              fs: widget.width * 0.011,
                              colour: blackColors,
                            ),
                          ),
                          Container(
                            width: widget.width / 7,
                            child: KText(
                              text: "Not Matched [French Guiana]",
                              width: widget.width,
                              fs: widget.width * 0.011,
                              colour: blackColors,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
