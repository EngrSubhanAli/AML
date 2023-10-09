import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/DashboardScreens.dart/KpiReportScreen/DateSearchInputRow.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/DashboardScreens.dart/KpiReportScreen/KpiReportDataRow.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/DashboardScreens.dart/KpiReportScreen/KpiReportHeadingsRow.dart';
import 'package:global_compliance/res/AppBarRow.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:global_compliance/res/kTextField.dart';

class KpiReportScreen extends StatelessWidget {
  const KpiReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: whiteColors,
      body: Padding(
        padding: EdgeInsets.only(
          left: 37.w,
          right: 55.w,
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
            Padding(
              padding: EdgeInsets.only(bottom: 50.h),
              child: KText(
                text: "KPI Report",
                width: width,
                fw: FontWeight.bold,
                fs: width * 0.026,
                colour: blackColors,
              ),
            ),
            DateSearchInputRow(width: width),
            SizedBox(
              height: 30.h,
            ),
            KpiReportHeadingsRow(width: width),
            SizedBox(
              height: 30.h,
            ),
            KpiReportDataRow(width: width)
          ],
        ),
      ),
    );
  }
}
