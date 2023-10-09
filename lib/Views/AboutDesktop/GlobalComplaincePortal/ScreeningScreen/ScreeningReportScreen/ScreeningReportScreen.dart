import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningReportScreen/ContainerClientProfileData.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningReportScreen/MatchScoreContainer.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningReportScreen/ReportSummaryContainer.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningScreen.dart';
import 'package:global_compliance/res/AppBarRow.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';

bool viewMore = false;

class ScreeningReportScreen extends StatefulWidget {
  const ScreeningReportScreen({super.key});

  @override
  State<ScreeningReportScreen> createState() => _ScreeningReportScreenState();
}

class _ScreeningReportScreenState extends State<ScreeningReportScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: whiteColors,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: 37.w,
              right: 45.w,
              top: 23.h,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarRow(),
                SizedBox(
                  height: 55.h,
                ),
                Row(
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
                                ScreeningsScreen(),
                            transitionDuration: Duration.zero,
                            reverseTransitionDuration: Duration.zero,
                          ),
                        );
                      },
                      child: CircleAvatar(
                        backgroundColor: whiteColors,
                        child: Icon(
                          Icons.arrow_back,
                          color: blueAxent,
                        ),
                      ),
                    ),
                    KText(
                      text: "Screenings Report",
                      width: width,
                      fw: FontWeight.w500,
                      fs: width * 0.030,
                      colour: blackColors,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReportSummaryContainer(width: width, height: height),
                    ContainerClientProfileData(height: height, width: width)
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                MatchScoreContainer(width: width, height: height),
                SizedBox(
                  height: 200,
                )
              ],
            ),
          ),
        ));
  }
}
