import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:global_compliance/res/kbutton.dart';
// import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class StatusButtonsContainer extends StatefulWidget {
  const StatusButtonsContainer({super.key});

  @override
  State<StatusButtonsContainer> createState() => _StatusButtonsContainerState();
}

class _StatusButtonsContainerState extends State<StatusButtonsContainer> {
  int selectedIndex = 5;
  setColor(int index, double width, double h) {
    if (index == 0) {
      setState(() {
        selectedIndex = index;
      });
    } else if (index == 1) {
      setState(() {
        selectedIndex = index;
      });
    } else if (index == 2) {
      setState(() {
        selectedIndex = index;
        // showMaterialModalBottomSheet(
        //   isDismissible: true,
        //   context: context,
        //   builder: (context) => SingleChildScrollView(
        //     controller: ModalScrollController.of(context),
        //     child: Container(
        //       color: blackColors,
        //       height: 70.h,padding: EdgeInsets.symmetric(horizontal: width*0.07),
        //       child: Row(
        //         children: [
        //           KText(
        //               width: width,
        //               text: "Unsaved Changes : ",
        //               colour: whiteColors),
        //           Spacer(),
        //           kButton(
        //             h: h * 0.04,
        //             w: width * 0.1,
        //             text: "Discard",
        //             colour: whiteColors,
        //             textColor: blackColors,
        //           ),
        //           kButton(
        //             h: h * 0.04,
        //             w: width * 0.1,
        //             text: "Save",
        //             colour: whiteColors,
        //             textColor: blackColors,
        //           )
        //         ],
        //       ),
        //     ),
        //   ),
        // );
      });
    } else {
      setState(() {
        selectedIndex = 3;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: height / 68),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(width: 0.1),
              color: lightGrey),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  setColor(0, width, height);
                },
                child: Container(
                  height: 65.h,
                  width: width * 0.05,
                  decoration: BoxDecoration(
                      color: selectedIndex == 0 ? darkGreen : whiteColors,
                      border: Border.all(width: 0.5.w, color: grey)),
                  child: Center(
                    child: Text(
                      "Extracted",
                      style: TextStyle(
                          color: selectedIndex == 0 ? whiteColors : grey,
                          fontSize: 17.sp),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setColor(1, width, height);
                },
                child: Container(
                  height: 65.h,
                  width: width * 0.05,
                  decoration: BoxDecoration(
                      color: selectedIndex == 1 ? darkGreen : whiteColors,
                      border: Border.all(width: 0.5.w, color: grey)),
                  child: Center(
                    child: Text(
                      "Matching",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: selectedIndex == 1 ? whiteColors : grey,
                          fontSize: 17.sp),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setColor(2, width, height);
                },
                child: Container(
                  height: 65.h,
                  width: width * 0.05,
                  decoration: BoxDecoration(
                      color: selectedIndex == 2 ? darkGreen : whiteColors,
                      border: Border.all(width: 0.5.w, color: grey)),
                  child: Center(
                    child: Text(
                      "Valid",
                      style: TextStyle(
                          color: selectedIndex == 2 ? whiteColors : grey,
                          fontSize: 17.sp),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setColor(3, width, height);
                },
                child: Container(
                  height: 65.h,
                  width: width * 0.05,
                  decoration: BoxDecoration(
                      color: selectedIndex == 3 ? redColor : whiteColors,
                      border: Border.all(width: 0.5.w, color: redColor)),
                  child: Center(
                    child: Text(
                      "Not\nValid",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: selectedIndex == 3 ? whiteColors : grey,
                          fontSize: 17.sp),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
