import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/GlobalLists/GlobalLists.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/DataHeadingsRow.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningDataWidget.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/SearchInputsRow.dart';
import 'package:global_compliance/res/AppBarRow.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';

Color hoverTextColor = blueAxent;

class ScreeningsScreen extends StatefulWidget {
  ScreeningsScreen({super.key});

  @override
  State<ScreeningsScreen> createState() => _ScreeningsScreenState();
}

class _ScreeningsScreenState extends State<ScreeningsScreen> {
  String? selectedValue;
  String? selectedValue1 = 'Test Company';
  int index = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
            KText(
              text: "Screenings",
              width: width,
              fw: FontWeight.w500,
              fs: width * 0.030,
              colour: blackColors,
            ),
            SizedBox(
              height: 30.h,
            ),
            SearchInputsRow(width: width),
            SizedBox(
              height: 75.h,
            ),
            HeadingsRow(width: width),
            SizedBox(
              height: 25.h,
            ),
            Expanded(
              child: ListView.builder(
                // padding: EdgeInsets.all(20.r),
                itemCount: screeningDataList.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return ScreeningDataWidget(
                    name: screeningDataList[index].name!,
                    screeningToken: screeningDataList[index].screeningToken!,
                    externalId: screeningDataList[index].externalId!,
                    DocumentNumber: screeningDataList[index].DocumentNumber!,
                    Nationality: screeningDataList[index].Nationality!,
                    status: screeningDataList[index].status!,
                    created: screeningDataList[index].created!,
                    Tag: screeningDataList[index].Tag,
                    CompletedBy: screeningDataList[index].CompletedBy,
                    company: screeningDataList[index].company!,
                  );
                },
              ),
            ),
            SizedBox(
              height: 30.h,
            )
          ],
        ),
      ),
    );
  }
}
