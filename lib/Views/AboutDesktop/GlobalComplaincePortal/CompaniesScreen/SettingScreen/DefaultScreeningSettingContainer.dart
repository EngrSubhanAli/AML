import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/CompaniesScreen/SettingScreen/SettingScreen.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:global_compliance/res/RadioButtonWidget.dart';

class DefaultScreeningSettingContainer extends StatefulWidget {
  const DefaultScreeningSettingContainer({
    Key? key,
    required this.width,
    required this.Switch1,
    required this.Switch2,
    required this.Switch3,
    required this.Switch4,
    required this.Switch5,
  }) : super(key: key);

  final double width;
  final bool Switch1;
  final bool Switch2;
  final bool Switch3;
  final bool Switch4;
  final bool Switch5;

  @override
  State<DefaultScreeningSettingContainer> createState() =>
      _DefaultScreeningSettingContainerState();
}

class _DefaultScreeningSettingContainerState
    extends State<DefaultScreeningSettingContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 2.4,
        width: 1215.w,
        padding: EdgeInsets.only(
            // bottom: 24.h,
            top: 20,
            left: 25.w,
            right: 27.w),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 2),
            )
          ],
          border: Border.all(
            width: 1.3.w,
            color: Colors.grey.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          children: [
            Expanded(
              // width: MediaQuery.of(context).size.width / 2,
              // color: Colors.pink,
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  KText(
                    text: "Default Screening Settings",
                    width: widget.width,
                    fs: widget.width * 0.013,
                    ltrSpacing: 1.w,
                    fw: FontWeight.w300,
                    colour: blackColors,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  KText(
                    text: "ID Verification 3 Credits",
                    width: widget.width,
                    fs: widget.width * 0.012,
                    ltrSpacing: 1.w,
                    fw: FontWeight.w500,
                    colour: blackColors,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  // InkWell(
                  //   onTap: () {
                  //     if (widget.Switch1 == true) {
                  //       setState(() {
                  //         defaultScreeningCostValue = 3;
                  //       });
                  //     }
                  //   },
                  // child:
                  RadioButtonWidget(
                    SwitchValue: widget.Switch1,
                    switchNo: 3,
                  ),
                  // ),
                  SizedBox(
                    height: 30.h,
                  ),
                  KText(
                    text: "Biometric Facial Recognition 2 Credits",
                    width: widget.width,
                    fs: widget.width * 0.012,
                    ltrSpacing: 1.w,
                    fw: FontWeight.w500,
                    colour: blackColors,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  RadioButtonWidget(
                    SwitchValue: widget.Switch2,
                    switchNo: 2,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  KText(
                    text: "Geolocation Verification 1 Credit",
                    width: widget.width,
                    fs: widget.width * 0.012,
                    ltrSpacing: 1.w,
                    fw: FontWeight.w500,
                    colour: blackColors,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  RadioButtonWidget(
                    SwitchValue: widget.Switch3,
                    switchNo: 1,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  KText(
                    text: "AML / OFAC / PEP Screening 2 Credits",
                    width: widget.width,
                    fs: widget.width * 0.012,
                    ltrSpacing: 1.w,
                    fw: FontWeight.w300,
                    colour: blackColors,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  RadioButtonWidget(
                    SwitchValue: widget.Switch4,
                    switchNo: 2,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  KText(
                    text: "Proof of Address Document Verification 2 Credits",
                    width: widget.width,
                    fs: widget.width * 0.012,
                    ltrSpacing: 1.w,
                    fw: FontWeight.w500,
                    colour: blackColors,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  RadioButtonWidget(
                    switchNo: 2,
                    SwitchValue: widget.Switch5,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
