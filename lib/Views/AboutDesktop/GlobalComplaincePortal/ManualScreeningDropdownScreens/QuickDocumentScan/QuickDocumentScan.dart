import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ManualScreeningDropdownScreens/QuickDocumentScan/QuickDocumentScanContainersRow.dart';
import 'package:global_compliance/res/AppBarRow.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';

class QuickDocumentScan extends StatefulWidget {
  const QuickDocumentScan({super.key});

  @override
  State<QuickDocumentScan> createState() => _QuickDocumentScanState();
}

class _QuickDocumentScanState extends State<QuickDocumentScan> {
  String? selectedValue;
  String? selectedValue1 = 'Test Company';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    var index = 0;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
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
              KText(
                text: "Quick Document Scan",
                width: width,
                fs: width * 0.029,
                ltrSpacing: 1.w,
                fw: FontWeight.w500,
                colour: blackColors,
              ),
              SizedBox(
                height: 40.h,
              ),
              QuickDocumentScanContainersRow(width: width),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
