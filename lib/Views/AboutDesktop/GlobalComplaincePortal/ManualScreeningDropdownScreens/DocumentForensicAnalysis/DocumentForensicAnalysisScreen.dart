import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/res/AppBarRow.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:global_compliance/res/kTextField.dart';
import 'package:global_compliance/res/kbutton.dart';
import 'package:global_compliance/Views/AboutDesktop/LogoutScreen/LogoutScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningScreen.dart';
import 'package:hovering/hovering.dart';

class DocumentForensicAnalysisScreen extends StatefulWidget {
  const DocumentForensicAnalysisScreen({super.key});

  @override
  State<DocumentForensicAnalysisScreen> createState() =>
      _DocumentForensicAnalysisScreenState();
}

class _DocumentForensicAnalysisScreenState
    extends State<DocumentForensicAnalysisScreen> {
  String? selectedValue;
  String? selectedValue1 = 'Test Company';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
                text: "Document Forensic Analysis",
                width: width,
                fs: width * 0.029,
                ltrSpacing: 1.w,
                fw: FontWeight.w500,
                colour: blackColors,
              ),
              SizedBox(
                height: 40.h,
              ),
              DocumentForensicAnalysisContainersRow(context, width),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Row DocumentForensicAnalysisContainersRow(
      BuildContext context, double width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 2.7,
          width: 1095.w,
          padding: EdgeInsets.only(
              // bottom: 24.h,
              top: 40,
              left: 27.w,
              right: 27.w),
          margin: EdgeInsets.only(left: 5.w),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              KText(
                text: "Tag",
                width: width,
                fs: width * 0.011,
                ltrSpacing: 1.w,
                fw: FontWeight.w100,
                colour: blackColors,
              ),
              SizedBox(
                height: 15.h,
              ),
              KTextFieldwithShadow(
                hintText: 'tag',
                w: 400.w,
              ),
              // KTextFieldwithShadow(
              //   hintText: 'tag',
              //   h: MediaQuery.of(context).size.height * 0.040,
              //   w: MediaQuery.of(context).size.width / 3.4,
              // ),
              SizedBox(
                height: 25.h,
              ),
              HoverWidget(
                hoverChild: Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: hoverTextColor,
                      size: 20.sp,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.005,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 7.3,
                      child: Text(
                        "Add File",
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
                    Icon(Icons.add, size: 20.sp, color: Colors.blueAccent),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.005,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width / 7.3,
                        child: KText(
                          text: "Add File",
                          width: width,
                          fs: width * 0.011,
                          ltrSpacing: 1.w,
                          fw: FontWeight.w100,
                          ovrFlow: TextOverflow.ellipsis,
                          colour: blueAxent,
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              kButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LogoutScreen()),
                  );
                },
                h: 42,
                w: MediaQuery.of(context).size.width,
                textSiz: 14,
                text: "Scan",
                textColor: Colors.white,
                colour: blueAxent,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 38.w,
        ),
        Container(
          height: MediaQuery.of(context).size.height / 2.3,
          width: MediaQuery.of(context).size.width / 3.4,
          padding: EdgeInsets.only(top: 30, left: 27.w, right: 27.w),
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
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                KText(
                  text: "Document Forensic Analysis",
                  width: width,
                  fs: width * 0.011,
                  ltrSpacing: 1.w,
                  fw: FontWeight.bold,
                  ovrFlow: TextOverflow.ellipsis,
                  colour: blackColors,
                ),
                SizedBox(
                  height: 10.h,
                ),
                KText(
                  text:
                      "Evaluate documents to identify whether they have been modified. This includes a complete image and PDF file metadata analysis and verification of document authenticity. Forensic document analysis can be performed on any document, including utility bills, bank statements, passport pictures, and any other picture documents",
                  width: width,
                  fs: width * 0.011,
                  ltrSpacing: 1.w,
                  wordSpacng: 1,
                  colour: blackColors,
                ),
                SizedBox(
                  height: 10.h,
                ),
                KText(
                  text: "3 Credits",
                  width: width,
                  fs: width * 0.011,
                  ltrSpacing: 1.w,
                  fw: FontWeight.bold,
                  colour: blackColors,
                ),
              ]),
        )
      ],
    );
  }

  DropdownButtonHideUnderline DropdownWithBorder(int w, int h,
      List<dynamic> list, Color backgroundColor, Color iconAndTextColor) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        hint: Row(
          children: [
            Text(
              selectedValue1!,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: iconAndTextColor,
              ),
              // overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        items: list
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: iconAndTextColor,
                    ),
                    // overflow: TextOverflow.ellipsis,
                  ),
                ))
            .toList(),
        value: selectedValue1,
        onChanged: (value) {
          setState(() {
            selectedValue1 = value as String;
          });
        },
        icon: Icon(
          Icons.arrow_drop_down_rounded,
          color: iconAndTextColor,
          size: 25.sp,
        ),
        iconSize: 14.sp,
        iconEnabledColor: Colors.black,
        iconDisabledColor: Colors.black,
        buttonHeight: h.h,
        buttonWidth: w.w,
        buttonPadding: EdgeInsets.only(
          left: 14.w,
        ),
        buttonDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3.r),
            border: Border.all(
              width: 0.5.w,
              color: Color.fromARGB(255, 141, 138, 138),
            ),
            color: backgroundColor),
        buttonElevation: 0,
        itemHeight: 45.h,
        itemPadding: EdgeInsets.only(left: 14.w, right: 14.w),
        dropdownMaxHeight: 200.h,
        dropdownWidth: 200.w,
        dropdownPadding: EdgeInsets.zero,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.r),
          color: Colors.white,
        ),
        dropdownElevation: 8,
        scrollbarRadius: Radius.circular(10.r),
        scrollbarThickness: 6.w,
        scrollbarAlwaysShow: true,
        // offset:   Offset(-20, 0),
      ),
    );
  }
}
