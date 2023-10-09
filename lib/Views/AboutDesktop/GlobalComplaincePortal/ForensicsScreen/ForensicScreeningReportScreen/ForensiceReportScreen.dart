import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ForensicsScreen/ForensicsScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningReportScreen/ContainerClientProfileData.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningReportScreen/MatchScoreContainer.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningReportScreen/ReportSummaryContainer.dart';
import 'package:global_compliance/res/AppBarRow.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';

class ForensicsReportScreen extends StatefulWidget {
  const ForensicsReportScreen({super.key});

  @override
  State<ForensicsReportScreen> createState() => _ForensicsReportScreenState();
}

class _ForensicsReportScreenState extends State<ForensicsReportScreen> {
  bool fileContainerExpanded = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
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
                            ForensicsScreen(),
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
                  text: "Forensic Analysis Report",
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
                SummaryReportContainer(width: width),
                ForensicAnalysisDataTable(height: height, width: width),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              height: fileContainerExpanded ? height / 1.1 : height / 8.2,
              width: width,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: lightGrey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ], borderRadius: BorderRadius.circular(10.r), color: whiteColors),
              padding: EdgeInsets.all(30.r),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      fileContainerExpanded = !fileContainerExpanded;
                    });
                    print(fileContainerExpanded);
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        fileContainerExpanded
                            ? Icons.keyboard_arrow_right_outlined
                            : Icons.keyboard_arrow_down_rounded,
                        size: 40.sp,
                      ),
                      KText(
                        text: "File 1 ",
                        width: width,
                        fw: FontWeight.w500,
                        fs: width * 0.013,
                        colour: blackColors,
                      ),
                      KText(
                        text: " Processing",
                        width: width,
                        fw: FontWeight.w500,
                        fs: width * 0.012,
                        colour: blackColors,
                      ),
                    ],
                  ),
                ),
                fileContainerExpanded
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              height: height / 1.4,
                              width: width / 4.1,
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                    blurRadius: 3.0,
                                    spreadRadius: 2,
                                    color: blackColors.withOpacity(0.2))
                              ], borderRadius: BorderRadius.circular(15.r)),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15.r),
                                    child: Image(
                                      image: AssetImage(
                                        "assets/images/document.png",
                                      ),
                                      height: height / 1.1,
                                      width: width / 3,
                                    ),
                                  ),
                                  Positioned(
                                    top: height * 0.02,
                                    right: width * 0.01,
                                    child: Tooltip(
                                      textStyle: TextStyle(
                                          fontSize: 15.sp, color: Colors.white),
                                      message: "Download File",
                                      child: Container(
                                        height: height * 0.05,
                                        width: width * 0.03,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: blackColors,
                                          borderRadius:
                                              BorderRadius.circular(15.r),
                                        ),
                                        child: Icon(
                                          Icons.download,
                                          color: whiteColors,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )),
                        ],
                      )
                    : SizedBox()
              ]),
            ),
            SizedBox(
              height: 200,
            )
          ],
        ),
      ),
    ));
  }
}

class ForensicAnalysisDataTable extends StatelessWidget {
  const ForensicAnalysisDataTable({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height / 3.3,
      width: width / 2.3,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: lightGrey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 2,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ], borderRadius: BorderRadius.circular(10.r), color: whiteColors),
      padding: EdgeInsets.all(10.r),
      child: DataTable(
        // datatable widget
        columns: [
          // column to set the name
          DataColumn(
            label: KText(
              text: "Forensic Analysis Id",
              width: width,
              fw: FontWeight.bold,
              fs: width * 0.012,
              colour: blackColors,
            ),
          ),
          DataColumn(
              label: KText(
            text: "'fbedeffe-e69c-497c-ac1e-a6f28ff83849'",
            width: width,
            // fw: FontWeight.w500,
            fs: width * 0.012,
            colour: blackColors,
          )),
        ],

        rows: [
          // row to set the values
          DataRow(cells: [
            DataCell(
              KText(
                text: "Screening Token",
                width: width,
                fw: FontWeight.bold,
                fs: width * 0.012,
                colour: blackColors,
              ),
            ),
            DataCell(
              KText(
                text: "d99abf9c-4771-4996-a28b-cd2cb95194d7",
                width: width,
                fs: width * 0.012,
                colour: blackColors,
              ),
            )
          ]),
          DataRow(cells: [
            DataCell(
              KText(
                text: "Tag",
                width: width,
                fw: FontWeight.bold,
                fs: width * 0.012,
                colour: blackColors,
              ),
            ),
            DataCell(
              KText(
                text: "SBLC",
                width: width,
                fs: width * 0.012,
                colour: blackColors,
              ),
            )
          ]),
        ],
      ),
    );
  }
}

class SummaryReportContainer extends StatelessWidget {
  const SummaryReportContainer({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.width * 0.5,
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
        padding: EdgeInsets.all(30.r),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              KText(
                  width: width * 0.030,
                  text: "Report Summary",
                  fw: FontWeight.bold,
                  colour: blackColors),
              SizedBox(
                height: 10.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: width * 0.2,
                    child: KText(
                        width: width * 0.030,
                        text: "File 1",
                        fw: FontWeight.w800,
                        colour: blackColors),
                  ),
                  KText(
                      width: width * 0.030,
                      text: "Processing",
                      colour: blackColors),
                ],
              ),
              Divider(),
            ]));
  }
}
